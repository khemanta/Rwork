
# 🌸 Iris Flower Petal Width Predictor

This R Shiny app predicts the **Petal Width** of iris flowers based on user input for **Sepal Length**, **Sepal Width**, **Petal Length**, and **Species**.

## 🔍 Features

- Built with R Shiny for interactive predictions
- Uses Linear Regression with real-time output
- Dynamic UI and graphs (R², residuals, predictions)
- Dataset: classic **Iris** dataset (3 species, 150 samples)
- Deployed at: [shinyapps.io](https://khemanta.shinyapps.io/flower-predictor/)

## 📷 Screenshots

### Home Slide
![Slide1](screenshots/slide1.png)

### Dataset Slide
![Slide2](screenshots/slide2.png)

### Model Diagnostic
![Slide3](screenshots/slide3.png)

## 📦 Files

- `pitch.Rmd` – Source R Markdown for ioslides presentation
- `www/` – Folder with required images (`iris1.jpg`, `iris2.jpg`, `iris3.jpg`)
- `server.R` & `ui.R` – App logic and interface
- `custom.css` – Optional styling

## 📬 Contact

Built by **Hemant K.** – khemanta@outlook.com



## Johns Hopkins University -- Data Science Specialization in R

The working directory for the shiny app looks like below tree: 

```bash
├── app
│   ├── rsconnect
│   │   └── shinyapps.io
│   │       └── khemanta
│   │           └── flower-predictor.dcf
│   ├── server.R
│   ├── ui.R
│   └── www
│       ├── iris.jpg
│       ├── iris1.jpg
│       ├── iris2.jpg
│       └── iris3.jpg
├── ddp.Rproj
├── docs
│   ├── leaflet_map.html
│   └── pitch.html
├── leaflet_map.Rmd
├── MyFavPlacesLeafletMap.html
├── MyFavPlacesLeafletMap.Rmd
├── pitch
│   ├── custom.css
│   ├── iris.jpg
│   ├── iris1.jpg
│   ├── iris2.jpg
│   ├── iris3.jpg
│   ├── pitch.html
│   ├── pitch.Rmd
│   ├── ppt.Rmd
│   ├── publish_presentation.R
│   └── rsconnect
│       └── documents
│           └── pitch.Rmd
│               └── rpubs.com
│                   └── rpubs
│                       ├── Document.dcf
│                       └── Publish Document.dcf
├── README.md
├── rsconnect
│   └── documents
│       └── MyFavPlacesLeafletMap.Rmd
│           └── rpubs.com
│               └── rpubs
│                   └── Document.dcf
└── screenshots
    ├── slide1.png
    ├── slide2.png
    └── slide3.png

19 directories, 29 files
(base) 
``