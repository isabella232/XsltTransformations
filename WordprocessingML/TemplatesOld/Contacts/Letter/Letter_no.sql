BEGIN_SETUP:

/******* XSLT Transformation Insert **********/
DECLARE @Name NVARCHAR(32);
	SET @Name = N'Brev'

DECLARE @FolderName NVARCHAR(50);
	SET @FolderName = N'Contacts';

DECLARE @LangCode NVARCHAR(256);
	SET @LangCode = N'no';
	
DECLARE @Namespace NVARCHAR(256);
	SET @Namespace = N'urn:eway:document-schemas:export-wml-contact';

DECLARE @TransformationVersion INT
	SET @TransformationVersion = 2; -- Only historical Proposals have version = 1, default is 2

DECLARE @DuplicateToOtherLanguages INT
	SET @DuplicateToOtherLanguages = 0	-- Set to 1 if you want to copy the same definition to other languages

DECLARE @Definition NVARCHAR(MAX);
	SET @Definition = N'<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2" xmlns:ns0="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:ns8="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:ns15="urn:eway:document-schemas:export-wml-contact">
  <xsl:output method="xml" encoding="UTF-8" standalone="yes" />
  <xsl:template match="/">
    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Word.Document"</xsl:text>
    </xsl:processing-instruction>
    <w:wordDocument xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2" xmlns:ns0="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:ns8="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:ns15="urn:eway:document-schemas:export-wml-contact" w:macrosPresent="no" w:embeddedObjPresent="no" w:ocxPresent="no" xml:space="preserve">
      <w:ignoreElements w:val="http://schemas.microsoft.com/office/word/2003/wordml/sp2" />
      <o:DocumentProperties>
        <o:Title>Brev</o:Title>
        <o:Author>Jan Lalinský</o:Author>
        <o:LastAuthor>jkorpasova</o:LastAuthor>
        <o:Revision>4</o:Revision>
        <o:TotalTime>18</o:TotalTime>
        <o:Created>2017-05-02T10:22:00Z</o:Created>
        <o:LastSaved>2017-05-02T14:03:00Z</o:LastSaved>
        <o:Pages>1</o:Pages>
        <o:Words>45</o:Words>
        <o:Characters>271</o:Characters>
        <o:Lines>2</o:Lines>
        <o:Paragraphs>1</o:Paragraphs>
        <o:CharactersWithSpaces>315</o:CharactersWithSpaces>
        <o:Version>11.0000</o:Version>
      </o:DocumentProperties>
      <w:fonts>
        <w:defaultFonts w:ascii="Cambria" w:fareast="MS Mincho" w:h-ansi="Cambria" w:cs="Times New Roman" />
        <w:font w:name="MS Mincho">
          <w:altName w:val="ＭＳ 明朝" />
          <w:panose-1 w:val="02020609040205080304" />
          <w:charset w:val="80" />
          <w:family w:val="Modern" />
          <w:pitch w:val="fixed" />
          <w:sig w:usb-0="E00002FF" w:usb-1="6AC7FDFB" w:usb-2="00000012" w:usb-3="00000000" w:csb-0="0002009F" w:csb-1="00000000" />
        </w:font>
        <w:font w:name="Tahoma">
          <w:panose-1 w:val="020B0604030504040204" />
          <w:charset w:val="EE" />
          <w:family w:val="Swiss" />
          <w:pitch w:val="variable" />
          <w:sig w:usb-0="E1003EFF" w:usb-1="C000605B" w:usb-2="00000029" w:usb-3="00000000" w:csb-0="000101FF" w:csb-1="00000000" />
        </w:font>
        <w:font w:name="Cambria">
          <w:panose-1 w:val="02040503050406030204" />
          <w:charset w:val="EE" />
          <w:family w:val="Roman" />
          <w:pitch w:val="variable" />
          <w:sig w:usb-0="E00002FF" w:usb-1="400004FF" w:usb-2="00000000" w:usb-3="00000000" w:csb-0="0000019F" w:csb-1="00000000" />
        </w:font>
        <w:font w:name="Calibri">
          <w:panose-1 w:val="020F0502020204030204" />
          <w:charset w:val="EE" />
          <w:family w:val="Swiss" />
          <w:pitch w:val="variable" />
          <w:sig w:usb-0="E00002FF" w:usb-1="4000ACFF" w:usb-2="00000001" w:usb-3="00000000" w:csb-0="0000019F" w:csb-1="00000000" />
        </w:font>
        <w:font w:name="@MS Mincho">
          <w:panose-1 w:val="02020609040205080304" />
          <w:charset w:val="80" />
          <w:family w:val="Modern" />
          <w:pitch w:val="fixed" />
          <w:sig w:usb-0="E00002FF" w:usb-1="6AC7FDFB" w:usb-2="00000012" w:usb-3="00000000" w:csb-0="0002009F" w:csb-1="00000000" />
        </w:font>
      </w:fonts>
      <w:styles>
        <w:versionOfBuiltInStylenames w:val="4" />
        <w:latentStyles w:defLockedState="off" w:latentStyleCount="156" />
        <w:style w:type="paragraph" w:default="on" w:styleId="Normln">
          <w:name w:val="Normal" />
          <wx:uiName wx:val="Normální" />
          <w:rsid w:val="00F43C00" />
          <w:rPr>
            <w:rFonts w:ascii="Calibri" w:h-ansi="Calibri" />
            <wx:font wx:val="Calibri" />
            <w:sz-cs w:val="24" />
            <w:lang w:val="EN-US" w:fareast="EN-US" w:bidi="AR-SA" />
          </w:rPr>
        </w:style>
        <w:style w:type="character" w:default="on" w:styleId="Standardnpsmoodstavce">
          <w:name w:val="Default Paragraph Font" />
          <wx:uiName wx:val="Standardní písmo odstavce" />
          <w:semiHidden />
        </w:style>
        <w:style w:type="table" w:default="on" w:styleId="Normlntabulka">
          <w:name w:val="Normal Table" />
          <wx:uiName wx:val="Normální tabulka" />
          <w:semiHidden />
          <w:rPr>
            <wx:font wx:val="Cambria" />
          </w:rPr>
          <w:tblPr>
            <w:tblInd w:w="0" w:type="dxa" />
            <w:tblCellMar>
              <w:top w:w="0" w:type="dxa" />
              <w:left w:w="108" w:type="dxa" />
              <w:bottom w:w="0" w:type="dxa" />
              <w:right w:w="108" w:type="dxa" />
            </w:tblCellMar>
          </w:tblPr>
        </w:style>
        <w:style w:type="list" w:default="on" w:styleId="Bezseznamu">
          <w:name w:val="No List" />
          <wx:uiName wx:val="Bez seznamu" />
          <w:semiHidden />
        </w:style>
        <w:style w:type="table" w:styleId="Mkatabulky">
          <w:name w:val="Table Grid" />
          <wx:uiName wx:val="Mřížka tabulky" />
          <w:basedOn w:val="Normlntabulka" />
          <w:rsid w:val="002548F2" />
          <w:rPr>
            <wx:font wx:val="Cambria" />
          </w:rPr>
          <w:tblPr>
            <w:tblInd w:w="0" w:type="dxa" />
            <w:tblBorders>
              <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto" />
              <w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto" />
              <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto" />
              <w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto" />
              <w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto" />
              <w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto" />
            </w:tblBorders>
            <w:tblCellMar>
              <w:top w:w="0" w:type="dxa" />
              <w:left w:w="108" w:type="dxa" />
              <w:bottom w:w="0" w:type="dxa" />
              <w:right w:w="108" w:type="dxa" />
            </w:tblCellMar>
          </w:tblPr>
        </w:style>
        <w:style w:type="paragraph" w:styleId="Zhlav">
          <w:name w:val="header" />
          <wx:uiName wx:val="Záhlaví" />
          <w:basedOn w:val="Normln" />
          <w:link w:val="TopptekstTegn" />
          <w:rsid w:val="00553DEF" />
          <w:pPr>
            <w:pStyle w:val="Zhlav" />
            <w:tabs>
              <w:tab w:val="center" w:pos="4320" />
              <w:tab w:val="right" w:pos="8640" />
            </w:tabs>
          </w:pPr>
          <w:rPr>
            <wx:font wx:val="Calibri" />
          </w:rPr>
        </w:style>
        <w:style w:type="character" w:styleId="TopptekstTegn">
          <w:name w:val="Topptekst Tegn" />
          <w:basedOn w:val="Standardnpsmoodstavce" />
          <w:link w:val="Zhlav" />
          <w:rsid w:val="00553DEF" />
        </w:style>
        <w:style w:type="paragraph" w:styleId="Zpat">
          <w:name w:val="footer" />
          <wx:uiName wx:val="Zápatí" />
          <w:basedOn w:val="Normln" />
          <w:link w:val="BunntekstTegn" />
          <w:rsid w:val="00553DEF" />
          <w:pPr>
            <w:pStyle w:val="Zpat" />
            <w:tabs>
              <w:tab w:val="center" w:pos="4320" />
              <w:tab w:val="right" w:pos="8640" />
            </w:tabs>
          </w:pPr>
          <w:rPr>
            <wx:font wx:val="Calibri" />
          </w:rPr>
        </w:style>
        <w:style w:type="character" w:styleId="BunntekstTegn">
          <w:name w:val="Bunntekst Tegn" />
          <w:basedOn w:val="Standardnpsmoodstavce" />
          <w:link w:val="Zpat" />
          <w:rsid w:val="00553DEF" />
        </w:style>
        <w:style w:type="paragraph" w:styleId="Textbubliny">
          <w:name w:val="Balloon Text" />
          <wx:uiName wx:val="Text bubliny" />
          <w:basedOn w:val="Normln" />
          <w:link w:val="BobletekstTegn" />
          <w:rsid w:val="003C154C" />
          <w:pPr>
            <w:pStyle w:val="Textbubliny" />
          </w:pPr>
          <w:rPr>
            <w:rFonts w:ascii="Tahoma" w:h-ansi="Tahoma" w:cs="Tahoma" />
            <wx:font wx:val="Tahoma" />
            <w:sz w:val="16" />
            <w:sz-cs w:val="16" />
          </w:rPr>
        </w:style>
        <w:style w:type="character" w:styleId="BobletekstTegn">
          <w:name w:val="Bobletekst Tegn" />
          <w:link w:val="Textbubliny" />
          <w:rsid w:val="003C154C" />
          <w:rPr>
            <w:rFonts w:ascii="Tahoma" w:h-ansi="Tahoma" w:cs="Tahoma" />
            <w:sz w:val="16" />
            <w:sz-cs w:val="16" />
          </w:rPr>
        </w:style>
      </w:styles>
      <w:shapeDefaults>
        <o:shapedefaults v:ext="edit" spidmax="3074" />
        <o:shapelayout v:ext="edit">
          <o:idmap v:ext="edit" data="1" />
        </o:shapelayout>
      </w:shapeDefaults>
      <w:docPr>
        <w:view w:val="print" />
        <w:zoom w:percent="87" />
        <w:doNotEmbedSystemFonts />
        <w:attachedTemplate w:val="" />
        <w:defaultTabStop w:val="720" />
        <w:hyphenationZone w:val="425" />
        <w:punctuationKerning />
        <w:characterSpacingControl w:val="DontCompress" />
        <w:allowPNG />
        <w:validateAgainstSchema />
        <w:saveInvalidXML />
        <w:ignoreMixedContent />
        <w:alwaysShowPlaceholderText />
        <w:footnotePr>
          <w:footnote w:type="separator">
            <w:p wsp:rsidR="002452F2" wsp:rsidRDefault="002452F2" wsp:rsidP="00553DEF">
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:footnote>
          <w:footnote w:type="continuation-separator">
            <w:p wsp:rsidR="002452F2" wsp:rsidRDefault="002452F2" wsp:rsidP="00553DEF">
              <w:r>
                <w:continuationSeparator />
              </w:r>
            </w:p>
          </w:footnote>
        </w:footnotePr>
        <w:endnotePr>
          <w:endnote w:type="separator">
            <w:p wsp:rsidR="002452F2" wsp:rsidRDefault="002452F2" wsp:rsidP="00553DEF">
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:endnote>
          <w:endnote w:type="continuation-separator">
            <w:p wsp:rsidR="002452F2" wsp:rsidRDefault="002452F2" wsp:rsidP="00553DEF">
              <w:r>
                <w:continuationSeparator />
              </w:r>
            </w:p>
          </w:endnote>
        </w:endnotePr>
        <w:compat>
          <w:breakWrappedTables />
          <w:snapToGridInCell />
          <w:wrapTextWithPunct />
          <w:useAsianBreakRules />
          <w:dontGrowAutofit />
          <w:useFELayout />
        </w:compat>
        <wsp:rsids>
          <wsp:rsidRoot wsp:val="002548F2" />
          <wsp:rsid wsp:val="00030C7E" />
          <wsp:rsid wsp:val="000456F3" />
          <wsp:rsid wsp:val="00072F78" />
          <wsp:rsid wsp:val="0008107E" />
          <wsp:rsid wsp:val="00093539" />
          <wsp:rsid wsp:val="000D6AF0" />
          <wsp:rsid wsp:val="000F085E" />
          <wsp:rsid wsp:val="001114E6" />
          <wsp:rsid wsp:val="00137FF8" />
          <wsp:rsid wsp:val="00190F32" />
          <wsp:rsid wsp:val="001B629D" />
          <wsp:rsid wsp:val="001D03D6" />
          <wsp:rsid wsp:val="001D5D74" />
          <wsp:rsid wsp:val="002452F2" />
          <wsp:rsid wsp:val="002548F2" />
          <wsp:rsid wsp:val="00295B8B" />
          <wsp:rsid wsp:val="002C51D9" />
          <wsp:rsid wsp:val="002C58D6" />
          <wsp:rsid wsp:val="003379C1" />
          <wsp:rsid wsp:val="00353984" />
          <wsp:rsid wsp:val="003615F8" />
          <wsp:rsid wsp:val="003B1896" />
          <wsp:rsid wsp:val="003C154C" />
          <wsp:rsid wsp:val="004104E6" />
          <wsp:rsid wsp:val="004242FD" />
          <wsp:rsid wsp:val="0043707A" />
          <wsp:rsid wsp:val="00455CC2" />
          <wsp:rsid wsp:val="00464565" />
          <wsp:rsid wsp:val="004C4313" />
          <wsp:rsid wsp:val="004F3C96" />
          <wsp:rsid wsp:val="005270EA" />
          <wsp:rsid wsp:val="00534228" />
          <wsp:rsid wsp:val="00534CCF" />
          <wsp:rsid wsp:val="00553DEF" />
          <wsp:rsid wsp:val="00561690" />
          <wsp:rsid wsp:val="005D0C60" />
          <wsp:rsid wsp:val="005D728D" />
          <wsp:rsid wsp:val="005E40E1" />
          <wsp:rsid wsp:val="00603298" />
          <wsp:rsid wsp:val="00605CDA" />
          <wsp:rsid wsp:val="00631B20" />
          <wsp:rsid wsp:val="00633C87" />
          <wsp:rsid wsp:val="006473CE" />
          <wsp:rsid wsp:val="0066242D" />
          <wsp:rsid wsp:val="006627C9" />
          <wsp:rsid wsp:val="00680EFA" />
          <wsp:rsid wsp:val="00690CE4" />
          <wsp:rsid wsp:val="00696890" />
          <wsp:rsid wsp:val="006A0044" />
          <wsp:rsid wsp:val="006B74C4" />
          <wsp:rsid wsp:val="007431E8" />
          <wsp:rsid wsp:val="0079016E" />
          <wsp:rsid wsp:val="007916F8" />
          <wsp:rsid wsp:val="007B53E0" />
          <wsp:rsid wsp:val="007D657F" />
          <wsp:rsid wsp:val="007F27D6" />
          <wsp:rsid wsp:val="00825F43" />
          <wsp:rsid wsp:val="00895DEE" />
          <wsp:rsid wsp:val="008A1C7E" />
          <wsp:rsid wsp:val="008B513B" />
          <wsp:rsid wsp:val="008C65EF" />
          <wsp:rsid wsp:val="008F1F11" />
          <wsp:rsid wsp:val="008F2098" />
          <wsp:rsid wsp:val="0090522C" />
          <wsp:rsid wsp:val="009166D7" />
          <wsp:rsid wsp:val="009A5066" />
          <wsp:rsid wsp:val="009B19C1" />
          <wsp:rsid wsp:val="009C4F6B" />
          <wsp:rsid wsp:val="009E043D" />
          <wsp:rsid wsp:val="00A07852" />
          <wsp:rsid wsp:val="00A255BD" />
          <wsp:rsid wsp:val="00A25923" />
          <wsp:rsid wsp:val="00A76DC6" />
          <wsp:rsid wsp:val="00A97F9F" />
          <wsp:rsid wsp:val="00AB01AF" />
          <wsp:rsid wsp:val="00AB0C63" />
          <wsp:rsid wsp:val="00AE237D" />
          <wsp:rsid wsp:val="00B23BFF" />
          <wsp:rsid wsp:val="00B245AC" />
          <wsp:rsid wsp:val="00B362D0" />
          <wsp:rsid wsp:val="00B97885" />
          <wsp:rsid wsp:val="00C22486" />
          <wsp:rsid wsp:val="00C22604" />
          <wsp:rsid wsp:val="00C76EEB" />
          <wsp:rsid wsp:val="00CA4D27" />
          <wsp:rsid wsp:val="00CD3533" />
          <wsp:rsid wsp:val="00D12358" />
          <wsp:rsid wsp:val="00D64D52" />
          <wsp:rsid wsp:val="00D86EEC" />
          <wsp:rsid wsp:val="00D92D0D" />
          <wsp:rsid wsp:val="00DB4131" />
          <wsp:rsid wsp:val="00DB7653" />
          <wsp:rsid wsp:val="00DF21DA" />
          <wsp:rsid wsp:val="00E03514" />
          <wsp:rsid wsp:val="00E22D12" />
          <wsp:rsid wsp:val="00E615FC" />
          <wsp:rsid wsp:val="00E63ABF" />
          <wsp:rsid wsp:val="00EC4C90" />
          <wsp:rsid wsp:val="00EE5998" />
          <wsp:rsid wsp:val="00F102CA" />
          <wsp:rsid wsp:val="00F43C00" />
          <wsp:rsid wsp:val="00F736EF" />
          <wsp:rsid wsp:val="00FA0E72" />
          <wsp:rsid wsp:val="00FA3487" />
          <wsp:rsid wsp:val="00FA4F0D" />
          <wsp:rsid wsp:val="00FB2DE6" />
          <wsp:rsid wsp:val="00FD1AC8" />
          <wsp:rsid wsp:val="00FD7DEB" />
          <wsp:rsid wsp:val="00FF2518" />
        </wsp:rsids>
        <w:showXMLTags w:val="off" />
      </w:docPr>
      <w:body>
        <wx:sect>
          <wx:pBdrGroup>
            <wx:borders>
              <wx:bottom wx:val="solid" wx:bdrwidth="10" wx:space="1" wx:color="1F497D" />
            </wx:borders>
            <xsl:apply-templates select="ns15:Contact" />
            <w:sectPr wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidSect="005E40E1">
              <w:type w:val="continuous" />
              <w:pgSz w:w="11900" w:h="16840" />
              <w:pgMar w:top="720" w:right="720" w:bottom="720" w:left="709" w:header="708" w:footer="708" w:gutter="0" />
              <w:cols w:space="708" />
              <w:docGrid w:line-pitch="360" />
            </w:sectPr>
          </wx:pBdrGroup>
        </wx:sect>
      </w:body>
      <o:CustomDocumentProperties>
        <o:processingInstructions dt:dt="string"> <xsl:for-each select="processing-instruction()"><xsl:text>&lt;?</xsl:text><xsl:value-of select="name()" /><xsl:text> </xsl:text><xsl:value-of select="." /><xsl:text>?&gt;</xsl:text></xsl:for-each></o:processingInstructions>
      </o:CustomDocumentProperties>
    </w:wordDocument>
  </xsl:template>
  <xsl:template match="/ns15:Contact">
    <ns15:Contact>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00D64D52" wsp:rsidRDefault="00AB01AF" wsp:rsidP="003379C1">
        <w:pPr>
          <w:pBdr>
            <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="1" w:color="1F497D" />
          </w:pBdr>
          <w:rPr>
            <w:color w:val="1F497D" />
            <w:sz w:val="40" />
            <w:sz-cs w:val="40" />
          </w:rPr>
        </w:pPr>
        <w:r>
          <w:rPr>
            <w:color w:val="1F497D" />
            <w:sz w:val="40" />
            <w:sz-cs w:val="40" />
          </w:rPr> <w:t><xsl:text>Brev</xsl:text></w:t></w:r>
      </w:p>
      <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="002548F2" wsp:rsidP="003379C1">
        <w:pPr>
          <w:pBdr>
            <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="1" w:color="1F497D" />
          </w:pBdr>
          <w:rPr>
            <w:color w:val="1F497D" />
            <w:sz w:val="40" />
            <w:sz-cs w:val="40" />
          </w:rPr>
          <w:sectPr wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidSect="005E40E1">
            <w:ftr w:type="odd">
              <wx:pBdrGroup>
                <wx:borders>
                  <wx:top wx:val="solid" wx:bdrwidth="10" wx:space="1" wx:color="1F497D" />
                </wx:borders>
                <w:p wsp:rsidR="00553DEF" wsp:rsidRPr="00553DEF" wsp:rsidRDefault="00B362D0" wsp:rsidP="003379C1">
                  <w:pPr>
                    <w:pStyle w:val="Zpat" />
                    <w:pBdr>
                      <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="1" w:color="1F497D" />
                    </w:pBdr>
                    <w:tabs>
                      <w:tab w:val="clear" w:pos="4320" />
                      <w:tab w:val="clear" w:pos="8640" />
                      <w:tab w:val="center" w:pos="5103" />
                      <w:tab w:val="right" w:pos="10490" />
                    </w:tabs>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                  </w:pPr>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="begin" />
                  </w:r>
                  <w:r wsp:rsidR="003C154C">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:instrText> DATE  \@ "d.MM.yyyy"  \* MERGEFORMAT </w:instrText>
                  </w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="separate" />
                  </w:r>
                  <w:r wsp:rsidR="00DB4131">
                    <w:rPr>
                      <w:noProof />
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>2.05.2017</xsl:text></w:t></w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="end" />
                  </w:r>
                  <w:r wsp:rsidR="00553DEF" wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:tab wx:wTab="4260" wx:tlc="none" wx:cTlc="94" />
                  </w:r>
                  <w:r wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="begin" />
                  </w:r>
                  <w:r wsp:rsidR="00553DEF" wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:instrText> PAGE </w:instrText>
                  </w:r>
                  <w:r wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="separate" />
                  </w:r>
                  <w:r wsp:rsidR="00EE5998">
                    <w:rPr>
                      <w:noProof />
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>1</xsl:text></w:t></w:r>
                  <w:r wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="end" />
                  </w:r>
                  <w:r wsp:rsidR="00553DEF" wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>/</xsl:text></w:t></w:r>
                  <w:r wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="begin" />
                  </w:r>
                  <w:r wsp:rsidR="00553DEF" wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:instrText> NUMPAGES </w:instrText>
                  </w:r>
                  <w:r wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="separate" />
                  </w:r>
                  <w:r wsp:rsidR="00AB01AF">
                    <w:rPr>
                      <w:noProof />
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>1</xsl:text></w:t></w:r>
                  <w:r wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="end" />
                  </w:r>
                  <w:r wsp:rsidR="00553DEF" wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:tab wx:wTab="3060" wx:tlc="none" wx:cTlc="67" />
                  </w:r>
                  <w:r wsp:rsidR="00696890">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>Created in</xsl:text></w:t></w:r>
                  <w:r wsp:rsidR="00553DEF" wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text> eWay-CRM</xsl:text></w:t></w:r>
                  <w:r wsp:rsidR="00696890">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text> system</xsl:text></w:t></w:r>
                </w:p>
              </wx:pBdrGroup>
            </w:ftr>
            <w:pgSz w:w="11900" w:h="16840" />
            <w:pgMar w:top="709" w:right="701" w:bottom="1135" w:left="709" w:header="708" w:footer="708" w:gutter="0" />
            <w:cols w:space="708" />
            <w:docGrid w:line-pitch="360" />
          </w:sectPr>
        </w:pPr>
      </w:p>
      <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="002548F2" wsp:rsidP="002548F2">
        <w:pPr>
          <w:rPr>
            <w:color w:val="383838" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:tbl>
        <w:tblPr>
          <w:tblW w:w="10732" w:type="dxa" />
          <w:tblLook w:val="04A0" />
        </w:tblPr>
        <w:tblGrid>
          <w:gridCol w:w="5366" />
          <w:gridCol w:w="5366" />
        </w:tblGrid>
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="358" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00AB01AF" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>Avs</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="008C65EF">
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>ender</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002548F2" wsp:rsidRPr="003615F8">
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>:</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00AB01AF" wsp:rsidP="00A255BD">
              <w:pPr>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>Mottaker</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002548F2" wsp:rsidRPr="003615F8">
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>:</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00DB4131" wsp:rsidP="003379C1">
              <w:pPr>
                <w:ind w:left="720" w:hanging="720" />
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns15:CurrentUser" />
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="004F3C96" wsp:rsidP="003379C1">
              <w:pPr>
                <w:ind w:left="720" w:hanging="720" />
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns15:FileAs" />
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="279" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00DB4131" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns15:MyCompany[1]" />
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="004F3C96" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns15:Company[1]" />
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00DB4131" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns15:MyCompany[2]" />
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="004F3C96" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns15:BusinessAddressStreet" />
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="004F3C96" wsp:rsidP="009A5066">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns15:MyCompany[3]" />
              <w:r wsp:rsidR="00EE5998">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="004F3C96" wsp:rsidP="009A5066">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns15:BusinessAddressPostalCode" />
              <w:r wsp:rsidR="00E615FC">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns15:BusinessAddressCity" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="279" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00AB01AF" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>Org.nr.</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002548F2" wsp:rsidRPr="003615F8">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns15:MyCompany[4]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00AB01AF" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>Org.nr.</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002548F2" wsp:rsidRPr="003615F8">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns15:Company[2]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="279" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00AB01AF" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>MVA</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002548F2" wsp:rsidRPr="003615F8">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns15:MyCompany[position() &gt;= 5]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00AB01AF" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>MVA</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002548F2" wsp:rsidRPr="003615F8">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns15:Company[position() &gt;= 3]" />
            </w:p>
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00DB4131" wsp:rsidP="00605CDA" />
    </ns15:Contact>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:MyCompany[1]">
    <ns15:MyCompany>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns15:MyCompanyName" />
    </ns15:MyCompany>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:MyCompany[1]/ns15:MyCompanyName">
    <ns15:MyCompanyName>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002C58D6" wsp:rsidRPr="004104E6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:MyCompanyName>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:MyCompany[2]">
    <ns15:MyCompany>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns15:MyCompanyStreet" />
    </ns15:MyCompany>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:MyCompany[2]/ns15:MyCompanyStreet">
    <ns15:MyCompanyStreet>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004104E6" wsp:rsidRPr="004104E6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:MyCompanyStreet>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:MyCompany[3]">
    <ns15:MyCompany>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns15:MyCompanyZip" />
      <w:r wsp:rsidR="0066242D">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
      <xsl:apply-templates select="ns15:MyCompanyCity" />
    </ns15:MyCompany>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:MyCompany[3]/ns15:MyCompanyZip">
    <ns15:MyCompanyZip>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004104E6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:MyCompanyZip>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:MyCompany[3]/ns15:MyCompanyCity">
    <ns15:MyCompanyCity>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004104E6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:MyCompanyCity>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:MyCompany[4]">
    <ns15:MyCompany>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns15:MyCompanyId" />
    </ns15:MyCompany>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:MyCompany[4]/ns15:MyCompanyId">
    <ns15:MyCompanyId>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004104E6" wsp:rsidRPr="004104E6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:MyCompanyId>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:MyCompany[position() &gt;= 5]">
    <ns15:MyCompany>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns15:MyCompanyVatNumber" />
    </ns15:MyCompany>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:MyCompany[position() &gt;= 5]/ns15:MyCompanyVatNumber">
    <ns15:MyCompanyVatNumber>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004104E6" wsp:rsidRPr="004104E6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:MyCompanyVatNumber>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:FileAs">
    <ns15:FileAs>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="001D03D6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:FileAs>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:BusinessAddressCity">
    <ns15:BusinessAddressCity>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004104E6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:BusinessAddressCity>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:BusinessAddressPostalCode">
    <ns15:BusinessAddressPostalCode>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004104E6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:BusinessAddressPostalCode>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:CurrentUser">
    <ns15:CurrentUser>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns15:FileAs" />
    </ns15:CurrentUser>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:CurrentUser/ns15:FileAs">
    <ns15:FileAs>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002C58D6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:FileAs>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:Company[1]">
    <ns15:Company>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns15:CompanyName" />
    </ns15:Company>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:Company[1]/ns15:CompanyName">
    <ns15:CompanyName>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002C58D6" wsp:rsidRPr="004104E6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:CompanyName>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:Company[2]">
    <ns15:Company>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns15:IdentificationNumber" />
    </ns15:Company>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:Company[2]/ns15:IdentificationNumber">
    <ns15:IdentificationNumber>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004104E6" wsp:rsidRPr="004104E6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:IdentificationNumber>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:Company[position() &gt;= 3]">
    <ns15:Company>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns15:VatNumber" />
    </ns15:Company>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:Company[position() &gt;= 3]/ns15:VatNumber">
    <ns15:VatNumber>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004104E6" wsp:rsidRPr="004104E6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:VatNumber>
  </xsl:template>
  <xsl:template match="/ns15:Contact/ns15:BusinessAddressStreet">
    <ns15:BusinessAddressStreet>
      <xsl:for-each select="@ns15:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004104E6" wsp:rsidRPr="004104E6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns15:BusinessAddressStreet>
  </xsl:template>
