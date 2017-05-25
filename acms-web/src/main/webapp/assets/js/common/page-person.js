// Data Tables - 配置
(function($) {

	'use strict';
	/* 我们改写初始化这里所有的数据表，因为我们要用select2，
	 * 给搜索输入如果你重写这fninitcomplete某处继续引导看在心里，
	 * 你应该运行的代码在函数内保持功能。 
	 */
	if ( $.isFunction( $.fn[ 'dataTable' ] ) ) {
		$.extend(true, $.fn.dataTable.defaults, {
			sDom: "<'row datatables-header form-inline'<'col-sm-12 col-md-6'l>" +/*"<'abcd'>"+*/
					"<'col-sm-12 col-md-6'f>r><'table-responsive't><'row datatables-footer'<'col-sm-12 col-md-6'i><'col-sm-12 col-md-6'p>>",
			oLanguage: {
				sLengthMenu: '_MENU_每页记录条数',
				sProcessing: '<i class="fa fa-spinner fa-spin"></i> Loading'
			},
			fnInitComplete: function( settings, json ) {
				// select 2
				if ( $.isFunction( $.fn[ 'select2' ] ) ) {
					$('.dataTables_length select', settings.nTableWrapper).select2({
						minimumResultsForSearch: -1
					});
				}

				var options = $( 'table', settings.nTableWrapper ).data( 'plugin-options' ) || {};

				// 搜索框
				var $search = $('.dataTables_filter input', settings.nTableWrapper);

				$search.attr({
						placeholder: typeof options.searchPlaceholder !== 'undefined' ? options.searchPlaceholder : '请输入关键字搜索...'
					}).addClass('form-control');

				if ( $.isFunction( $.fn.placeholder ) ) {
					$search.placeholder();
				}
			}
		});
	}
}).apply( this, [ jQuery ]);


/*Datatable - 具有细节的行*/
(function( $ ) {

	'use strict';

	var datatableInit = function() {
		var $table = $('#datatable-details');
		
		//行细节格式功能
		var fnFormatDetails = function( datatable, tr ) {
			var data = datatable.fnGetData( tr );
			return [
			'<table class="table mb-none">',
				'<div>',
					'<tr>',
						'<td class=" label-info" ><a onclick="editPerson(this);"  data-personid="${person.id}" style="color: white;text-decoration:underline;">编辑人员</a></td>',
						'<td class=" label-success" ><a onclick="startPerson(this);" data-personid="${person.id}" style="color: white;text-decoration:underline;">启用人员</a></td>',
						'<td class=" label-warning" ><a onclick="stopPerson(this);" data-personid="${person.id}"  style="color: white;text-decoration:underline;">禁用人员</a></td>',
						'<td class=" label-danger" ><a onclick="deletePerson(this);" data-personid="${person.id}" style="color: white;text-decoration:underline;">删除人员</a></td>',
					'</tr>',
				'</div>',
				'</table>',
			].join('');
		};
		
		var th = document.createElement( 'th' );
		var td = document.createElement( 'td' );
		td.innerHTML = '<i data-toggle class="fa fa-plus-square-o text-primary h5 m-none" style="cursor: pointer;"></i>';
		td.className = "text-center";

		$table.find( 'thead tr' ).each(function() {
				this.insertBefore( th, this.childNodes[0] );
			});

		$table.find( 'tbody tr' ).each(function() {
				this.insertBefore(  td.cloneNode( true ), this.childNodes[0] );
			});

		// 初始化
		var datatable = $table.dataTable({
			aoColumnDefs: [{
				bSortable: false,
				aTargets: [ 0 ]
			}],
			aaSorting: [
				[1, 'asc']
			]
		});

		// 添加一个监听
		$table.on('click', 'i[data-toggle]', function() {
			var $this = $(this),
				tr = $(this).closest( 'tr' ).get(0);

			if ( datatable.fnIsOpen(tr) ) {
				$this.removeClass( 'fa-minus-square-o' ).addClass( 'fa-plus-square-o' );
				datatable.fnClose( tr );
			} else {
				$this.removeClass( 'fa-plus-square-o' ).addClass( 'fa-minus-square-o' );
				datatable.fnOpen( tr, fnFormatDetails( datatable, tr), 'details' );
			}
		});
	};

	$(function() {
		datatableInit();
	});

}).apply( this, [ jQuery ]);
