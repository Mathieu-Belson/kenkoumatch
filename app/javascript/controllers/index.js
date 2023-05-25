// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import GoogleMapsController from "./google_maps_controller"
application.register("google-maps", GoogleMapsController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import SearchPracticesController from "./search_practices_controller"
application.register("search-practices", SearchPracticesController)
