# Very Best

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

## Customizing the UX

Now that we've done all the common, boilerplate setup stuff, it's time to customize the user experience to match our vision. The out-of-the-box scaffold code is just a starting point.

### Show existing favorites on dishes#index

The most important page in this app is the list of dishes. I should be able to perform most important operations from here.

So, for any dish that I've already found a favorite of, let's show the venue that I liked.

You'll have to, while you are drawing each dish's panel, check if a favorite exists for the current user for that dish. If so, write the venue name.

### Change the buttons

We don't really want users to destroy or edit dishes, which is what the scaffolded buttons on the dishes#index page do. Instead, let's change the buttons to destroy or edit existing favorites. Remove the show button entirely.

### Put forms for new favorites on dishes#index

In case I haven't already set a favorite for a dish, I should see a form to create one right there inside the panel. The user should only see a dropdown for `venue_id`; you should be able to set `dish_id` and `user_id` in other ways.

### Show best dishes on venues#show

If I visit the show page for a venue, I would like to see what dishes other people have marked as their favorites there.

## Adding security

Now that we have the application functional, and the basic UX flow is implemented, it's time to think about security.

## Add before_actions to prevent users from modifying or deleting dishes, venues, or neighborhoods.

### Add before_actions to prevent users from modifying or deleting other users' favorites.

### Remove links that users shouldn't see

Now that we've secured the app with `before_action`s, let's also remove links so that we don't frustrate users by allowing them to attempt actions they aren't authorized for.


