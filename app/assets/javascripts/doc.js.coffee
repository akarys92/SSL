# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#docs .page").infinitescroll
    navSelector: "nav.pagination" # selector for the paged navigation (it will be hidden)
    nextSelector: "nav.pagination a[rel=next]" # selector for the NEXT link (to page 2)
    itemSelector: "#docs tr.doc" # selector for all items you'll retrieve

$(document).ready ->
  $('#dataTable').dataTable
    'processing': true
    'serverSide': true
    'ajax':
      'url': '/get_data'
      'data': (d) ->
        d.myKey = 'myValue'
        # d.custom = $('#myInput').val();
        # etc
        return
    'columns': [
      { 'data': 'title' }
      { 'data': 'authors' }
      { 'data': 'isbn' }
    ]
  return
$(document).ready ->
  i = 65
  while i <= 90
    letter = String.fromCharCode(i)
    $('#alphaString').append '<span><a href="?authors=' + letter + '&page=1">  ' + letter + '  </a></span>'
    i++
  return


# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/