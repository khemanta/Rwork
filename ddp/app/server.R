library(shiny)
library(ggplot2)

model <- lm(Petal.Width ~ Sepal.Width, data = iris)

shinyServer(function(input, output) {
  
  output$prediction <- renderPrint({
    predict(model, newdata = data.frame(Sepal.Width = input$sepalWidth))
  })
  
  output$plot <- renderPlot({
    ggplot(iris, aes(Sepal.Width, Petal.Width)) +
      geom_point(color = "steelblue") +
      geom_smooth(method = "lm", se = FALSE, color = "darkred") +
      geom_vline(xintercept = input$sepalWidth, color = "green", linetype = "dashed") +
      theme_minimal()
  })
})
