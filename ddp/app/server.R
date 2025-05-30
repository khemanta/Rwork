library(shiny)
library(ggplot2)

data(iris)

shinyServer(function(input, output) {

  getModel <- reactive({
    req(input$predictors)
    formula <- as.formula(paste("Petal.Width ~", paste(input$predictors, collapse = " + ")))
    lm(formula, data = iris)
  })

  userInput <- reactive({
    data.frame(
      Sepal.Length = input$sepalLength,
      Sepal.Width = input$sepalWidth,
      Petal.Length = input$petalLength,
      Species = input$species
    )
  })

  observeEvent(input$predict, {
    model <- getModel()
    pred <- predict(model, newdata = userInput())
    output$prediction <- renderText({
      paste("Predicted Petal Width:", round(pred, 2), "cm")
    })

    output$rsq <- renderText({
      rsq <- summary(model)$r.squared
      paste("R² (coefficient of determination):", round(rsq, 4))
    })

    output$plot <- renderPlot({
      ggplot(iris, aes_string(x = input$predictors[1], y = "Petal.Width", color = "Species")) +
        geom_point() +
        geom_smooth(method = "lm", se = TRUE) +
        theme_minimal()
    })

    output$residualPlot <- renderPlot({
      fitted_vals <- fitted(model)
      residuals <- resid(model)
      ggplot(data.frame(Fitted = fitted_vals, Residuals = residuals), aes(x = Fitted, y = Residuals)) +
        geom_point() +
        geom_hline(yintercept = 0, linetype = "dashed", color = "red") +
        theme_minimal() +
        labs(title = "Residuals vs Fitted")
    })
  })

})
