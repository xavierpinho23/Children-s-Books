<?xml version="1.0" encoding="UTF-8"?>
<html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xsl:version="1.0">
  <head>
    <title>BookStore 23</title>
  </head>
  <body>
    <h1>Books</h1>
      <table border="2">
        <tr bgcolor="#008000">
          <td style="text-align:center"><b> Author </b></td>
          <td style="text-align:center"><b> Title  </b></td>
          <td style="text-align:center"><b> Rating </b></td>
          <td style="text-align:center"><b> Price  </b></td>
          <td style="text-align:center"><b> Bestsellers Rank  </b></td>
          <td style="text-align:center"><b> Language </b></td>
          <td style="text-align:center"><b> Publication City </b></td>
          <td style="text-align:center"><b> Publication Date </b></td>
          <td style="text-align:center"><b> Publisher </b></td>
          <td style="text-align:center"><b> Nº of Votes </b></td>
        </tr>
        <xsl:for-each select="//newAuthor">
          <td bgcolor="#DEB887"> <xsl:value-of select="@name"/> </td>
          <xsl:for-each select="./newBook">
            <tr>
              <td></td>
              <td style="text-align:center"> <xsl:value-of select="./title"/> </td>
              <td style="text-align:center"> <xsl:value-of select="./rating"/> </td>
              <td style="text-align:center"> <xsl:value-of select="./price"/> </td>
              <td style="text-align:center"> <xsl:value-of select="./votes"/> </td>
              <xsl:for-each select="product_details">

                <td style="text-align:center"> <xsl:value-of select="./bestsellers_rank"/> </td>
                <td style="text-align:center"> <xsl:value-of select="./language"/> </td>
                <td style="text-align:center"> <xsl:value-of select="./publication_city"/> </td>
                <td style="text-align:center"> <xsl:value-of select="./publication_date"/> </td>
                <td style="text-align:center"> <xsl:value-of select="./publisher"/> </td>
              </xsl:for-each>
            </tr>
          </xsl:for-each>
        </xsl:for-each>
      </table>

    <h1> Statistics </h1>
    <font size="4px">
      Nº of distinct authors:
      <xsl:value-of select="/newCatalog/statistics/numberAuthors" />
    </font>

    <h3> Authors with highest bestsellers rank </h3>
    <table border="2">
      <tr bgcolor="#008000">
        <td style="text-align:center"><b> Authors with highest rank </b></td>
      </tr>
        <tr>
          <xsl:for-each select="/newCatalog/statistics//NAuthors">
            <tr>
              <td style="text-align:center">
                <xsl:value-of select="."/>
              </td>
            </tr>
          </xsl:for-each>
        </tr>
    </table>
  </body>
</html>