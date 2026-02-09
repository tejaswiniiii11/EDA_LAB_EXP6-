IMPLEMENTATION OF MULTIVARIATE DISPLAYS

Student Name: TEJASWINI M Register Number: 23BAD121

📌 Project Description
This experiment demonstrates the use of advanced multivariate visualization techniques using R and ggplot2 to analyze retail business data. The project focuses on visual interpretation of relationships between multiple variables such as Sales, Profit, Customer Segment, and Region.

The visualizations implemented help in:

Understanding multidimensional relationships
Identifying patterns and trends
Comparing customer segments
Regional performance analysis
📂 Dataset Used
File Name: 6.retail_business.csv

Expected Columns:
Order_ID
Sales
Profit
Customer_Segment
Region
🛠 Libraries Required
The following R libraries are used in this experiment:

library(ggplot2)
library(dplyr)
library(tidyr)
🔄 Data Preparation Steps
Dataset loaded using read.csv()

Data structure checked using str()

Summary statistics generated using summary()

Data type conversion:

Region → Factor
Customer_Segment → Factor
📊 Visualizations Implemented
1️⃣ Parallel Coordinate Plot
Purpose: To visualize relationships between Sales and Profit across different Customer Segments.

Features:

Multiple observations plotted as connected lines
Color-coded by customer segment
Helps identify trends and variability
Variables Used:

Sales
Profit
Customer_Segment
Order_ID
2️⃣ Bubble Chart
Purpose: To analyze the relationship between Sales and Profit with magnitude representation.

Features:

X-axis: Sales
Y-axis: Profit
Bubble size: Sales volume
Bubble color: Customer segment
Insights:

Identifies high-value customers
Visualizes profit concentration
Shows sales dominance patterns
3️⃣ Trellis Display (Facet Plot)
Purpose: To compare sales-profit relationships region-wise.

Features:

Faceting by Region
Separate plot for each region
Color-coded customer segments
Benefits:

Regional comparison
Market performance evaluation
Segment behavior analysis
🎯 Learning Outcomes
After completing this experiment, students will be able to:

Understand multivariate data visualization
Implement parallel coordinate plots in R
Design bubble charts for multivariable analysis
Use faceting for comparative visualization
Apply tidyverse tools for data transformation
▶️ How to Run the Project
Install required libraries:
install.packages(c("ggplot2", "dplyr", "tidyr"))
Place 6.retail_business.csv in the working directory

Run the script in RStudio or R console

View generated plots in the plot panel

📁 File Structure
project_folder/
│
├── 6.retail_business.csv
├── advanced_multivariate_displays.R
└── README.md
🧪 Academic Use
This experiment is suitable for:

Data Visualization Lab
Data Analytics Lab
Business Analytics Lab
Multivariate Analysis Practicals
R Programming Coursework
📝 Declaration
This project is created as part of an academic laboratory experiment for learning advanced data visualization techniques using R.

Submitted by: Tejaswini M 23BAD121
