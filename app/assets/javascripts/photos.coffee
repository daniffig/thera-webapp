# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

(($) ->

  $ ->
    $('button.submit-photo-button').on 'click', (e) ->
      form = $(e.target).closest('form')[0]

      $.ajax
        url: Routes.photos_path
        data: new FormData(form)
        contentType: false
        processData: false
        method: 'POST'

) jQuery