<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                version="1.0"
                xmlns:crypto="http://www.example.com/crypto">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Crypto Trading Data</title>
                <style>
                    table { border-collapse: collapse; width: 100%; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                </style>
            </head>
            <body>
                <h2>Resturant</h2>
                <table>
                    <tr>
                        <th>placename</th>
                        <th>cafename</th>
                        <th>menu</th>
                        <th>food</th>
                        <th>Ambience</th>
                        <th>travel</th>
                        <th>payment</th>
                        <th>discount</th>
                    </tr>
                    
                    <xsl:for-each select="//resturant">
                        <tr>
                            <td><xsl:value-of select="resturant:placename"/></td>
                            <td><xsl:value-of select="resturant:cafename"/></td>
                            <td><xsl:value-of select="resturant:food"/></td>
                            <td><xsl:value-of select="resturant:menu"/></td>
                            <td><xsl:value-of select="resturant:Amebience"/></td>
                            <td><xsl:value-of select="resturant:travel"/></td>
                            <td><xsl:value-of select="resturant:payment"/></td>
                            <td><xsl:value-of select="resturant:discount"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>