</xsl:stylesheet>';

/**********************************************/

IF (LEN(@Name) = 0)
BEGIN
	RAISERROR('You must set name of a new XSLT transformation', 16, 2);
	RETURN;
END

IF (LEN(@Definition) = 0)
BEGIN
	RAISERROR('You must set definition of a new XSLT transformation', 16, 2);
	RETURN;
END

IF (@TransformationVersion IS NULL)
BEGIN
	RAISERROR('You must set version of a new XSLT transformation', 16, 2);
	RETURN;
END

DECLARE @AdminGUID UNIQUEIDENTIFIER;
	SET @AdminGUID  = (SELECT ItemGUID FROM EWD_Users WHERE UserName = 'admin');

DECLARE @ChangedTime DATETIME;
	SET @ChangedTime = GETDATE();

DECLARE @ObjectTypeID TINYINT;
	SET @ObjectTypeID = dbo.GetObjectTypeID(@FolderName);

DECLARE @XsltGUID AS UNIQUEIDENTIFIER;
	SET @XsltGUID = (SELECT ItemGUID FROM EWD_XsltTransformations WHERE FileAs = @Name AND ObjectTypeID = @ObjectTypeID AND LangCode = @LangCode);

IF (@XsltGUID IS NULL)
BEGIN
	-- INSERT
	IF (@ObjectTypeID IS NULL)
	BEGIN
		RAISERROR('No object type with name ''%s'' found in database.', 16, 2, @FolderName);
		RETURN;
	END

	IF NOT EXISTS(SELECT 1 WHERE @LangCode IN ('en', 'cs', 'de', 'ru', 'sk', 'no'))
	BEGIN
		DECLARE @Message VARCHAR(64)
			SET @Message = 'Language must be one from values en, cs, de, ru, sk, no.'

		RAISERROR(@Message, 16, 2);
		RETURN;
	END
	
	SET @XsltGUID = NEWID();

	INSERT INTO	EWD_XsltTransformations 
		(
			ItemGUID,
			ItemVersion,
			OwnerGUID,
			CreatedByGUID,
			ModifiedByGUID,
			ItemCreated,
			ItemChanged,
			Server_ItemCreated,
			Server_ItemChanged,
			ObjectTypeID,
			Definition,
			FileAs,
			LangCode,
			Namespace,
			TransformationVersion
		)
	VALUES
		(
			@XsltGUID, 
			1, 
			@AdminGUID, 
			@AdminGUID, 
			@AdminGUID, 
			@ChangedTime, 
			@ChangedTime, 
			@ChangedTime, 
			@ChangedTime, 
			@ObjectTypeID, 
			@Definition, 
			@Name, 
			@LangCode, 
			@Namespace, 
			@TransformationVersion
		);
		
	PRINT 'Inserted succesfully'
END
	ELSE
BEGIN
	-- UPDATE
	
	UPDATE EWD_XsltTransformations
	SET	[ItemVersion] = [ItemVersion] + 1,
		[ModifiedByGUID] = @AdminGUID,
		[ItemChanged] = @ChangedTime,
		[Server_ItemChanged] = @ChangedTime,
		[Definition] = @Definition,
		[Namespace] = @Namespace,
		[LangCode] = @LangCode,
		[TransformationVersion] = @TransformationVersion
	WHERE ItemGUID = @XsltGUID;
	
	PRINT 'Updated succesfully'
END

-- Mark change
EXEC eWaySP_InsertIntoItemChanges @XsltGUID, 'XsltTransformations', 0

IF @DuplicateToOtherLanguages = 1
BEGIN
	EXEC eWaySP_DuplicateXsltTransformationToOtherLanguages @Name, @LangCode, @FolderName, 1
END

END_SETUP:

BEGIN_TEARDOWN:

END_TEARDOWN: