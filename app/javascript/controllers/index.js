// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import ShowAttendeesController from "./show_attendees_controller"
application.register("show-attendees", ShowAttendeesController)

import StarRatingController from "./star_rating_controller"
application.register("star-rating", StarRatingController)

import TypedJsController from "./typed_js_controller"
application.register("typed-js", TypedJsController)
