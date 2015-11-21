# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#


ajaxRequest = (data) ->
  $.ajax
    url: 'http://connpass.com/api/v1/event/?keyword=' + data
    type: 'GET'
    dataType: 'jsonp'
    timeout: 10000
    success: (data) ->
      $.each data['events'], (index, element) ->
        console.log element
        $('#research_result').append '<li class="panel panel-default">' + element['event_url'] + '</li>'
        return
      return
    error: (XMLHttpRequest, textStatus, errorThrown) ->
      alert 'データ取れてないですね。すいません。ナンデヤネン。'
      return
  return


$ ->
  $(".sort_table").sortable connectWith: "ul"
  $('#submit_button').click ->
    data = $('#research_word').val()
    ajaxRequest data
    return
  return


