library(shiny)

shinyUI(fluidPage(
  titlePanel("Predict Iris Petal Width from Sepal Width"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sepalWidth", "Sepal Width (cm):",
                  min = min(iris$Sepal.Width),
                  max = max(iris$Sepal.Width),
                  value = mean(iris$Sepal.Width))
    ),
    mainPanel(
      plotOutput("plot"),
      verbatimTextOutput("prediction")
    )
  )
))
