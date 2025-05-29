🍕 # **Pizza Sales Dashboard – Power BI Project**

📌 **Overview**
This Power BI dashboard analyzes “pizza sales” from a dataset containing order details, revenue, and pizza categories. The goal is to gain insights into sales trends, popular pizzas, and customer behavior.
🎯 **Objectives**
By analyzing this dataset and building a Power BI dashboard, we can gain valuable insights into business sales performance and customer preferences. Key objectives include:
1. Revenue & Order Insights– Track total revenue, average order value, and sales trends over time.
2. Best & Worst-Selling Pizzas– Identify top-performing pizzas and those with low sales to optimize inventory and marketing strategies.
3. Sales Performance by Category & Size– Analyze which pizza categories (e.g., Classic, Veggie) and sizes (Small, Medium, Large) are most popular while identifying underperforming items to refine the menu.
4. Peak Ordering Times– Understand hourly, daily, and monthly order trends to improve staffing and operational efficiency.
5. Customer Preferences & Behavior– Segment customers based on ordering habits to tailor promotions and menu offerings.

 📊 **About the Dataset**
This pizza sales dataset consists of a single CSV file, capturing detailed transaction data. Each row represents an individual pizza order, including:
- pizza_id: Unique identifier for each type of pizza.
- order_id: Distinct order number linking multiple pizzas within a single purchase.
- pizza_name_id: Identifier for the specific pizza name.
- quantity: Number of pizzas ordered in a single transaction.
- order_date & order_time: Timestamp details of when the order was placed.
- unit_price & total_price: Cost per unit and total price for the order.
- pizza_size: Size category of the pizza (e.g., Small, Medium, Large).
- pizza_category: Classification of pizzas based on type (e.g., Classic, Veggie).
- pizza_ingredients: List of ingredients used for each pizza.
- pizza_name: The actual name of the pizza for reference.

 🛠️ **Technologies Used**
- Power BI(Dashboard Development)
- DAX(Data Analysis & Measures)
- Power Query(Data Cleaning & Transformation)
- SQL (Calculate KPI measures for validation before comparing them with DAX calculations in Power BI to ensure accuracy, help identify discrepancies, and validate data integrity)

 🚀 **Steps to Build the Power BI Dashboard**
 1. Importing the Dataset
 2. Data Cleaning & Transformation
Use Power Query to clean and format the data:
  - Ensure correct data types (e.g., dates, numbers).
  - Remove any unnecessary columns and handle missing values.
  - Create new columns if needed (e.g., Day name, Month name for trend analysis).
   3. **Data Modeling**
- Define relationships between columns like order_id, pizza_id, and pizza_category.
- Create calculated measures using DAX(e.g., Total Order, Total Revenue, …).
   4. **Creating Visualizations**
Use bar charts, pie charts, line graphs,… to showcase:
- Order trends over time
- % sales by pizza category and size
- Best-selling pizza categories
- Peak Ordering hours analysis
   5. **Building the Dashboard**
- Arrange the visuals in Power BI report view.
- Add interactive filters like date range and category selection.
- Include KPIs such as total revenue, number of orders, and best-selling pizza.
- Provide key insights and recommendations. 
 📈 **Key Insights**
- Sales peak seasons:
•	Fridays and Saturdays
•	January and July
- The top-selling pizzas based on different metrics are:
•	Revenue: The Thai Chicken Pizza
•	Quantity Sold: The Classic Deluxe Pizza
•	Number of Orders: The Classic Deluxe Pizza
- Sales peak hours include 12 PM - 1 PM and 4 PM-8 PM, especially on weekends.
- Meat-based pizzas generate higher revenue than veggie options.

