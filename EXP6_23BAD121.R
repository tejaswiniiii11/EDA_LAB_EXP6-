print("23BAD121, Tejaswini M")
library(readr)
library(dplyr)
library(ggplot2)
library(GGally)
library(lattice)
library(scales)
df <- read_csv("retail_business.csv")
df <- df %>%
  mutate(
    Region = as.factor(Region),
    Product_Category = as.factor(Product_Category),
    Customer_Segment = as.factor(Customer_Segment),
    Sales = as.numeric(Sales),
    Profit = as.numeric(Profit),
    Discount = as.numeric(Discount)
  ) %>%
  filter(!is.na(Sales), !is.na(Profit), !is.na(Discount))
cols_idx <- match(c("Sales", "Profit", "Discount"), names(df))
p_parcoord <- ggparcoord(
  data = df,
  columns = cols_idx,
  groupColumn = "Customer_Segment",
  scale = "uniminmax",
  alphaLines = 0.4
) +
  theme_minimal()
print(p_parcoord)
p_bubble <- ggplot(df, aes(x = Sales, y = Profit)) +
  geom_point(aes(size = Discount, color = Customer_Segment), alpha = 0.7) +
  scale_size_continuous(range = c(2, 14)) +
  theme_minimal()
print(p_bubble)
p_bubble_region <- p_bubble + facet_wrap(~ Region)
print(p_bubble_region)
xyplot(
  Profit ~ Sales | Region,
  data = df,
  groups = Customer_Segment,
  auto.key = TRUE,
  pch = 16,
  xlab = "Sales",
  ylab = "Profit"
)
p_trellis_gg <- ggplot(df, aes(x = Sales, y = Profit, color = Customer_Segment)) +
  geom_point(alpha = 0.7) +
  facet_wrap(~ Region) +
  theme_minimal()
print(p_trellis_gg)


