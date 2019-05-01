$(document).ready(function() {
	
	var table = $('#chartdata').DataTable({
		ajax : {
			'url' : 'chartdata.json',
			//'type': 'POST',
			'dataSrc' : ''
		},
		responsive: true,
		orderMulti: true,
		select : "single",
		"columns" : [ {
			"className" : 'details-control',
			"orderable" : false,
			"data" : null,
			"defaultContent" : '',
			"render" : function() {
				return '<i class="fa fa-plus-square" aria-hidden="false"></i>';
			},
			width : "5px"
		},
		
			{"data" : "CHART_ID"},
			{"data" : "CHART_TITLE"},
			{"data" : "CHART_DATASOURCE"},
			{"data" : "CHART_YEAR"},
			{"data" : "CHART_UNIT"},
			{"data" : "CHART_VISUALTYPE"},
			{"data" : "CHART_AUTHOR"},
			{"data" : "CHART_KEYWORD"},
			{"data" : "CHART_DATATYPE"},
			{"data" : "CHART_FILEPATH"}],
		"order" : [ [ 1, 'desc' ] ]
	});
	
	// Add event listener for opening and closing details
	$('#chartdata tbody').on('click', 'td.details-control', function() {
		var tr = $(this).closest('tr');
		var tdi = tr.find("i.fa");
		var row = table.row(tr);

		if (row.child.isShown()) {
			// This row is already open - close it
			row.child.hide();
			tr.removeClass('shown');
			tdi.first().removeClass('fa-minus-square');
			tdi.first().addClass('fa-plus-square');
		} else {
			// Open this row
			row.child(format(row.data())).show();
			tr.addClass('shown');
			tdi.first().removeClass('fa-plus-square');
			tdi.first().addClass('fa-minus-square');
		}
	});

	table.on("user-select", function(e, dt, type, cell, originalEvent) {
		if ($(cell.node()).hasClass(" details-control")) {
			e.preventDefault();
		}
	});
 

});

function format(d) {
	
	var modify = 'onclick=modifyChart("'+ d.CHART_ID + '")';
	var del = 'onclick=deleteChart("' + d.CHART_ID +'")';

	// `d` is the original data object for the row
	return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">'
			+ '<tr>'
			+ '<td>제목:</td>'
			+ '<td>'
			+ d.CHART_TITLE
			+ '</td>'
			+ '</tr>'
			+ '<tr>'
			+ '<td>작성자:</td>'
			+ '<td>'
			+ d.CHART_AUTHOR
			+ '</td>'
			+ '</tr>'
			+ '<tr>'
			+ '<td>파일 경로:</td>'
			+ '<td>'
			+ d.CHART_FILEPATH
			+ '</td>'
			+ '</tr>'
			+ '<tr>'
			+ '<td>게시글 관리</td>'
			+ '<td><button id="modify_chart" class="btn btn-primary" '
			+ modify
			+ '>차트 수정</button> '
			+ '<button class="btn btn-primary" '
			+ del
			+ '>차트 삭제</button></td>'
			+ '</tr>'
			+'</table>';
	
			
	
	
}