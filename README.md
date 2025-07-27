# Clean Air Zone Data Analysis - Portsmouth

## Overview

This project analyzes air quality data from Portsmouth's Clean Air Zone (CAZ) from 2018 to 2023. The analysis focuses on key air pollutants including PM10 particulate matter, nitric oxide (NO), nitrogen dioxide (NO2), and nitrogen oxides measured at Portsmouth Anglesea Road monitoring station.

## Project Structure

```
├── README.md                    # This file
├── poar_py_analysis.ipynb      # Main Python analysis notebook
├── my_viz.Rmd                  # R Markdown dashboard
├── my_viz.html                 # Generated HTML dashboard
├── coursework.Rproj            # R project file
├── main.R                      # Main R analysis script
├── pm10.R                      # PM10 specific analysis
├── nitric_oxide.R              # Nitric oxide analysis
├── no_no2.R                    # NO2 analysis
├── monthly_averages2020.R      # 2020 monthly averages
├── my_comparison.R             # Comparative analysis
├── POAR_2018.csv              # 2018 air quality data
├── POAR_2019.csv              # 2019 air quality data
├── POAR_2020.csv              # 2020 air quality data
├── POAR_2021.csv              # 2021 air quality data
├── POAR_2022.csv              # 2022 air quality data
├── POAR_2023.csv              # 2023 air quality data
└── BTC Report and Review.pdf   # Project report
```

## Data Description

The project uses hourly air quality measurements from the Portsmouth Anglesea Road monitoring station. The data includes:

- **PM10**: Particulate matter with diameter ≤ 10 micrometers (μg/m³)
- **Nitric Oxide (NO)**: Measured in μg/m³
- **Nitrogen Dioxide (NO2)**: Measured in μg/m³
- **Nitrogen Oxides as NO2**: Total NOx measured as NO2 equivalent (μg/m³)

Data is provided by UK-AIR with status indicators:
- R = Ratified
- P = Provisional
- P* = As supplied

## Key Analysis Features

### Python Analysis (`poar_py_analysis.ipynb`)

1. **Data Loading and Preprocessing**
   - Loads CSV files from 2018-2023
   - Handles time format inconsistencies (24:00 → 00:00)
   - Converts dates and times to proper datetime formats

2. **Visualizations**
   - Interactive scatter plots showing pollutant levels over time
   - Color-coded by date for trend identification
   - Monthly averages for 2020
   - Yearly comparisons using bar charts

3. **Specific Dates Analysis**
   - Focuses on key dates: December 20, 2018; January 3, 2019; March 19 & 26, 2020; June 29, 2020; November 10, 2020; December 20, 2020; January 3, 2021; November 29, 2021; July 25, 2022; July 24, 2023

### R Analysis

The R components provide additional statistical analysis and create an interactive dashboard using flexdashboard.

## Requirements

### Python Dependencies
```python
pandas
numpy
matplotlib
seaborn
plotly
scikit-learn
nbformat>=4.2.0
```

### R Dependencies
```r
flexdashboard
tidyverse
plotly
dygraphs
```

## Getting Started

### Running the Python Analysis

1. **Install required packages:**
   ```bash
   pip install pandas numpy matplotlib seaborn plotly scikit-learn nbformat
   ```

2. **Open the Jupyter notebook:**
   ```bash
   jupyter notebook poar_py_analysis.ipynb
   ```

3. **Run all cells** to generate the analysis and visualizations

### Running the R Analysis

1. **Open R/RStudio**

2. **Install required packages:**
   ```r
   install.packages(c("flexdashboard", "tidyverse", "plotly", "dygraphs"))
   ```

3. **Render the dashboard:**
   ```r
   rmarkdown::render("my_viz.Rmd")
   ```

## Key Findings

The analysis reveals:

- **Temporal patterns** in air pollutant concentrations
- **Seasonal variations** in PM10, NO, and NO2 levels
- **Impact of specific events** on air quality (based on selected key dates)
- **Year-over-year comparisons** showing trends from 2020-2023

## Data Sources

- **Provider**: UK-AIR (UK Air Information Resource)
- **Station**: Portsmouth Anglesea Road
- **Time Period**: 2018-2023
- **Measurement Frequency**: Hourly
- **Data Status**: Mix of ratified (R) and provisional (P) measurements

## Project Context

This analysis is part of coursework examining Portsmouth's Clean Air Zone implementation and its impact on local air quality. The Clean Air Zone was introduced to reduce air pollution in the city center by charging the most polluting vehicles.

## Contributing

This is an academic project. For questions or suggestions, please refer to the project documentation or contact the course instructors.

## License

This project is for educational purposes as part of university coursework.

---

**Note**: All timestamps are in GMT (Greenwich Mean Time) as provided by the UK-AIR monitoring network.
