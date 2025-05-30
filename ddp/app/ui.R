library(shiny)

shinyUI(fluidPage(

  titlePanel("Flower Petal Width Predictor 🌸"),

  fluidRow(
    column(12,
           tags$img(src = "iris.jpg", width = "100%", style = "max-height: 300px; object-fit: cover;"),
           br()
    )
  ),

  sidebarLayout(
    sidebarPanel(
      numericInput("sepalLength", "Sepal Length (cm):", value = 5.0, min = 4, max = 8, step = 0.1),
      numericInput("sepalWidth", "Sepal Width (cm):", value = 3.0, min = 2, max = 5, step = 0.1),
      numericInput("petalLength", "Petal Length (cm):", value = 3.5, min = 1, max = 7, step = 0.1),
      selectInput("species", "Species:", choices = unique(iris$Species)),

      checkboxGroupInput("predictors", "Choose Predictors:", 
                         choices = c("Sepal.Length", "Sepal.Width", "Petal.Length", "Species"),
                         selected = c("Sepal.Length", "Sepal.Width", "Petal.Length", "Species")),

      actionButton("predict", "Predict", class = "btn-primary btn-lg"),

      tags$h5("Developed by Khemant", style = "margin-top: 20px; color: grey;")
    ),

    mainPanel(
      h4("Prediction Result"),
      verbatimTextOutput("prediction"),

      h4("Model Summary (R²)"),
      verbatimTextOutput("rsq"),

      h4("Regression Plot"),
      plotOutput("plot"),

      h4("Residuals vs Fitted"),
      plotOutput("residualPlot")
    )
  )
))
