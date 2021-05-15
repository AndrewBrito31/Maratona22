<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/report">
		<h4>Tempo em Lisboa</h4>
		<h4><xsl:value-of select="/report/forecast/land[@name='Lisboa']/landWeather/currentWeather/symbolDesc"/> | Mínima: <xsl:value-of select="/report/forecast/land[@name='Lisboa']/landWeather/temp/tempMin"/>º 
		| Máxima: <xsl:value-of select="/report/forecast/land[@name='Lisboa']/landWeather/temp/tempMax"/>º</h4>
    </xsl:template>
</xsl:stylesheet>
