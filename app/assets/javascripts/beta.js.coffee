# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('#signup_form form').submit (event) ->
    $.ajax '/beta',
      type: 'POST'
      data: $(this).serialize()
      dataType: 'html'
      success: (response) ->
        $('.error').html(response)
#        $('#signup_form').html(response)
#        $('.error').html(response)
        $('.error').slideDown("fast")

    return false

#    whole_form = $(this).parent()
#    email = $('#betum_email').val()
#    errors = $('.error ul')
#    notice = $('.form_notice')
#    if !email
#      errors.html('<li>We need an email address...</li>')
#      $('.error').slideDown("fast")
#    else if !/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i.test(email)
#      errors.html("<li>That doesn't look quite right...</li>")
#      $('.error').slideDown("fast")
#    else
#      notice.html('Thanks!  We will send you updates at ' + email + ' as we get closer to making your stories possible.')
#      notice.removeClass('error')
#      notice.slideDown("fast")