<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/report">
		<br/>
		<b>Mínima: </b>
		<xsl:value-of select="/report/forecast/land[@name='Lisboa']/landWeather/temp/tempMin"/>
		<br/>
		<b>Máxima: </b>
		<xsl:value-of select="/report/forecast/land[@name='Lisboa']/landWeather/temp/tempMax"/>
		<br/>
		<b>Estado: </b>
		<xsl:value-of select="/report/forecast/land[@name='Lisboa']/landWeather/currentWeather/symbolDesc"/>
    </xsl:template>
</xsl:stylesheet>
