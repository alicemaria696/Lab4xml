<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:res="http://www.example.com/restaurant"
                exclude-result-prefixes="res">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Restaurant Information</title>
                <style>
                    table { width: 80%; margin: 20px auto; border-collapse: collapse; }
                    th, td { border: 1px solid #000; padding: 10px; text-align: left; }
                    th { background-color: #f2f2f2; color: black }
                    h1 { text-align: center; }
                    .section-header { background-color: #333; color: white; }
                </style>
            </head>
            <body>
                <h1>Restaurant Information</h1>

                <!-- Company Information -->
                <table>
                    <tr class="section-header">
                        <th colspan="1">Company</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="/res:Restaurant/res:Company/res:CompanyName"/></td>
                    </tr>
                </table>

                <br/>

                <!-- Locations -->
                <table>
                    <tr class="section-header">
                        <th colspan="1">Locations</th>
                    </tr>
                    <xsl:for-each select="/res:Restaurant/res:Locations/res:Location">
                        <tr>
                            <td><xsl:value-of select="."/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <br/>

                <!-- Cafes -->
                <table>
                    <tr class="section-header">
                        <th colspan="2">Cafes and Hours</th>
                    </tr>
                    <tr>
                        <th>Cafe Name</th>
                        <th>Hours</th>
                    </tr>
                    <xsl:for-each select="/res:Restaurant/res:Cafes/res:Cafe">
                        <tr>
                            <td><xsl:value-of select="res:CafeName"/></td>
                            <td><xsl:value-of select="res:OpeningHours"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <br/>

                <!-- Menu Types -->
                <table>
                    <tr class="section-header">
                        <th colspan="1">Menu Types</th>
                    </tr>
                    <xsl:for-each select="/res:Restaurant/res:Menu/res:FoodType">
                        <tr>
                            <td><xsl:value-of select="."/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <br/>

                <!-- Food Items -->
                <table>
                    <tr class="section-header">
                        <th colspan="2">Food Items</th>
                    </tr>
                    <tr>
                        <th>Name</th>
                        <th>Cost</th>
                    </tr>
                    <xsl:for-each select="/res:Restaurant/res:FoodItems/res:FoodItem">
                        <tr>
                            <td><xsl:value-of select="res:Name"/></td>
                            <td><xsl:value-of select="res:Cost"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <br/>

                <!-- Ambience -->
                <table>
                    <tr class="section-header">
                        <th colspan="1">Ambience Types</th>
                    </tr>
                    <xsl:for-each select="/res:Restaurant/res:Ambience/res:Type">
                        <tr>
                            <td><xsl:value-of select="."/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <br/>

                <!-- Travel Options -->
                <table>
                    <tr class="section-header">
                        <th colspan="3">Travel Options</th>
                    </tr>
                    <tr>
                        <th>Type</th>
                        <th>Destination</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="/res:Restaurant/res:TravelOptions/res:TravelType">
                        <xsl:for-each select="res:Destination">
                            <tr>
                                <td><xsl:value-of select="parent::res:TravelType/@type"/></td>
                                <td><xsl:value-of select="."/></td>
                                <td><xsl:value-of select="following-sibling::res:Price[1]"/></td>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>

                <br/>

                <!-- Payment Methods -->
                <table>
                    <tr class="section-header">
                        <th colspan="1">Payment Methods</th>
                    </tr>
                    <xsl:for-each select="/res:Restaurant/res:PaymentMethods/res:PaymentMode">
                        <tr>
                            <td><xsl:value-of select="."/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <br/>

                <!-- Discounts -->
                <table>
                    <tr class="section-header">
                        <th colspan="1">Discounts</th>
                    </tr>
                    <xsl:for-each select="/res:Restaurant/res:Discounts/res:DiscountVoucher">
                        <tr>
                            <td><xsl:value-of select="."/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
