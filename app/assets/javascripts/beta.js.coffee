# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('#signup_form form').submit (event) ->
    event.preventDefault()
    $.ajax
      type: 'POST'
      url: $(this).attr('action')
      data: $(this).serialize()
      dataType: 'json'
      success: (json, status) ->
        if json.created
          $('#signup_form').text("Thanks.")
          $('#javascript_response').html(json.html)
        else
          $('#javascript_response').html(json.html)

    return false