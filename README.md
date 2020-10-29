# Demolition Nutrition
> Site that allows you to track your diet and exercises as well as do advanced searches for food to meet your dietary requirements.

## Table of contents
* [Project Site](#project-site)
* [Project Video](#project-video)
* [Inspiration](#inspiration)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Contact](#contact)

## Project Site
[View Site](https://demolition-nutrition.netlify.app/)

## Project Video
[View demo of Demolition Nutrition](https://youtu.be/FS6Hd9pQQ_o)

## Inspiration
My passion for nutrition and fitness is what led me to build Demolition Nutrition. I've always enjoyed keeping track of my daily calorie and macronutrient totals but hated having to pay to do so. I also found myself constantly struggling to find food from restaurants that met my current macronutrient requirements based on the diet I was following. The search tool allows you to find food and make sure all the results fall within the caloric or macronutrient target you are looking for. 

## Technologies
### Backend Development 
* Ruby - version 2.6.1 
* Rails - version 6.0.3
* Bcrypt - version 3.1.7
* JWT 

### Frontend Development 
* JavaScript (ES6)
* HTML5
* CSS3
* React.js - version 16.13.1
* React-DOM - version 16.13.1
* React-Router-DOM - version 5.2.0
* React-Scripts - version 3.4.3
* React-Bootstrap - version 1.3.0 
* React-datepicker - version 3.2.2 
* React-Geocode - 0.2.2 
* Reactstrap - 8.6.0 


## Setup 
For the Backend: 
1. Clone the GitHub repository locally to your computer 
1. In the command line, navigate to the root directory of the repository, and enter the following: 
  $ bundle install 
1. Next, enter the following: 
  $ rails db:migrate
1. Next, enter the following: 
  $ rails db:seed
1. Finally, start the server by entering: 
  $ rails s

For the Frontend: 
1. Open an account and get your API key and ID at [Nutritionix](https://www.nutritionix.com/business/api)
1. Open an account and get your API key at [Geocoding API](https://developers.google.com/maps/documentation/geocoding/get-api-key)
1. Clone the [GitHub repository](https://github.com/colin-mosley/Demolition-Nutrition-Frontend) locally to your computer 
1. In the command line, navigate to the root directory of the repository, and enter the following: 
  $ npm install 
1. Enter the following:
  $ touch .env
1. Navigate to the .env folder, and paste your Nutritionix API key and ID as well as your Geocoding API key. 
1. Next, save and then enter the following: 
  $ npm start


## Features
* Full stack web application utilizing React on the frontend and Rails on the backend.
* Authorization and authentication implemented with JWT and bcrypt. 
* Users can create account through the application.
* Users can add general profile information including weight and their current goal. 
* Users can view their basal metabolic rate as well as their daily macronutrient breakdown based on their goal.
* Users can go to their journal and log their meals and exercises. 
* Users can keep track of their daily calorie and macronutrient consumption and view their caloric deficit/surplus.
* Users can use the advanced search to find nearby food from restaurants and search by specific calorie and macronutrient amounts. 
* Users can filter search results by distance, calories or any macronutrient.


## Status
Project is completed with the option to expand functionality and DRY out code.


## Contact
Created by [Colin mosley](https://www.linkedin.com/in/colin-mosley/).
Please contact me if you have any questions. 
