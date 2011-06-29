# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $(".mc-field-group input").focus ->
    $(this).parent().addClass('active')
    
  $(".mc-field-group input").blur ->
    $(this).parent().removeClass('active')
    if $(this).val().length == 0
      $(this).prev().show()
      $('#mc-embedded-subscribe').addClass('disabled')
    
  $('#learn_product, #beta_invite a').click ->
    scrollPosition = $('#product').offset().top - 100
    $('body').animate({"scrollTop": scrollPosition})
    $('html').animate({"scrollTop": scrollPosition})
    return false
    
  $('#beta_invite a').click ->
    scrollPosition = $('#product').offset().top - 100
    $('body').animate({"scrollTop": scrollPosition})
    $('html').animate({"scrollTop": scrollPosition})
    $('#mce-EMAIL').focus()
    return false
    
  $('#home').click ->
    $('body, html').animate({"scrollTop": 0})
    return false
    
  $('#mc-embedded-subscribe').click ->
    if $('#mce-EMAIL').val().length == 0
      $('#mce-EMAIL').focus()
      return false
      
  $('#mce-EMAIL').keydown ->
    $(this).prev().hide()
    
  $('#mce-EMAIL').keyup ->
    if $('#mce-EMAIL').val().length > 0
      $('#mc-embedded-subscribe').removeClass('disabled')
    else
      $('#mc-embedded-subscribe').addClass('disabled')
    
  $('#mc-embedded-subscribe').addClass('disabled')
  
  optimizely = optimizely || []
  
  $('#mc_embed_signup').submit ->
    optimizely.push(['trackEvent', 'email_form_submitted'])
    
  return