<?xml version="1.0" encoding="UTF-8"?>
<html xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xsl:version="1.0">
  <head>
    <title>BookStore 23</title>
  </head>
  <body>
    <h1>Books</h1>
      <table border="1">
        <tr>
          <td><b> Author </b></td>
          <td><b> Title  </b></td>
          <td><b> Rating </b></td>
          <td><b> Price  </b></td>
        </tr>
        <xsl:for-each select="//newAuthor">
          <td> <xsl:value-of select="@name"/> </td>
          <xsl:for-each select="./newBook">
            <tr>
              <td></td>
              <td> <xsl:value-of select="./title"/> </td>
              <td> <xsl:value-of select="./rating"/> </td>
              <td> <xsl:value-of select="./price"/> </td>
            </tr>
          </xsl:for-each>
        </xsl:for-each>
      </table>
  </body>
</html>