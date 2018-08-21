# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

(($) ->

  $ ->

    toastr.options.preventDuplicates = true
    toastr.options.progressBar = true

    $('button.show-instructions-button').on 'click', (e) ->

      $('.modal').modal()


    $('button.take-photo-button').on 'click', (e) ->

      $input = $ $(e.target).closest('form').find('input[type="file"]')[0]

      $input.trigger 'click'


    $('button.send-photo-button').on 'click', (e) ->

      colors = ['#3d1166', '#661165', '#121166']

      $loader = $('div#loader').fakeLoader {
        bgColor: colors[Math.floor(Math.random() * colors.length)]
        spinner: 'spinner1'
      }

      $loader.fadeIn()

      form = $(e.target).closest('form')[0]

      $.ajax
        url: Routes.photos_path
        data: new FormData(form)
        contentType: false
        processData: false
        method: 'POST'
      .done (data) ->
        $loader.fadeOut 1000, ->
          toastr.success '¡Muchas gracias!', '¡Recibimos tu imagen!'
      .fail ->
        setTimeout ( ->
          $loader.fadeOut 1000, ->
            toastr.error 'Por favor, intentalo nuevamente.', 'Ocurrió un error'
        ), 2000
      .always ->


) jQuery
