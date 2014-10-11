<!DOCTYPE transform [
  <!ENTITY % w3centities-f PUBLIC "-//W3C//ENTITIES Combined Set//EN//XML"
      "http://www.w3.org/2003/entities/2007/w3centities-f.ent">
  %w3centities-f;
]>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:atom="http://www.w3.org/2005/Atom"
>
<xsl:param name="domain">dropbox.algorist.nl</xsl:param>
<xsl:param name="include_atom" />
<xsl:param name="include_photos" />
<xsl:output
	method="xml"
	indent="yes"
/>

	<xsl:template match="/">
		<xsl:processing-instruction name="xml-stylesheet">
			<xsl:text>type="text/xsl" href="lib/opml2html/xsl/opml2html2.xsl"</xsl:text>
		</xsl:processing-instruction>
		<xsl:text>
</xsl:text>
		<xsl:apply-templates select="html" />
	</xsl:template>

	<xsl:template match="html">
		<xsl:element name="opml">
			<xsl:attribute name="version">2.0</xsl:attribute>
		<xsl:apply-templates select="head" />
		<xsl:apply-templates select="body" />
		</xsl:element>
	</xsl:template>

	<xsl:template match="head">
		<xsl:copy>
			<xsl:apply-templates select="title" />
			<xsl:apply-templates select="style" />

			<ownerName><xsl:if test="$include_photos"><xsl:value-of select="document($include_atom)/atom:entry/atom:author/atom:name" /></xsl:if></ownerName>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="title">
		<xsl:copy>
			<xsl:copy-of select="text()" />
		</xsl:copy>
	</xsl:template>

	<xsl:template match="style">
		<xsl:copy>
			<xsl:copy-of select="@*" />
			<xsl:copy-of select="text()" xml:space="preserve" />
		</xsl:copy>
	</xsl:template>

	<xsl:template match="body">
		<xsl:copy>
			<xsl:apply-templates select="@*|text()" />
			<xsl:if test="$include_photos">
				<outline type="include" url="{$include_photos}" />
			</xsl:if>
			<xsl:apply-templates select="node()" />
		</xsl:copy>
	</xsl:template>

	<xsl:template match="h1 | h2 | h3 | h4 | h5 | h6">
		<xsl:element name="outline">
			<xsl:attribute name="type">header</xsl:attribute>
			<xsl:apply-templates select="@*|text()"/>
			<xsl:apply-templates select="*"/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="p">
		<xsl:element name="outline">
			<xsl:apply-templates select="@*|text()"/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="dl">
		<xsl:element name="outline">
			<xsl:attribute name="text">#glossary</xsl:attribute>
			<xsl:apply-templates select="dd"><xsl:sort select="text()" /></xsl:apply-templates>
		</xsl:element>
	</xsl:template>

	<xsl:template match="dd">
		<xsl:element name="outline">
			<xsl:copy-of select="@class" />
			<xsl:attribute name="text">[<xsl:value-of select="." />]</xsl:attribute>
			<xsl:apply-templates select="@*|text()|node()" />
			<xsl:element name="outline">
				<xsl:attribute name="icon"><xsl:value-of select="preceding-sibling::dt[1]" /></xsl:attribute>
				<xsl:attribute name="text">
					<xsl:choose>
						<xsl:when test="@class='adjective'">
							<xsl:call-template name="adjective" mode="encoded">
								<xsl:with-param name="content">&lt;i class=&quot;glyphicon glyphicon-<xsl:value-of select="preceding-sibling::dt[1]" />&quot;&gt;&lt;/i&gt;&lt;span class=&quot;sr-only&quot;&gt;<xsl:value-of select="." />&lt;/span&gt;</xsl:with-param>
							</xsl:call-template>
						</xsl:when>
						<xsl:when test="@class='verb'">
							<xsl:call-template name="verb" mode="encoded">
								<xsl:with-param name="content">&lt;i class=&quot;glyphicon glyphicon-<xsl:value-of select="preceding-sibling::dt[1]" />&quot;&gt;&lt;/i&gt;&lt;span class=&quot;sr-only&quot;&gt;<xsl:value-of select="." />&lt;/span&gt;</xsl:with-param>
							</xsl:call-template>
						</xsl:when>
						<xsl:otherwise>&lt;i class=&quot;glyphicon glyphicon-<xsl:value-of select="preceding-sibling::dt[1]" />&quot;&gt;&lt;/i&gt;&lt;span class=&quot;sr-only&quot;&gt;<xsl:value-of select="." />&lt;/span&gt;</xsl:otherwise>
					</xsl:choose>
				</xsl:attribute>
				<xsl:apply-templates select="@*|text()|node()" />
			</xsl:element>
		</xsl:element>
	</xsl:template>

	<xsl:template name="adjective" mode="encoded"><xsl:param name="content" />&lt;sub&gt;<xsl:value-of select="$content" />&lt;/sub&gt;</xsl:template>
	<xsl:template name="verb" mode="encoded"><xsl:param name="content" />&lt;sup&gt;<xsl:value-of select="$content" />&lt;/sup&gt;</xsl:template>
<!-- 
	<xsl:template match="@class">
		<xsl:copy />
	</xsl:template>
 -->

<!-- 
	<xsl:template match="text()"><xsl:attribute name="text"><xsl:copy-of select="./text()" xml:space="preserve"/></xsl:attribute></xsl:template>
 -->
	
	<xsl:template match="@*|text()|node()">
		<xsl:apply-templates select="@*|text()|node()" />
	</xsl:template>
	
</xsl:stylesheet>