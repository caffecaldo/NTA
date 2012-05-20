# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
    $('#ranktest_testdate').datepicker({
    altFormat: "yy-mm-dd"
    })
jQuery ->
	$('#basicDT').dataTable()
jQuery ->
	$('#ranktestsDT').dataTable( {
	"aaSorting": [[ 0, "desc" ]]
	})
jQuery ->
	oTable = $('#fixedcolDT').dataTable( {
      "sScrollX": "100%",
      "bScrollCollapse": true
    } )
  new FixedColumns(oTable)
