<?php if(!defined('IN_PHPVMS') && IN_PHPVMS !== true) { die(); } ?>
<h3>Airports List</h3>
<div id="results"></div>
<table id="grid"></table>
<div id="pager"></div>
<br />

<link rel="stylesheet" type="text/css" media="screen" href="<?php echo fileurl('/lib/js/jqgrid/css/ui.jqgrid.css');?>" />
<script src="<?php echo fileurl('/lib/js/jqgrid/js/i18n/grid.locale-en.js');?>" type="text/javascript"></script>
<script src="<?php echo fileurl('/lib/js/jqgrid/js/jquery.jqGrid.min.js');?>" type="text/javascript"></script>

<script type="text/javascript">
$("#grid").jqGrid({
   url: '<?php echo adminaction('/operations/airportgrid');?>',
   datatype: 'json',
   mtype: 'GET',
   colNames: ['ICAO', 'IATA', 'Airport Name', 'City', 'Country', 'Region', 'TimeZone', 'Elevation', 'Fuel Cost', 'Lat', 'Lng', 'Edit'], // add column name if uncomment column model
   colModel : [
	{index: 'icao', name : 'icao', width: 20, sortable : true, align: 'center', search: 'true', searchoptions:{sopt:['eq','ne']}},
	{index: 'iata', name : 'iata', width: 20, sortable : true, align: 'center', searchoptions:{sopt:['in']}},
	{index: 'name', name : 'name', width: 65, sortable : true, align: 'left', searchoptions:{sopt:['in']}},
	{index: 'city', name : 'city', width: 40, sortable : true, align: 'left', searchoptions:{sopt:['in']}},
	{index: 'country', name : 'country', width: 30, sortable : true, align: 'center', searchoptions:{sopt:['in']}},
	{index: 'region', name : 'region', width: 20, sortable : true, align: 'center', searchoptions:{sopt:['in']}},
	{index: 'tz', name : 'tz', width: 40, sortable : true, align: 'center', searchoptions:{sopt:['in']}},
	{index: 'elevation', name : 'elevation', width: 20, sortable : true, align: 'right', search:false},
	{index: 'fuelprice', name : 'fuelprice', width: 20, sortable : true, align: 'center', search:false},
	{index: 'lat', name : 'lat', width: 20, sortable : true, align: 'center', search:false},
	{index: 'lng', name : 'lng', width: 20, sortable : true, align: 'center', search:false},
	{index: '', name : '', width: 40, sortable : true, align: 'center', search: false}
   ],
    pager: '#pager', rowNum: 25,
    sortname: 'icao', sortorder: 'asc',
    viewrecords: true, autowidth: true,
    height: '100%'
});

jQuery("#grid").jqGrid('navGrid','#pager', 
	{edit:false,add:false,del:false,search:true,refresh:true},
	{}, // edit 
	{}, // add 
	{}, //del 
	{multipleSearch:true} // search options 
); 

function editairport(icao)
{
	$('#jqmdialog').jqm({
		ajax:'<?php echo adminaction('/operations/editairport?icao=');?>'+icao,
		onHide: function(h)
		{
			h.o.remove(); // remove overlay
			h.w.fadeOut(100); // hide window 
			$("#grid").trigger("reloadGrid"); 
		}
	}).jqmShow();
}
</script>
<div align="center"><b><i><font color=red>Airport Name in red = Hub airport</font></i></b><br />
	*** Fuel Cost = Live -- is live fuel price if live fuel pricing is enabled and available - otherwise is default fuel price as set in local.config.php file. ***<br />
	*** You may set a fuel price for a specific airport by clicking edit and entering the fuel price. ***</div>
