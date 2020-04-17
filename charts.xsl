<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : charts.xsl
    Created on : 17 de abril de 2020, 18:05
    Author     : etisv
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>charts.xsl</title>
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"></link>

                <!-- jQuery library -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

                <!-- Popper JS -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

                <!-- Latest compiled JavaScript -->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
                <link rel="stylesheet" href="css/styles.css"></link>
                
            </head>
            <body>
                <div class="container">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Date</th>
                                <th>New cases</th>
                                <th>New deaths</th>
                                <th>Population</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="/records/record" >
                                <tr>
                                    <td>
                                        <xsl:value-of select="dateRep"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="cases"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="deaths"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="popData2018"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
