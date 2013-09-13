<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" version="1.0" encoding="utf-8" omit-xml-declaration="no" standalone="no" indent="yes" />
	<xsl:template match="updates">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<title>ULN Security Updates</title>
				<link rel="stylesheet" type="text/css" href="style.css" />
				</head>
			<body>
				<h1>ULN Security Updates</h1>
				<table id="hor-minimalist-a" summary="ULN Security Updates" border="0">
					<colgroup>
						<col width="30%" align="center" />
						<col width="70%" align="center" />
					</colgroup>
					<thead>
						<tr>
							<th>Identifier</th>
							<th>Description</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="update[@type='security']">
							<xsl:sort select="id" />
							<tr>
								<td>
									<p>
										<xsl:value-of select="id" />
									</p>
								</td>
								<td>
									<p>
										<xsl:value-of select="title" />
									</p>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
