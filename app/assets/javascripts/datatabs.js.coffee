# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#$ ->
#    $('#ranktest_testdate').datepicker({
#    altFormat: "yy-mm-dd"
#    })
#jQuery ->
#  $('.best_in_place').best_in_place()
$(document).ready ->
	$('#basicDT').dataTable()
$(document).ready ->
	$('#studentsDT').dataTable( {
	"aaSorting": [[ 1, "asc" ]]
	})
$(document).ready ->
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
      "bScrollCollapse": true,
      "aaSorting": [[ 1, "desc" ]]
    } )
    new FixedColumns(oTable, {
		"iLeftColumns": 2,
		"iRightColumns": 1
 	} )
	$("td", oTable.fnGetNodes()).hover (->
		iCol = $("td").index(this) % 5
		nTrs = oTable.fnGetNodes()
		$("td:nth-child(" + (iCol + 1) + ")", nTrs).addClass "highlighted"
	), ->
		$("td.highlighted", oTable.fnGetNodes()).removeClass "highlighted"

#$(document).ready ->
#  oTable = $("#fixedcolDT").dataTable(bSortClasses: false)
#  oTable.$("td").hover (->
#    iCol = $("td", @parentNode).index(this) % 5
#    $("td:nth-child(" + (iCol + 1) + ")", oTable.$("tr")).addClass "highlighted"
#  ), ->
#    oTable.$("td.highlighted").removeClass "highlighted"


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



