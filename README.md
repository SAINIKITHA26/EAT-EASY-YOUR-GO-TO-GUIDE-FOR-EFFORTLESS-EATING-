# EAT-EASY-YOUR-GO-TO-GUIDE-FOR-EFFORTLESS-EATING-
Discover how to enjoy healthy, delicious meals with ease in *Eat Easy*. This guide simplifies nutritious eating with quick recipes, meal prep hacks, and budget-friendly tips, ensuring you save time and money without sacrificing flavor. From energy-boosting snacks to cozy comfort foods, it's all about effortless cooking for every lifestyle!
Introduction

This repository contains the SQL scripts used for the "EATEASY" project. These scripts create and populate the database schema required for managing foods, user data, payments, search results, and maps. The database is designed to support functionalities such as managing food items, tracking user data, processing payments, and calculating routes.

Table of Contents

Database Description

Database Tables

How to Use

Prerequisites

Installation

Data Description

Database Description

The database is designed to support a food ordering and mapping application. It consists of the following main components:

Food Management: Stores details about food items.

User Management: Handles user information.

Payment Tracking: Tracks user payments and order types.

Search and Map Data: Stores location and route data for navigation.

Database Tables

The schema includes the following tables:

1. foods

Stores details of available food items.

Columns:

food_id: Unique identifier for food items (Primary Key).

f_name: Name of the food item.

f_type: Type/category of food (e.g., Breakfast, Lunch).

description: Description of the food item.

price: Price of the food item.

shop: Name of the shop providing the food.

image: File path of the food image.

location: Location of the shop.

2. map

Stores user routing details.

Columns:

phone_number: User's phone number.

start_place: Starting location.

end_place: Destination location.

3. payments

Tracks payment details for users.

Columns:

p_id: Unique identifier for payments (Primary Key).

c_name: Customer name.

email: Customer email.

payment: Payment amount.

p_type: Payment type (e.g., Card, Cash).

o_type: Order type (e.g., Takeaway).

p_date: Payment date and time.

4. search_results

Stores calculated distances, durations, and travel modes for user routes.

Columns:

id: Unique identifier for search results (Primary Key).

distance_in_kilo: Distance in kilometers.

distance_in_mile: Distance in miles.

duration_in_text: Travel time description.

TravelMode: Mode of transportation (e.g., Driving, Walking).

origin: Origin location.

destination: Destination location.

5. user

Stores user profile details.

Columns:

phone_number: User's phone number (Primary Key).

email: User email address.

username: Username.

password: Password.

address1: Primary address.

address2: Secondary address.

city: City of the user.

How to Use

Running the Script

Open your MySQL client or any SQL database management tool.

Copy and execute the script in a new database named eateasy.

The script will:

Create the required tables.

Populate them with sample data.

Set up primary keys and auto-increment values.

Key Commands

Set SQL Mode:

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

Ensures that zero values can be used in AUTO_INCREMENT columns.

Start Transaction:

START TRANSACTION;

Used to ensure atomicity of operations.

Prerequisites

MySQL Server (Version 5.7 or higher recommended).

MySQL client tool (e.g., MySQL Workbench).

Installation

Clone this repository:

git clone https://github.com/yourusername/eateasy-sql.git

Navigate to the project directory:

cd eateasy-sql

Import the SQL file into your MySQL database.

Data Description

Sample Data Highlights

Foods Table: Includes a variety of food items such as Idli, Dosa, Chicken Biryani, and beverages.

Map Table: Stores routing information for navigation.

Payments Table: Tracks sample payments for various order types.

Notes

Replace image paths with actual image URLs or file paths in production.

Customize the sample data to fit your application.

Contributing

Feel free to submit issues or pull requests to enhance this repository. For major changes, please discuss your ideas by opening an issue first.
