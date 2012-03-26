# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
#  $('#beta_signup').bind('ajax:success', -> alert "Success!" )

  $('#signup_form form').submit (event) ->
    event.preventDefault()
    whole_form = $(this).parent()
    email = $('#betum_email').val()
    if !email
      $('#errors').text('We need an email address...')
    else if !/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i.test(email)
      $('#errors').text("That doesn't look quite right...")
    else
      whole_form.hide('slow')
      whole_form.after('Thanks!  We will send you updates at ' + email + ' as we get closer to making your stories possible.')