# Chansey
Server side project for Andy.

## Setup
1. Install dependencies: `bundle install`
2. Create database: `rake db:create`
3. DB migration: `rake db:migrate`
4. Load sample data: `rake chansey:load_sample_data`
5. Start server: `rails server`. It will launch the app at: `localhost:3000`.

## Available endpoints
* /nurses
* /patients
* /visiting_schedules
* /vital_records             

## Swagger UI
Swagger UI is hosted under **/api**

To update: modify json files under **public/apidocs**

## Heroku
https://young-journey-22645.herokuapp.com/

(Note that home page is not available currently)
