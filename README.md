# 360 Review API Documentation

Ruby on Rails based back end application for a human resources review process.

## The Application

![Imgur](https://i.imgur.com/4FouJfj.png)

[360 REVIEW](https://mdcollins80.github.io/ThreeSixty-Review)
[GitHub Repository](https://github.com/mdcollins80/ThreeSixty-Review)


The 360 Review process is meant to give supervisors a well rounded view of their
direct reports.  Each employee is reviewed by their supervisor and any direct
reports, as well as other employees with whom they work on a regular basis.

The 360 Review web app is meant to facilitate this review process by enabling
employees to log in to their own account to view their reviews.  Once logged in,
a user can view the reviews they have to complete, and any reviews they may have
already submitted.  Users may also create additional reviews if they so choose.

In future versions, users will be able to request reviews from others, and
supervisors will be able to see their direct reports' aggregrated results.
Network wide statistics will also be made available in future releases.

## The Back End

[360 REVIEW API](https://frightening-citadel-39718.herokuapp.com/)
[GitHub Repository](https://github.com/mdcollins80/ThreeSixty-Review-Api)

The back end API was built on Ruby on Rails with a PostGreSQL database.

## ERD

For the first version of this application, there are two resources, Users and
Reviews, with a one to many relationship.  A user has many reviews.

For future applications, that relationship will become a many to many with some self-referencing required on the Users table.

## Technology

This back end was completed using:
- Ruby
- Rails

# Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |
| POST   | `/reviews/new`         | `reviews#create`  |
| PATCH  | `/reviews/:id`         | `reviews#update`  |
| INDEX  | `/reviews`             | `reviews#index`   |
| SHOW   | `/reviews/:id`         | `reviews#show`    |

# Dependencies

Install dependencies with `npm install && bower install`.

## Planning and Process

For this project, my aim was to create an application where employees could
review their fellow employees.  I knew I had to keep it simple to start, so the
first version allows users to create reviews for other employees, edit those
reviews with ratings and comments, and submit them to the database.  I also knew
that I wanted to create some additional functionality for an Admin user.  I
decided that would be in the form of creating new users (rather than rely on all
users to sign up in order to create their account).

I started by creating a Reviews resource on the back end and walked through each CRUD function, one at a time, building out the routes and components in Ember necessary to display the information required for each CRUD function.

Lastly, I wanted to create an admin type user that could access a number of
additional routes not available to the non-admin user.  I knew this would require
an admin boolean in the database, and that extending the functionality to the
admin user would require code to verify that the current user's admin status was
true.  I decided to place that functionality on a link in the navbar that would
show up if the user's admin boolean were true.  I was able to get that working
using a handlebars helper {{#if Admin}} and thus turned my attention to building
in the ability to create a new user without having to utilize the sign up route.
I ended up taking the code used in the sign-up route and created a new action in
a new ember route called `user-new`.

I am happy with this first draft's final product and look forward to continuing
to improve upon the features required to turn this in to a production level
application.
