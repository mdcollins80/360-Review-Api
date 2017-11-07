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
