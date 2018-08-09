
(($) ->

  $ ->
    $('button.submit-photo-button').on 'click', (e) ->
      $id = $(e.target).data 'form-id'

      $form = $('form#' + $id)

      $file = $form.find('input#photo_file')[0].files[0]

      if ($file)
        formData = new FormData()

        formData.append 'photo[id]', $id
        formData.append 'photo[file]', $file

        $.ajax
          url: 'photos/new'
          data: formData
          contentType: false
          processData: false
          method: 'POST'

    $('div#fullpage').fullpage
      autoScrolling: true
      scrollHorizontally: true

) jQuery
