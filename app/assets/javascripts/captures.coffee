# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "ajax:success", "form#captures-form", (ev,data)->
  console.log data
  $("#captures-box").append("<li>#{data.incident_id} #{data.fecha_inicial} #{data.fecha_final}</li>")

$(document).on "ajax:error", "form#captures-form", (ev,data)->
  console.log data  


$(document).ready ->
  $('#capture_fecha_inicial').datepicker(format: 'dd/mm/yyyy'
    )    
 
$(document).ready ->
  $('#capture_fecha_final').datepicker(format: 'dd/mm/yyyy' )   
 