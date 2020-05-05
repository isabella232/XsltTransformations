BEGIN_SETUP:

/******* XSLT Transformation Insert **********/
DECLARE @Name NVARCHAR(32);
	SET @Name = N'Project Sheet'

DECLARE @FolderName NVARCHAR(50);
	SET @FolderName = N'Projects';

DECLARE @LangCode NVARCHAR(256);
	SET @LangCode = N'en';
	
DECLARE @Namespace NVARCHAR(256);
	SET @Namespace = N'urn:eway:document-schemas:export-wml-project';

DECLARE @TransformationVersion INT
	SET @TransformationVersion = 2; -- Only historical Proposals have version = 1, default is 2

DECLARE @DuplicateToOtherLanguages INT
	SET @DuplicateToOtherLanguages = 0	-- Set to 1 if you want to copy the same definition to other languages

DECLARE @Definition NVARCHAR(MAX);
	SET @Definition = N'<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2" xmlns:ns0="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:ns8="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:ns9="urn:eway:document-schemas:export-wml-project">
  <xsl:output method="xml" encoding="UTF-8" standalone="yes" />
  <xsl:template match="/">
    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Word.Document"</xsl:text>
    </xsl:processing-instruction>
    <w:wordDocument xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2" xmlns:ns0="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:ns8="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:ns9="urn:eway:document-schemas:export-wml-project" w:macrosPresent="no" w:embeddedObjPresent="no" w:ocxPresent="no" xml:space="preserve">
      <w:ignoreElements w:val="http://schemas.microsoft.com/office/word/2003/wordml/sp2" />
      <o:DocumentProperties>
        <o:Author>Jan Lalinský</o:Author>
        <o:LastAuthor>jkorpasova</o:LastAuthor>
        <o:Revision>49</o:Revision>
        <o:TotalTime>93</o:TotalTime>
        <o:Created>2011-12-21T13:07:00Z</o:Created>
        <o:LastSaved>2017-05-02T15:12:00Z</o:LastSaved>
        <o:Pages>1</o:Pages>
        <o:Words>61</o:Words>
        <o:Characters>364</o:Characters>
        <o:Lines>3</o:Lines>
        <o:Paragraphs>1</o:Paragraphs>
        <o:CharactersWithSpaces>424</o:CharactersWithSpaces>
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
          <w:link w:val="HeaderChar" />
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
        <w:style w:type="character" w:styleId="HeaderChar">
          <w:name w:val="Header Char" />
          <w:basedOn w:val="Standardnpsmoodstavce" />
          <w:link w:val="Zhlav" />
          <w:rsid w:val="00553DEF" />
        </w:style>
        <w:style w:type="paragraph" w:styleId="Zpat">
          <w:name w:val="footer" />
          <wx:uiName wx:val="Zápatí" />
          <w:basedOn w:val="Normln" />
          <w:link w:val="FooterChar" />
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
        <w:style w:type="character" w:styleId="FooterChar">
          <w:name w:val="Footer Char" />
          <w:basedOn w:val="Standardnpsmoodstavce" />
          <w:link w:val="Zpat" />
          <w:rsid w:val="00553DEF" />
        </w:style>
        <w:style w:type="paragraph" w:styleId="Textbubliny">
          <w:name w:val="Balloon Text" />
          <wx:uiName wx:val="Text bubliny" />
          <w:basedOn w:val="Normln" />
          <w:link w:val="BalloonTextChar" />
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
        <w:style w:type="character" w:styleId="BalloonTextChar">
          <w:name w:val="Balloon Text Char" />
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
        <o:shapedefaults v:ext="edit" spidmax="4098" />
        <o:shapelayout v:ext="edit">
          <o:idmap v:ext="edit" data="1" />
        </o:shapelayout>
      </w:shapeDefaults>
      <w:docPr>
        <w:view w:val="print" />
        <w:zoom w:percent="100" />
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
        <w:alwaysShowPlaceholderText w:val="off" />
        <w:footnotePr>
          <w:footnote w:type="separator">
            <w:p wsp:rsidR="0048372B" wsp:rsidRDefault="0048372B" wsp:rsidP="00553DEF">
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:footnote>
          <w:footnote w:type="continuation-separator">
            <w:p wsp:rsidR="0048372B" wsp:rsidRDefault="0048372B" wsp:rsidP="00553DEF">
              <w:r>
                <w:continuationSeparator />
              </w:r>
            </w:p>
          </w:footnote>
        </w:footnotePr>
        <w:endnotePr>
          <w:endnote w:type="separator">
            <w:p wsp:rsidR="0048372B" wsp:rsidRDefault="0048372B" wsp:rsidP="00553DEF">
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:endnote>
          <w:endnote w:type="continuation-separator">
            <w:p wsp:rsidR="0048372B" wsp:rsidRDefault="0048372B" wsp:rsidP="00553DEF">
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
          <wsp:rsid wsp:val="00093539" />
          <wsp:rsid wsp:val="000D6AF0" />
          <wsp:rsid wsp:val="000F085E" />
          <wsp:rsid wsp:val="001277FF" />
          <wsp:rsid wsp:val="001503EB" />
          <wsp:rsid wsp:val="00164766" />
          <wsp:rsid wsp:val="001D5D74" />
          <wsp:rsid wsp:val="001D6077" />
          <wsp:rsid wsp:val="001E327B" />
          <wsp:rsid wsp:val="002548F2" />
          <wsp:rsid wsp:val="002916C0" />
          <wsp:rsid wsp:val="002948D0" />
          <wsp:rsid wsp:val="002C51D9" />
          <wsp:rsid wsp:val="00331E56" />
          <wsp:rsid wsp:val="003379C1" />
          <wsp:rsid wsp:val="00353984" />
          <wsp:rsid wsp:val="003B1896" />
          <wsp:rsid wsp:val="003C154C" />
          <wsp:rsid wsp:val="0043707A" />
          <wsp:rsid wsp:val="00455CC2" />
          <wsp:rsid wsp:val="00464565" />
          <wsp:rsid wsp:val="0048372B" />
          <wsp:rsid wsp:val="004C4313" />
          <wsp:rsid wsp:val="005270EA" />
          <wsp:rsid wsp:val="00530A50" />
          <wsp:rsid wsp:val="00534228" />
          <wsp:rsid wsp:val="00553DEF" />
          <wsp:rsid wsp:val="00561690" />
          <wsp:rsid wsp:val="00586F94" />
          <wsp:rsid wsp:val="005D728D" />
          <wsp:rsid wsp:val="005E40E1" />
          <wsp:rsid wsp:val="00633C87" />
          <wsp:rsid wsp:val="0065054F" />
          <wsp:rsid wsp:val="006627C9" />
          <wsp:rsid wsp:val="00680EFA" />
          <wsp:rsid wsp:val="00690CE4" />
          <wsp:rsid wsp:val="006A0044" />
          <wsp:rsid wsp:val="006B74C4" />
          <wsp:rsid wsp:val="00715FA0" />
          <wsp:rsid wsp:val="007431E8" />
          <wsp:rsid wsp:val="00745D6C" />
          <wsp:rsid wsp:val="0079016E" />
          <wsp:rsid wsp:val="007916F8" />
          <wsp:rsid wsp:val="007B53E0" />
          <wsp:rsid wsp:val="007C4204" />
          <wsp:rsid wsp:val="007D76CB" />
          <wsp:rsid wsp:val="007F27D6" />
          <wsp:rsid wsp:val="00825F43" />
          <wsp:rsid wsp:val="008F1F11" />
          <wsp:rsid wsp:val="008F2098" />
          <wsp:rsid wsp:val="009166D7" />
          <wsp:rsid wsp:val="009210E3" />
          <wsp:rsid wsp:val="00926155" />
          <wsp:rsid wsp:val="00976FED" />
          <wsp:rsid wsp:val="009A5066" />
          <wsp:rsid wsp:val="009C4F6B" />
          <wsp:rsid wsp:val="009E043D" />
          <wsp:rsid wsp:val="00A01C24" />
          <wsp:rsid wsp:val="00A07852" />
          <wsp:rsid wsp:val="00A2052B" />
          <wsp:rsid wsp:val="00A255BD" />
          <wsp:rsid wsp:val="00A25923" />
          <wsp:rsid wsp:val="00A40569" />
          <wsp:rsid wsp:val="00A508FB" />
          <wsp:rsid wsp:val="00A728E4" />
          <wsp:rsid wsp:val="00A76DC6" />
          <wsp:rsid wsp:val="00A97F9F" />
          <wsp:rsid wsp:val="00AD0D89" />
          <wsp:rsid wsp:val="00AE237D" />
          <wsp:rsid wsp:val="00B24422" />
          <wsp:rsid wsp:val="00B245AC" />
          <wsp:rsid wsp:val="00BF69E2" />
          <wsp:rsid wsp:val="00C22486" />
          <wsp:rsid wsp:val="00C22604" />
          <wsp:rsid wsp:val="00C64D9B" />
          <wsp:rsid wsp:val="00C76EEB" />
          <wsp:rsid wsp:val="00CA4D27" />
          <wsp:rsid wsp:val="00CD3533" />
          <wsp:rsid wsp:val="00CF23E6" />
          <wsp:rsid wsp:val="00D121EF" />
          <wsp:rsid wsp:val="00D12358" />
          <wsp:rsid wsp:val="00D21C9B" />
          <wsp:rsid wsp:val="00D86EEC" />
          <wsp:rsid wsp:val="00D92D0D" />
          <wsp:rsid wsp:val="00DB7653" />
          <wsp:rsid wsp:val="00E03514" />
          <wsp:rsid wsp:val="00E22D12" />
          <wsp:rsid wsp:val="00E5530A" />
          <wsp:rsid wsp:val="00E63ABF" />
          <wsp:rsid wsp:val="00E7306B" />
          <wsp:rsid wsp:val="00EC4C90" />
          <wsp:rsid wsp:val="00F102CA" />
          <wsp:rsid wsp:val="00F10354" />
          <wsp:rsid wsp:val="00F43C00" />
          <wsp:rsid wsp:val="00F736EF" />
          <wsp:rsid wsp:val="00FA3487" />
          <wsp:rsid wsp:val="00FB2DE6" />
          <wsp:rsid wsp:val="00FB541A" />
          <wsp:rsid wsp:val="00FD1AC8" />
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
            <xsl:apply-templates select="ns9:Project" />
            <w:sectPr wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidSect="005E40E1">
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
  <xsl:template match="/ns9:Project">
    <ns9:Project>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="00530A50" wsp:rsidP="003379C1">
        <w:pPr>
          <w:pBdr>
            <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="1" w:color="1F497D" />
          </w:pBdr>
          <w:rPr>
            <w:color w:val="1F497D" />
            <w:sz w:val="40" />
            <w:sz-cs w:val="40" />
            <w:lang w:val="CS" />
          </w:rPr>
          <w:sectPr wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidSect="005E40E1">
            <w:hdr w:type="even">
              <w:p wsp:rsidR="00A40569" wsp:rsidRDefault="00A40569">
                <w:pPr>
                  <w:pStyle w:val="Zhlav" />
                </w:pPr>
              </w:p>
            </w:hdr>
            <w:hdr w:type="odd">
              <w:p wsp:rsidR="00A40569" wsp:rsidRDefault="00A40569">
                <w:pPr>
                  <w:pStyle w:val="Zhlav" />
                </w:pPr>
              </w:p>
            </w:hdr>
            <w:ftr w:type="even">
              <w:p wsp:rsidR="00A40569" wsp:rsidRDefault="00A40569">
                <w:pPr>
                  <w:pStyle w:val="Zpat" />
                </w:pPr>
              </w:p>
            </w:ftr>
            <w:ftr w:type="odd">
              <wx:pBdrGroup>
                <wx:borders>
                  <wx:top wx:val="solid" wx:bdrwidth="10" wx:space="1" wx:color="1F497D" />
                </wx:borders>
                <w:p wsp:rsidR="00553DEF" wsp:rsidRPr="00A40569" wsp:rsidRDefault="001503EB" wsp:rsidP="003379C1">
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
                  <w:r wsp:rsidR="00745D6C">
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
                  <w:r wsp:rsidR="00745D6C">
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
                  <w:r wsp:rsidR="00A40569">
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
                  <w:r wsp:rsidR="00A40569" wsp:rsidRPr="00A40569">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>Created in eWay-CRM system</xsl:text></w:t></w:r>
                </w:p>
              </wx:pBdrGroup>
            </w:ftr>
            <w:hdr w:type="first">
              <w:p wsp:rsidR="00A40569" wsp:rsidRDefault="00A40569">
                <w:pPr>
                  <w:pStyle w:val="Zhlav" />
                </w:pPr>
              </w:p>
            </w:hdr>
            <w:ftr w:type="first">
              <w:p wsp:rsidR="00A40569" wsp:rsidRDefault="00A40569">
                <w:pPr>
                  <w:pStyle w:val="Zpat" />
                </w:pPr>
              </w:p>
            </w:ftr>
            <w:pgSz w:w="11900" w:h="16840" />
            <w:pgMar w:top="709" w:right="701" w:bottom="1135" w:left="709" w:header="708" w:footer="708" w:gutter="0" />
            <w:cols w:space="708" />
            <w:docGrid w:line-pitch="360" />
          </w:sectPr>
        </w:pPr>
        <w:r>
          <w:rPr>
            <w:color w:val="1F497D" />
            <w:sz w:val="40" />
            <w:sz-cs w:val="40" />
            <w:lang w:val="CS" />
          </w:rPr> <w:t><xsl:text>Project Sheet</xsl:text></w:t></w:r>
      </w:p>
      <w:p wsp:rsidR="002548F2" wsp:rsidRDefault="002548F2" wsp:rsidP="002548F2">
        <w:pPr>
          <w:rPr>
            <w:color w:val="383838" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:tbl>
        <w:tblPr>
          <w:tblW w:w="5353" w:type="dxa" />
          <w:tblLook w:val="04A0" />
        </w:tblPr>
        <w:tblGrid>
          <w:gridCol w:w="1809" />
          <w:gridCol w:w="3544" />
        </w:tblGrid>
        <w:tr wsp:rsidR="00B24422" wsp:rsidRPr="003379C1" wsp:rsidTr="00B24422">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1809" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00B24422" wsp:rsidRPr="003379C1" wsp:rsidRDefault="00530A50" wsp:rsidP="00A452F6">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Name</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="00B24422">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>:</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="3544" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00B24422" wsp:rsidRPr="003379C1" wsp:rsidRDefault="001503EB" wsp:rsidP="00A452F6">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns9:ProjectName" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00B24422" wsp:rsidRPr="003379C1" wsp:rsidTr="00B24422">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1809" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00B24422" wsp:rsidRPr="003379C1" wsp:rsidRDefault="00B24422" wsp:rsidP="00A452F6">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>ID:</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="3544" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00B24422" wsp:rsidRPr="003379C1" wsp:rsidRDefault="001503EB" wsp:rsidP="00A452F6">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns9:HID" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00B24422" wsp:rsidRPr="003379C1" wsp:rsidTr="00B24422">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1809" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00B24422" wsp:rsidRPr="003379C1" wsp:rsidRDefault="00530A50" wsp:rsidP="00A452F6">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Start</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="00B24422">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>:</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="3544" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00B24422" wsp:rsidRPr="003379C1" wsp:rsidRDefault="001503EB" wsp:rsidP="00A452F6">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns9:ProjectStart" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00B24422" wsp:rsidRPr="003379C1" wsp:rsidTr="00B24422">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1809" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00B24422" wsp:rsidRDefault="00530A50" wsp:rsidP="00A452F6">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>End</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="00B24422">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>:</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="3544" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00B24422" wsp:rsidRPr="003379C1" wsp:rsidRDefault="001503EB" wsp:rsidP="00A452F6">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns9:ProjectEnd" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00B24422" wsp:rsidRPr="003379C1" wsp:rsidTr="00B24422">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1809" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00B24422" wsp:rsidRDefault="00530A50" wsp:rsidP="00A452F6">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Price</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="00B24422">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>:</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="3544" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00B24422" wsp:rsidRPr="003379C1" wsp:rsidRDefault="001503EB" wsp:rsidP="00A452F6">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns9:Price" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p wsp:rsidR="00B24422" wsp:rsidRDefault="00B24422" wsp:rsidP="002548F2">
        <w:pPr>
          <w:rPr>
            <w:color w:val="383838" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:p wsp:rsidR="00B24422" wsp:rsidRDefault="00B24422" wsp:rsidP="002548F2">
        <w:pPr>
          <w:rPr>
            <w:color w:val="383838" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
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
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="358" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="00530A50" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Customer</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002548F2" wsp:rsidRPr="003379C1">
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>:</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="00530A50" wsp:rsidP="00A255BD">
              <w:pPr>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Supplier</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002548F2" wsp:rsidRPr="003379C1">
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>:</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="001503EB" wsp:rsidP="00B24422">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns9:Customer[1]" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="001503EB" wsp:rsidP="00AD0D89">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns9:MyCompany[1]" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="279" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="001503EB" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns9:Customer[2]" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="001503EB" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns9:MyCompany[2]" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="001503EB" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns9:Customer[3]" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="001503EB" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns9:MyCompany[3]" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="002548F2" wsp:rsidP="009A5066">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="002548F2" wsp:rsidP="009A5066">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="279" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="00745D6C" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r wsp:rsidRPr="00745D6C">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>EIN / ID</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002548F2" wsp:rsidRPr="003379C1">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns9:Customer[4]" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="00745D6C" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r wsp:rsidRPr="00745D6C">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>EIN / ID</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002548F2" wsp:rsidRPr="003379C1">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns9:MyCompany[4]" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidTr="003379C1">
          <w:trPr>
            <w:trHeight w:val="279" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="00745D6C" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>VAT</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002548F2" wsp:rsidRPr="003379C1">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>:</xsl:text></w:t></w:r>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns9:Customer[position() &gt;= 5]" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="00745D6C" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>VAT</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002548F2" wsp:rsidRPr="003379C1">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns9:MyCompany[position() &gt;= 5]" />
              <w:r wsp:rsidR="007D76CB">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="002548F2" wsp:rsidP="002548F2">
        <w:pPr>
          <w:rPr>
            <w:color w:val="383838" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:p wsp:rsidR="002548F2" wsp:rsidRPr="003379C1" wsp:rsidRDefault="001503EB" wsp:rsidP="002548F2">
        <w:pPr>
          <w:rPr>
            <w:color w:val="383838" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
      </w:p>
    </ns9:Project>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:MyCompany[1]">
    <ns9:MyCompany>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns9:MyCompanyName" />
    </ns9:MyCompany>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:MyCompany[1]/ns9:MyCompanyName">
    <ns9:MyCompanyName>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00AD0D89">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:MyCompanyName>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:MyCompany[2]">
    <ns9:MyCompany>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns9:MyCompanyStreet" />
    </ns9:MyCompany>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:MyCompany[2]/ns9:MyCompanyStreet">
    <ns9:MyCompanyStreet>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00AD0D89">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:MyCompanyStreet>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:MyCompany[3]">
    <ns9:MyCompany>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns9:MyCompanyZip" />
      <w:r wsp:rsidR="00AD0D89">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
      <xsl:apply-templates select="ns9:MyCompanyCity" />
    </ns9:MyCompany>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:MyCompany[3]/ns9:MyCompanyZip">
    <ns9:MyCompanyZip>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00AD0D89">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:MyCompanyZip>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:MyCompany[3]/ns9:MyCompanyCity">
    <ns9:MyCompanyCity>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00AD0D89">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:MyCompanyCity>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:MyCompany[4]">
    <ns9:MyCompany>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns9:MyCompanyZip" />
    </ns9:MyCompany>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:MyCompany[4]/ns9:MyCompanyZip">
    <ns9:MyCompanyZip>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:MyCompanyZip>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:MyCompany[position() &gt;= 5]">
    <ns9:MyCompany>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns9:MyCompanyVatNumber" />
    </ns9:MyCompany>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:MyCompany[position() &gt;= 5]/ns9:MyCompanyVatNumber">
    <ns9:MyCompanyVatNumber>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:MyCompanyVatNumber>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:ProjectStart">
    <ns9:ProjectStart>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:ProjectStart>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:Customer[1]">
    <ns9:Customer>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns9:CompanyName" />
    </ns9:Customer>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:Customer[1]/ns9:CompanyName">
    <ns9:CompanyName>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:CompanyName>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:Customer[2]">
    <ns9:Customer>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns9:Address1Street" />
    </ns9:Customer>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:Customer[2]/ns9:Address1Street">
    <ns9:Address1Street>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:Address1Street>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:Customer[3]">
    <ns9:Customer>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns9:Address1PostalCode" />
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
      <xsl:apply-templates select="ns9:Address1City" />
    </ns9:Customer>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:Customer[3]/ns9:Address1PostalCode">
    <ns9:Address1PostalCode>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:Address1PostalCode>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:Customer[3]/ns9:Address1City">
    <ns9:Address1City>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:Address1City>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:Customer[4]">
    <ns9:Customer>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns9:IdentificationNumber" />
    </ns9:Customer>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:Customer[4]/ns9:IdentificationNumber">
    <ns9:IdentificationNumber>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:IdentificationNumber>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:Customer[position() &gt;= 5]">
    <ns9:Customer>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns9:VatNumber" />
    </ns9:Customer>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:Customer[position() &gt;= 5]/ns9:VatNumber">
    <ns9:VatNumber>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:VatNumber>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:HID">
    <ns9:HID>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:HID>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:ProjectEnd">
    <ns9:ProjectEnd>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:ProjectEnd>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:Price">
    <ns9:Price>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:Price>
  </xsl:template>
  <xsl:template match="/ns9:Project/ns9:ProjectName">
    <ns9:ProjectName>
      <xsl:for-each select="@ns9:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B24422">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns9:ProjectName>
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