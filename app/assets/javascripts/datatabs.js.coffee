# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#$ ->
#    $('#ranktest_testdate').datepicker({
#    altFormat: "yy-mm-dd"
#    })
#jQuery ->
#  $('.best_in_place').best_in_place()
jQuery ->
	$('#basicDT').dataTable()
jQuery ->
	$('#ranktestsDT').dataTable( {
	"aaSorting": [[ 0, "desc" ]]
	})
#jQuery ->
#	oTable = $('#fixedcolDT').dataTable( {
#      "sScrollX": "100%",
#      "bScrollCollapse": true
#    } )
#  new FixedColumns(oTable, {
#		"iLeftColumns": 1,
#		"iRightColumns": 1
# 	} )

$(document).ready ->
	oTable = $("#fixedcolDT").dataTable( {
      "sScrollX": "100%",
      "bScrollCollapse": true
    } )
    new FixedColumns(oTable, {
		"iLeftColumns": 1,
		"iRightColumns": 1
 	} )
	$("td", oTable.fnGetNodes()).hover (->
		iCol = $("td").index(this) % 5
		nTrs = oTable.fnGetNodes()
		$("td:nth-child(" + (iCol + 1) + ")", nTrs).addClass "highlighted"
	), ->
		$("td.highlighted", oTable.fnGetNodes()).removeClass "highlighted"


#$(document).ready(function() {
#	var oTable = $('#example').dataTable( {
#		"bSortClasses": false
#	} );
#	
#	$('td', oTable.fnGetNodes()).hover( function() {
#		var iCol = $('td').index(this) % 5;
#		var nTrs = oTable.fnGetNodes();
#		$('td:nth-child('+(iCol+1)+')', nTrs).addClass( 'highlighted' );
#	}, function() {
#		$('td.highlighted', oTable.fnGetNodes()).removeClass('highlighted');
#	} );
#} );



