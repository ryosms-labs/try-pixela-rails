# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
document.addEventListener 'turbolinks:load', ->

  $('#user_show_token').change ->
    if $('#user_show_token').prop('checked')
      $('#user_token').prop('type', 'text')
    else
      $('#user_token').prop('type', 'password')
    return
