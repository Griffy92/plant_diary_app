# Plant Diary

## Introduction

This is the second project of the GA Software Engineering Immersive course. 

The idea of a plant diary application comes from personal experiences of accidentally murdering my plants so I wanted to create something that can help me keep track of watering them.

You can find the application [here](http://plant-diary.herokuapp.com/)

## Technologies
- Ruby on Rails 5.2.8.1
- Cloudinary
- Bootstrap
- Discord Webhook
- Perenual API
- Heroku
- Heroku Scheduler
- PostgreSQL
- Bcrypt 3.1.7
- HTTParty

## Features
- Users can upload pictures of their plants.
- Users can receive alerts via discord webhook. Currently, the app is scheduled to check everyday based on when you last watered your plant and how often you need to water your plants to determine whether an alert needs to be sent.

## How to
1. Create an account.
2. Create a Journal.
3. Create plants and add into your journal.
4. To receive alerts, you will need to input a discord webhook URL into the relevant Journal.
5. To get the discord webhook URL: Select the Server, under Text Channels, select Edit Channel (gear icon) Select Integrations > View Webhooks and click New Webhook. Copy the Webhook URL.

## Roadmap
- Further automation of the alert process.

## Planning
![website wireframe](/app/assets/images/wireframe_3.png)
![model plan](/app/assets/images/model_2.png)

## Acknowledgements
Massive thank you to Joel, CJ, Mark and Tina for all your help with this project!
