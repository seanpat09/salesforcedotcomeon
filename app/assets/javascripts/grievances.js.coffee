# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#new').dialog
    autoOpen: false
    show:
      effect: "slide"
      duration: 1000
  
    hide:
      effect: "slide"
      duration: 1000

  $('#vent').click (event) ->
    event.preventDefault()
    $('#new').dialog "open"
