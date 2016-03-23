<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>jQuery tablesorter 2.0 - Filter Widget External Search</title>

	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

	<!-- Demo stuff -->
	<link class="ui-theme" rel="stylesheet" href="css/jquery-ui.min.css">
	<link rel="stylesheet" href="css/jq.css">
	<link href="css/prettify.css" rel="stylesheet">
	<script src="js/prettify.js"></script>
	<script src="js/docs.js"></script>

	<!-- Tablesorter: required -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/abc/css/theme.blue.css">
	<script src="${pageContext.request.contextPath}/abc/js/jquery.tablesorter.js"></script>
	<script src="${pageContext.request.contextPath}/abc/js/widgets/widget-storage.js"></script>
	<script src="${pageContext.request.contextPath}/abc/js/widgets/widget-filter.js"></script>

	<script id="js">$(function() {
            
	var $table = $('table').tablesorter({
		theme: 'blue',
		widgets: ["zebra", "filter"],
		widgetOptions : {
			// filter_anyMatch replaced! Instead use the filter_external option
			// Set to use a jQuery selector (or jQuery object) pointing to the
			// external filter (column specific or any match)
			filter_external : '.search',
			// add a default type search to the first name column
			filter_defaultFilter: { 1 : '~{query}' },
			// include column filters
			filter_columnFilters: true,
			filter_placeholder: { search : 'Search...' },
			filter_saveFilters : true,
			filter_reset: '.reset'
		}
	});

	// make demo search buttons work
	$('button[data-column]').on('click', function(){
		var $this = $(this),
			totalColumns = $table[0].config.columns,
			col = $this.data('column'), // zero-based index or "all"
			filter = [];

		// text to add to filter
		filter[ col === 'all' ? totalColumns : col ] = $this.text();
		$table.trigger('search', [ filter ]);
		return false;
	});

});</script>

</head>
<body>
<h1>${pageContext.request.contextPath}</h1>

<div id="demo"><input class="search" type="search" data-column="all"> (Match any column)<br>

<!-- targeted by the "filter_reset" option -->
<button type="button" class="reset">Reset Search</button>

<table class="tablesorter">
	<thead>
		<tr>
			<th>Rank</th>
			<th data-placeholder="Fuzzy search">First Name</th>
			<th>Last Name</th>
			<th>Age</th>
			<th>Total</th>
			<th>Discount</th>
			<th>Date</th>
		</tr>
	</thead>
	<tbody>
		<tr><td>1</td><td>Philip Aaron</td><td>Johnson Sr Esq</td><td>25</td><td>$5.95</td><td>22%</td><td>Jun 26, 2004 7:22 AM</td></tr>
		<tr><td>11</td><td>Aaron</td><td>Hibert</td><td>12</td><td>$2.99</td><td>5%</td><td>Aug 21, 2009 12:21 PM</td></tr>
		<tr><td>12</td><td>Brandon Clark</td><td>Henry Jr</td><td>51</td><td>$42.29</td><td>18%</td><td>Oct 13, 2000 1:15 PM</td></tr>
		<tr><td>111</td><td>Peter</td><td>Parker</td><td>28</td><td>$9.99</td><td>20%</td><td>Jul 6, 2006 8:14 AM</td></tr>
		<tr><td>21</td><td>John</td><td>Hood</td><td>33</td><td>$19.99</td><td>25%</td><td>Dec 10, 2002 5:14 AM</td></tr>
		<tr><td>013</td><td>Clark</td><td>Kent Sr.</td><td>18</td><td>$15.89</td><td>44%</td><td>Jan 12, 2003 11:14 AM</td></tr>
		<tr><td>005</td><td>Bruce</td><td>Almighty Esq</td><td>45</td><td>$153.19</td><td>44%</td><td>Jan 18, 2021 9:12 AM</td></tr>
		<tr><td>10</td><td>Alex</td><td>Dumass</td><td>13</td><td>$5.29</td><td>4%</td><td>Jan 8, 2012 5:11 PM</td></tr>
		<tr><td>16</td><td>Jim</td><td>Franco</td><td>24</td><td>$14.19</td><td>14%</td><td>Jan 14, 2004 11:23 AM</td></tr>
		<tr><td>166</td><td>Bruce Lee</td><td>Evans</td><td>22</td><td>$13.19</td><td>11%</td><td>Jan 18, 2007 9:12 AM</td></tr>
		<tr><td>100</td><td>Brenda Lee</td><td>McMasters</td><td>18</td><td>$55.20</td><td>15%</td><td>Feb 12, 2010 7:23 PM</td></tr>
		<tr><td>55</td><td>Dennis</td><td>Bronson</td><td>65</td><td>$123.00</td><td>32%</td><td>Jan 20, 2001 1:12 PM</td></tr>
		<tr><td>9</td><td>Martha</td><td>delFuego</td><td>25</td><td>$22.09</td><td>17%</td><td>Jun 11, 2011 10:55 AM</td></tr>
	</tbody>
</table></div>


</body>
</html>
