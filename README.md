# Best of Everything

## Introduction

Do you know who serves your favorite bagel in Chicago? How about your favorite burger? This application will allow you to keep track.

The central model in this application are **Favorites**. A favorite belongs to a user and specifies a particular restaurant and a particular dish. For example, my favorite burger in Chicago is served at Au Cheval. Yours might be at Umami Burger. So the favorites table looks like this:

    Favorite:
      user_id: integer
      dish_id: integer
      venue_id: integer
      notes: text

The notes column exists so that users can remember additional info on a dish if they choose to, e.g., what extras to add.

The supporting cast of models in the app are as follows:

    User:
      username: string

    Cuisine:
      name: string

    Dish:
      name: string
      cuisine_id: integer

    Venue:
      name: string
      address: string
      neighborhood_id:integer

    Neighborhood:
      name: string
      city: string

Every table also has it's own `id: integer` column, of course. Also, every table has automatically managed `created_at` and `updated_at` columns.

## Setup

We are going to use this project to practice a few setup techniques that you will find handy in many of your projects.

### Install the bootstrap-sass gem

### Install the font-awesome-sass gem

### Add scaffold templates

### Install devise gem

### Generate users with Devise

### Generate other scaffolds

### Add associations

### Add validations

### Seed

### Fix foreign keys in show/index views

### Add dropdowns for foreign keys in forms

### Use current_user to fill in user_id foreign keys
