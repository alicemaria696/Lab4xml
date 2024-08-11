<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.abc.com/resturant"
                version="1.0">

  <xsl:output method="html" indent="yes"/>

  <!-- Root template -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Restaurant Information</title>
        <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          table, th, td {
            border: 1px solid black;
          }
          th, td {
            padding: 8px;
            text-align: left;
          }
          th {
            background-color: #f2f2f2;
          }
        </style>
      </head>
      <body>
        <h1>Restaurant Details</h1>

        <!-- Places Table -->
        <h2>Place Names</h2>
        <table>
          <thead>
            <tr>
              <th>Place</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="resturant/placename/place">
              <tr>
                <td><xsl:value-of select="."/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>

        <!-- Cafes Table -->
        <h2>Cafes</h2>
        <table>
          <thead>
            <tr>
              <th>Cafe</th>
              <th>Time</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="resturant/cafename">
              <tr>
                <td><xsl:value-of select="cafe"/></td>
                <td><xsl:value-of select="time"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>

        <!-- Menu Table -->
        <h2>Menu</h2>
        <table>
          <thead>
            <tr>
              <th>Food Type</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="resturant/menu/foodtype">
              <tr>
                <td><xsl:value-of select="."/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>

        <!-- Food Items Table -->
        <h2>Food Items</h2>
        <table>
          <thead>
            <tr>
              <th>Type</th>
              <th>Name</th>
              <th>Cost</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="resturant/food/fooditem">
              <tr>
                <td><xsl:value-of select="@type"/></td>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="cost"/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>

        <!-- Ambience Table -->
        <h2>Ambience Types</h2>
        <table>
          <thead>
            <tr>
              <th>Ambience Type</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="resturant/Ambience/type">
              <tr>
                <td><xsl:value-of select="."/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>

        <!-- Travel Options Table -->
        <h2>Travel Options</h2>
        <table>
          <thead>
            <tr>
              <th>Type</th>
              <th>Name</th>
              <th>Price</th>
              <th>Own</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="resturant/travel/traveltype">
              <tr>
                <td><xsl:value-of select="@type"/></td>
                <td>
                  <xsl:for-each select="name">
                    <xsl:value-of select=""/> 
                    <xsl:if test="position() != last()">, </xsl:if>
                  </xsl:for-each>
                </td>
                <td>
                  <xsl:for-each select="price">
                    <xsl:value-of select=""/>
                    <xsl:if test="position() != last()">, </xsl:if>
                  </xsl:for-each>
                </td>
                <td>
                  <xsl:for-each select="own">
                    <xsl:value-of select=""/>
                    <xsl:if test="position() != last()">, </xsl:if>
                  </xsl:for-each>
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>

        <!-- Payment Methods Table -->
        <h2>Payment Methods</h2>
        <table>
          <thead>
            <tr>
              <th>Payment Method</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="resturant/payment/mode">
              <tr>
                <td><xsl:value-of select="."/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>

        <!-- Discount Vouchers Table -->
        <h2>Discount Vouchers</h2>
        <table>
          <thead>
            <tr>
              <th>Voucher</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="resturant/discount/voucher">
              <tr>
                <td><xsl:value-of select="."/></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
