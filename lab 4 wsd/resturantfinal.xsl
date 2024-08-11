<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Root template to match the document root -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Restaurant Information</title>
        <style>
          table { border-collapse: collapse; width: 100%; }
          th, td { border: 1px solid black; padding: 8px; text-align: left; }
          th { background-color: #f2f2f2; }
        </style>
      </head>
      <body>
        <h1>Restaurant Information</h1>

        <!-- Table for Place Names -->
        <h2>Place Names</h2>
        <table>
          <tr><th>Place</th></tr>
          <xsl:for-each select="resturant/placename/place">
            <tr>
              <td><xsl:value-of select="."/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Table for Cafe Names and Times -->
        <h2>Cafes and Times</h2>
        <table>
          <tr><th>Cafe</th><th>Time</th></tr>
          <xsl:for-each select="resturant/cafename">
            <xsl:for-each select="cafe">
              <tr>
                <td><xsl:value-of select="."/></td>
                <td><xsl:value-of select="../time[position() = current()/position()]"/></td>
              </tr>
            </xsl:for-each>
          </xsl:for-each>
        </table>

        <!-- Table for Menu -->
        <h2>Menu</h2>
        <table>
          <tr><th>Food Type</th></tr>
          <xsl:for-each select="resturant/menu/foodtype">
            <tr>
              <td><xsl:value-of select="."/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Table for Food Items -->
        <h2>Food Items</h2>
        <table>
          <tr><th>Name</th><th>Cost</th><th>Type</th></tr>
          <xsl:for-each select="resturant/food/fooditem">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="cost"/></td>
              <td><xsl:value-of select="@type"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Table for Ambience -->
        <h2>Ambience</h2>
        <table>
          <tr><th>Type</th></tr>
          <xsl:for-each select="resturant/Ambience/type">
            <tr>
              <td><xsl:value-of select="."/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Table for Travel -->
        <h2>Travel</h2>
        <table>
          <tr><th>Travel Type</th><th>Name</th><th>Price</th><th>Own</th></tr>
          <xsl:for-each select="resturant/travel/traveltype">
            <xsl:choose>
              <xsl:when test="name">
                <xsl:for-each select="name">
                  <tr>
                    <td><xsl:value-of select="ancestor::traveltype/@type"/></td>
                    <td><xsl:value-of select="."/></td>
                    <td><xsl:value-of select="../price[position() = current()/position()]"/></td>
                    <td></td>
                  </tr>
                </xsl:for-each>
              </xsl:when>
              <xsl:when test="own">
                <xsl:for-each select="own">
                  <tr>
                    <td><xsl:value-of select="ancestor::traveltype/@type"/></td>
                    <td></td>
                    <td></td>
                    <td><xsl:value-of select="."/></td>
                  </tr>
                </xsl:for-each>
              </xsl:when>
            </xsl:choose>
          </xsl:for-each>
        </table>

        <!-- Table for Payment Modes -->
        <h2>Payment Modes</h2>
        <table>
          <tr><th>Mode</th></tr>
          <xsl:for-each select="resturant/payment/mode">
            <tr>
              <td><xsl:value-of select="."/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Table for Discounts -->
        <h2>Discounts</h2>
        <table>
          <tr><th>Voucher</th></tr>
          <xsl:for-each select="resturant/discount/voucher">
            <tr>
              <td><xsl:value-of select="."/></td>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
