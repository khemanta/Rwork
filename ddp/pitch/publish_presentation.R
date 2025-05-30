# Load required packages
if (!requireNamespace("rmarkdown", quietly = TRUE)) {
  install.packages("rmarkdown")
}
if (!requireNamespace("rsconnect", quietly = TRUE)) {
  install.packages("rsconnect")
}

# Set correct working directory if needed
setwd("~/MacBookProFiles/MOOC/Coursera/JHU/Rwork")  # adjust if needed

# Render the Rmd to HTML presentation
rmarkdown::render(
  input = "ddp/pitch/flower_predictor_presentation.Rmd",
  output_format = "ioslides_presentation",
  output_file = "flower_predictor_presentation.html",
  output_dir = "ddp/pitch"
)

# Optionally publish to RPubs (requires login token setup)
# rsconnect::publishDoc("ddp/pitch/flower_predictor_presentation.html")

cat("✅ Presentation rendered successfully!\n")
