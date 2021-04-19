<?php if(!defined('IN_PHPVMS') && IN_PHPVMS !== true) { die(); } ?>
<h3><?php echo $title?></h3>
<form id="flashForm" action="<?php echo adminaction('/operations/airports');?>" method="post">
<p><strong>* - denotes required field</strong></p>
<dl>
<dt>Airport ICAO Code *</dt>
<dd><input id="airporticao" name="icao" type="text" value="<?php echo $airport->icao?>" /> 
	<button id="lookupicao" onclick="lookupICAO(); return false;">Look Up</button>
	<p>If airport does not have a <b>4 digit ICAO</b> you will need to enter all info manually</p>
</dd>

<dt></dt>
<dd><div id="statusbox"></div></dd>
<dt>Airport IATA code</dt>
<dd><input id="airportiata" name="iata" type="text" value="<?php echo $airport->iata?>" /></dd>

<dt>Airport Name *</dt>
<dd><input id="airportname" name="name" type="text" value="<?php echo $airport->name?>" /></dd>

<dt>City</dt>
<dd><input id="airportcity" name="city" type="text" value="<?php echo $airport->city?>" /></dd>

<dt>Country *</dt>
<dd><input id="airportcountry" name="country" type="text" value="<?php echo $airport->country?>"  /></dd>

<dt>Region</dt>
<dd><input id="airportregion" name="region" type="text" value="<?php echo $airport->region?>" /></dd>

<dt>Timezone</dt>
<dd><input id="airporttimezone" name="tz" type="text" value="<?php echo $airport->tz?>" /></dd>

<dt>Field Elevation</dt>
<dd><input id="airportelevation" name="elevation" type="text" value="<?php echo $airport->elevation?>" /></dd>

<dt>Latitude *</dt>
<dd><input id="airportlat" name="lat" type="text" value="<?php echo $airport->lat?>" /></dd>

<dt>Longitude *</dt>
<dd><input id="airportlong" name="lon" type="text" value="<?php echo $airport->lng?>" /></dd>

<dt>Chart Link</dt>
<dd><input id="chartlink" name="chartlink" type="text" value="<?php echo $airport->chartlink?>" /></dd>

<dt>Fuel Price</dt>
<dd><input id="fuelprice" name="fuelprice" type="text" value="<?php echo $airport->fuelprice?>" />
<p><b>This is the price per <?php echo Config::Get('LIQUID_UNIT_NAMES', Config::Get('LiquidUnit'))?></b> (as set in local.config.php).<br /> 
    Leave blank or 0 (zero) to use the default value of <?php echo Config::Get('FUEL_DEFAULT_PRICE');?> (when live pricing is disabled).</p>
</dd>

<dt>Hub</dt>
<?php
	if($airport->hub == '1')
		$checked = 'checked ';
	else
		$checked = '';
?>
<dd><input name="hub" type="checkbox" value="true" <?php echo $checked?>/></dd>

<dt></dt>
<dd><input type="hidden" name="action" value="<?php echo $action?>" />
	<input type="submit" name="submit" value="<?php echo $title?>" />
</dd>
</dl>
</form>
