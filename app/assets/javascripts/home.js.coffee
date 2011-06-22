# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $("#accordion h2").prev().hide()
  $('#accordion .element:first-child').show()
  
  $("#accordion h2 a").click ->
    clicked_h2 = $(this).parent()
    $('#accordion .element').hide()
    $('#accordion h2').removeClass 'active'
    $(clicked_h2).prev().show()
    $(clicked_h2).addClass 'active'