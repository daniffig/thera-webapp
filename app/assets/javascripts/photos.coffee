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

      toastr.remove()

      # colors = ['#3d1166', '#661165', '#121166', 'rgb(26, 188, 156)']
      colors = ['rgb(26, 188, 156)', 'rgb(155, 89, 182)', 'rgb(52, 73, 94)', 'rgb(52, 152, 219)', 'rgb(46, 204, 113)']

      $loader = $('div#loader').fakeLoader {        
        bgColor: colors[Math.floor(Math.random() * colors.length)]
        spinner: 'spinner3'
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
        setTimeout ( ->
          $loader.fadeOut 1000, ->
            toastr.success '¡Muchas gracias!', '¡Recibimos tu imagen!'
        ), 1000
      .fail ->
        setTimeout ( ->
          $loader.fadeOut 1000, ->
            toastr.error 'Por favor, intentalo nuevamente.', 'Ocurrió un error'
        ), 1000


) jQuery
