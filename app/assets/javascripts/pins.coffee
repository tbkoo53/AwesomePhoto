# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
  $('#pins').imagesLoaded ->
    $('#pins').masonry
      itemSelector: '.box'
      isFitWidth: true
      

#画像プレビュー
$ ->
  readURL = (input) ->
    if input.files and input.files[0]
      reader = new FileReader

      reader.onload = (e) ->
        $('#img_prev').attr 'src', e.target.result
        return

      reader.readAsDataURL input.files[0]
    return

  $('#post_post_img').change ->
    $('#img_prev').removeClass 'hidden'
    readURL this
    return
  return
