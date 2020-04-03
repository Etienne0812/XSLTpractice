<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : spain.xsl
    Created on : 3 de abril de 2020, 20:11
    Author     : etisv
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>

    
  
    <xsl:template match="/">
        <records>
            <xsl:for-each select="//record">
                <record>
                    <date>
                        <xsl:value-of select="dateRep"/>
                    </date>
                    <cases>
                        <xsl:value-of select="cases"/>
                    </cases>
                    <deaths>
                        <xsl:value-of select="deaths"/>
                    </deaths>
                    <population>
                        <xsl:value-of select="popData2018"/>
                    </population>
                </record>
            </xsl:for-each>
        </records>
    </xsl:template>

</xsl:stylesheet>
