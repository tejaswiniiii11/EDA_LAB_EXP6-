# ADVANCED MULTIVARIATE DISPLAYS FOR RETAIL ANALYTICS USING R

**Name:** Tejaswini M  
**Register Number:** 23BAD121  
**Course:** Exploratory Data Analysis & Visualization  

----------------------------------------------

## 📌 Project Overview

This project implements advanced multivariate visualization techniques to analyze complex retail business data.

A retail analytics firm studies sales, profit, customer segment, and region to optimize business strategy. Since multiple variables influence performance simultaneously, multivariate displays help reveal patterns that are not visible in simple charts.

This lab demonstrates parallel coordinate plots, bubble charts, and trellis displays to support comparative analysis across regions and customer segments.

-------------------------------------------------

## 🗂️ Dataset Information

**File Name:** `retail_business.csv`  
**Type:** CSV file containing retail sales and performance records  

-------------------------------------------------

## 📄 Key Attributes

- **Region** – Geographical region of the sales record  
- **Product_Category** – Category of product sold  
- **Customer_Segment** – Type of customer segment  
- **Sales** – Sales value  
- **Profit** – Profit earned  
- **Discount** – Discount applied  

These variables help analyze business performance across different segments and locations.

-------------------------------------------------

## 🛠️ Tools & Libraries Used

### Software
- R  
- RStudio  

### Libraries
- `readr` – Reading CSV data  
- `dplyr` – Data preprocessing and cleaning  
- `ggplot2` – Visualization  
- `GGally` – Parallel coordinate plots (`ggparcoord`)  
- `lattice` – Trellis plots (`xyplot`)  
- `scales` – Scaling and formatting utilities  

------------------------------------------------

## ⚙️ Implementation Steps

### 1️⃣ Data Loading & Preprocessing

- Imported dataset using `read_csv()`  
- Converted categorical columns (`Region`, `Product_Category`, `Customer_Segment`) into factors  
- Converted numerical columns (`Sales`, `Profit`, `Discount`) into numeric  
- Removed missing values to ensure clean plotting  

------------------------------------------------

### 2️⃣ Parallel Coordinate Plot

- Created parallel coordinate plot using `ggparcoord()`  
- Variables used: **Sales, Profit, Discount**  
- Grouped lines by **Customer_Segment**  
- Scaled variables using `uniminmax` for fair comparison  

📊 **Output:** Parallel Coordinate Plot (Sales, Profit, Discount)  

------------------------------------------------

### 3️⃣ Bubble Chart

- Created bubble chart using `ggplot2`  
- **X-axis:** Sales  
- **Y-axis:** Profit  
- **Bubble Size:** Discount  
- **Color:** Customer_Segment  

This helps compare profitability against sales while simultaneously viewing discount impact.

📊 **Output:** Bubble Chart (Sales vs Profit, size = Discount)  

------------------------------------------------

### 4️⃣ Trellis Displays by Region

To compare patterns across different regions, trellis (small multiple) plots were generated.

#### ✅ Trellis using `lattice`
- Used `xyplot(Profit ~ Sales | Region)`  
- Shows region-wise scatter plots in separate panels  

#### ✅ Trellis using `ggplot2` Faceting
- Used `facet_wrap(~ Region)`  
- Displays the same comparison in a modern ggplot format  

📊 **Output:** Trellis Displays by Region (Profit vs Sales)  

------------------------------------------------

## 📈 Visualizations Generated

- Parallel coordinate plot (Sales, Profit, Discount) grouped by Customer Segment  
- Bubble chart (Sales vs Profit with Discount as size and Segment as color)  
- Region-wise trellis displays (lattice and ggplot faceting)  

All visualizations were created using `ggplot2`, `GGally`, and `lattice`.

------------------------------------------------

## 🎯 Key Insights

- Parallel coordinates help compare multiple performance indicators simultaneously across customer segments.  
- Bubble charts reveal how discounts influence profit for different sales levels and customer segments.  
- Trellis displays enable clear region-wise comparison of sales-profit relationships.  

These multivariate techniques support better business decision-making and strategy optimization.
