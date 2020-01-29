# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#package-toggle').on 'click', (event) ->
    event.preventDefault()
    $(this).toggleClass 'active'
    $('#packages').toggleClass 'block-active'
    return

  $('#requirement-toggle').on 'click', (event) ->
    event.preventDefault()
    $(this).toggleClass 'active'
    $('#requirements').toggleClass 'block-active'
    return

  $('#faq-toggle').on 'click', (event) ->
    event.preventDefault()
    $(this).toggleClass 'active'
    $('#faqs').toggleClass 'block-active'
    return
  return
