# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $(".mc-field-group input").focus ->
    $(this).prev().hide()
    
  $(".mc-field-group input").blur ->
    $(this).prev().show() if $(this).val().length == 0
    
  $('#learn_product').click ->
    scrollPosition = $('#product').offset().top - 100
    $('body').animate({"scrollTop": scrollPosition})
    $('html').animate({"scrollTop": scrollPosition})
    return false
    
  $('#home').click ->
    $('body, html').animate({"scrollTop": 0})
    return false