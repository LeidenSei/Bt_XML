<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Danh sách người dùng</title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"/>
            </head>
            
            <body>
                <div class="container">
                    <h1>DANH SÁCH NGƯỜI DÙNG</h1>
                    <table class="table table-bordered">
                        <tr>
                            
                            <th>id</th>
                            <th>FirstName</th>
                            <th>LastName</th>
                            <th>Address</th>
                            <th>City</th>
                            <th>Email</th>
                            <th>StateProvinceCode</th>
                            <th>PostalCode</th>
                        </tr>
                        <xsl:for-each select="Customers/Customer">
                        <xsl:sort select="LastName" data-type="string" order="descending"/>
                            
                            
                            <tr>
                               
                                <td><xsl:apply-templates select="id"/></td>
                                <td><xsl:apply-templates select="FirstName"/></td>
                                <td><xsl:apply-templates select="LastName"/></td>
                                <td><xsl:apply-templates select="Address"/></td>
                                <td><xsl:apply-templates select="City"/></td>
                                <td><xsl:apply-templates select="Email"/></td>
                                <td><xsl:apply-templates select="StateProvinceCode"/></td>
                                <td><xsl:apply-templates select="PostalCode"/></td>
                                
                            </tr>
                            
                        </xsl:for-each>
                    </table>
                </div>
                
            </body>
            
        </html>
        
    </xsl:template>
    
    
    
</xsl:stylesheet>