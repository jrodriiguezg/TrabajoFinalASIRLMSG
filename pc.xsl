<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Catálogo de Productos</title>
        <style type="text/css">
          body { font-family: sans-serif; margin: 2em; background-color: #f4f4f4; color: #333; }
          .producto { background-color: #fff; border: 1px solid #ddd; padding: 1em; margin-bottom: 1em; border-radius: 5px; }
          h2 { color: #007bff; margin-top: 0; }
          .precio { font-weight: bold; color: #28a745; }
        </style>
      </head>
      <body>
        <h1>Catálogo de Productos</h1>
        <xsl:for-each select="productos/producto">
          <div class="producto">
            <h2><xsl:value-of select="nombre"/></h2>
            <p><xsl:value-of select="descripcion"/></p>
            <p class="precio">Precio: <xsl:value-of select="precio"/> <xsl:value-of select="precio/@moneda"/></p>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
