# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $('#favicon').click ->
    $.ajax
      type: 'POST'
      url: '/favorites/add/1'
    .always (data) ->
      $('#favicon').attr('src', "/assets/fav_#{data}.png")
