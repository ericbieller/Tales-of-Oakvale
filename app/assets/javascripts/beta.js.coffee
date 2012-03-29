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
        $('#javascript_response').html(response)
    return false