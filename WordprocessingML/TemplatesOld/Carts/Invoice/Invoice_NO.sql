BEGIN_SETUP:

/******* XSLT Transformation Insert **********/
DECLARE @Name NVARCHAR(32);
	SET @Name = N'Faktura (MVA)'

DECLARE @FolderName NVARCHAR(50);
	SET @FolderName = N'Carts';

DECLARE @LangCode NVARCHAR(256);
	SET @LangCode = N'no';
	
DECLARE @Namespace NVARCHAR(256);
	SET @Namespace = N'urn:eway:document-schemas:Invoice';

DECLARE @TransformationVersion INT
	SET @TransformationVersion = 2; -- Only historical Proposals have version = 1, default is 2

DECLARE @DuplicateToOtherLanguages INT
	SET @DuplicateToOtherLanguages = 0	-- Set to 1 if you want to copy the same definition to other languages

DECLARE @Definition NVARCHAR(MAX);
	SET @Definition = N'<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2" xmlns:ns0="urn:eway:document-schemas:Invoice" xmlns:st1="urn:schemas-microsoft-com:office:smarttags">
  <xsl:output method="xml" encoding="UTF-8" standalone="yes" />
  <xsl:template match="/">
    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Word.Document"</xsl:text>
    </xsl:processing-instruction>
    <w:wordDocument xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2" xmlns:ns0="urn:eway:document-schemas:Invoice" xmlns:st1="urn:schemas-microsoft-com:office:smarttags" w:macrosPresent="no" w:embeddedObjPresent="no" w:ocxPresent="no" xml:space="preserve">
      <w:ignoreElements w:val="http://schemas.microsoft.com/office/word/2003/wordml/sp2" />
      <o:SmartTagType o:namespaceuri="urn:schemas-microsoft-com:office:smarttags" o:name="PlaceType" />
      <o:SmartTagType o:namespaceuri="urn:schemas-microsoft-com:office:smarttags" o:name="place" />
      <o:SmartTagType o:namespaceuri="urn:schemas-microsoft-com:office:smarttags" o:name="PlaceName" />
      <o:DocumentProperties>
        <o:Title>Invoice</o:Title>
        <o:Author>Jan Lalinský</o:Author>
        <o:LastAuthor>Roman</o:LastAuthor>
        <o:Revision>62</o:Revision>
        <o:TotalTime>61</o:TotalTime>
        <o:Created>2016-08-02T11:10:00Z</o:Created>
        <o:LastSaved>2017-09-29T10:04:00Z</o:LastSaved>
        <o:Pages>1</o:Pages>
        <o:Words>89</o:Words>
        <o:Characters>527</o:Characters>
        <o:Lines>4</o:Lines>
        <o:Paragraphs>1</o:Paragraphs>
        <o:CharactersWithSpaces>615</o:CharactersWithSpaces>
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
          <w:charset w:val="00" />
          <w:family w:val="Roman" />
          <w:notTrueType />
          <w:pitch w:val="default" />
          <w:sig w:usb-0="00000000" w:usb-1="00000000" w:usb-2="00000000" w:usb-3="00000000" w:csb-0="00000000" w:csb-1="00000000" />
        </w:font>
        <w:font w:name="Calibri">
          <w:panose-1 w:val="020F0502020204030204" />
          <w:charset w:val="EE" />
          <w:family w:val="Swiss" />
          <w:pitch w:val="variable" />
          <w:sig w:usb-0="E0003AFF" w:usb-1="C000ACFF" w:usb-2="00000009" w:usb-3="00000000" w:csb-0="000001FF" w:csb-1="00000000" />
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
        <w:latentStyles w:defLockedState="off" w:latentStyleCount="156">
          <w:lsdException w:name="Normal" w:locked="on" />
          <w:lsdException w:name="heading 1" w:locked="on" />
          <w:lsdException w:name="heading 2" w:locked="on" />
          <w:lsdException w:name="heading 3" w:locked="on" />
          <w:lsdException w:name="heading 4" w:locked="on" />
          <w:lsdException w:name="heading 5" w:locked="on" />
          <w:lsdException w:name="heading 6" w:locked="on" />
          <w:lsdException w:name="heading 7" w:locked="on" />
          <w:lsdException w:name="heading 8" w:locked="on" />
          <w:lsdException w:name="heading 9" w:locked="on" />
          <w:lsdException w:name="toc 1" w:locked="on" />
          <w:lsdException w:name="toc 2" w:locked="on" />
          <w:lsdException w:name="toc 3" w:locked="on" />
          <w:lsdException w:name="toc 4" w:locked="on" />
          <w:lsdException w:name="toc 5" w:locked="on" />
          <w:lsdException w:name="toc 6" w:locked="on" />
          <w:lsdException w:name="toc 7" w:locked="on" />
          <w:lsdException w:name="toc 8" w:locked="on" />
          <w:lsdException w:name="toc 9" w:locked="on" />
          <w:lsdException w:name="caption" w:locked="on" />
          <w:lsdException w:name="endnote text" w:locked="on" />
          <w:lsdException w:name="table of authorities" w:locked="on" />
          <w:lsdException w:name="macro" w:locked="on" />
          <w:lsdException w:name="toa heading" w:locked="on" />
          <w:lsdException w:name="List" w:locked="on" />
          <w:lsdException w:name="List Bullet" w:locked="on" />
          <w:lsdException w:name="List Number" w:locked="on" />
          <w:lsdException w:name="Title" w:locked="on" />
          <w:lsdException w:name="Default Paragraph Font" w:locked="on" />
          <w:lsdException w:name="Subtitle" w:locked="on" />
          <w:lsdException w:name="Strong" w:locked="on" />
          <w:lsdException w:name="Emphasis" w:locked="on" />
          <w:lsdException w:name="Table Grid" w:locked="on" />
        </w:latentStyles>
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
            <w:lang w:val="CS" w:fareast="CS" w:bidi="AR-SA" />
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
          <w:locked />
          <w:rsid w:val="00553DEF" />
          <w:rPr>
            <w:rFonts w:cs="Times New Roman" />
          </w:rPr>
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
          <w:locked />
          <w:rsid w:val="00553DEF" />
          <w:rPr>
            <w:rFonts w:cs="Times New Roman" />
          </w:rPr>
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
            <w:rFonts w:ascii="Tahoma" w:h-ansi="Tahoma" />
            <wx:font wx:val="Tahoma" />
            <w:sz w:val="16" />
            <w:sz-cs w:val="16" />
            <w:lang w:val="CS" w:fareast="CS" />
          </w:rPr>
        </w:style>
        <w:style w:type="character" w:styleId="BalloonTextChar">
          <w:name w:val="Balloon Text Char" />
          <w:basedOn w:val="Standardnpsmoodstavce" />
          <w:link w:val="Textbubliny" />
          <w:locked />
          <w:rsid w:val="003C154C" />
          <w:rPr>
            <w:rFonts w:ascii="Tahoma" w:h-ansi="Tahoma" w:cs="Times New Roman" />
            <w:sz w:val="16" />
          </w:rPr>
        </w:style>
      </w:styles>
      <w:docPr>
        <w:view w:val="print" />
        <w:zoom w:percent="100" />
        <w:doNotEmbedSystemFonts />
        <w:attachedTemplate w:val="" />
        <w:stylePaneFormatFilter w:val="1004" />
        <w:defaultTabStop w:val="720" />
        <w:hyphenationZone w:val="425" />
        <w:punctuationKerning />
        <w:characterSpacingControl w:val="DontCompress" />
        <w:optimizeForBrowser />
        <w:validateAgainstSchema />
        <w:saveInvalidXML />
        <w:ignoreMixedContent />
        <w:alwaysShowPlaceholderText w:val="off" />
        <w:footnotePr>
          <w:footnote w:type="separator">
            <w:p wsp:rsidR="006C69F8" wsp:rsidRDefault="006C69F8" wsp:rsidP="00553DEF">
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:footnote>
          <w:footnote w:type="continuation-separator">
            <w:p wsp:rsidR="006C69F8" wsp:rsidRDefault="006C69F8" wsp:rsidP="00553DEF">
              <w:r>
                <w:continuationSeparator />
              </w:r>
            </w:p>
          </w:footnote>
        </w:footnotePr>
        <w:endnotePr>
          <w:endnote w:type="separator">
            <w:p wsp:rsidR="006C69F8" wsp:rsidRDefault="006C69F8" wsp:rsidP="00553DEF">
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:endnote>
          <w:endnote w:type="continuation-separator">
            <w:p wsp:rsidR="006C69F8" wsp:rsidRDefault="006C69F8" wsp:rsidP="00553DEF">
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
          <wsp:rsid wsp:val="000171AE" />
          <wsp:rsid wsp:val="00021AFD" />
          <wsp:rsid wsp:val="00030C7E" />
          <wsp:rsid wsp:val="00033690" />
          <wsp:rsid wsp:val="00041158" />
          <wsp:rsid wsp:val="0004185E" />
          <wsp:rsid wsp:val="000456F3" />
          <wsp:rsid wsp:val="00052162" />
          <wsp:rsid wsp:val="0006751D" />
          <wsp:rsid wsp:val="000715F2" />
          <wsp:rsid wsp:val="00072F78" />
          <wsp:rsid wsp:val="000773C3" />
          <wsp:rsid wsp:val="000823F2" />
          <wsp:rsid wsp:val="00093539" />
          <wsp:rsid wsp:val="000B5801" />
          <wsp:rsid wsp:val="000C2314" />
          <wsp:rsid wsp:val="000C406C" />
          <wsp:rsid wsp:val="000D0789" />
          <wsp:rsid wsp:val="000D6AF0" />
          <wsp:rsid wsp:val="000E1951" />
          <wsp:rsid wsp:val="000E20EE" />
          <wsp:rsid wsp:val="000E4A05" />
          <wsp:rsid wsp:val="000F085E" />
          <wsp:rsid wsp:val="001027B7" />
          <wsp:rsid wsp:val="00103935" />
          <wsp:rsid wsp:val="001070ED" />
          <wsp:rsid wsp:val="001114E6" />
          <wsp:rsid wsp:val="001267DA" />
          <wsp:rsid wsp:val="00126A2C" />
          <wsp:rsid wsp:val="001279FC" />
          <wsp:rsid wsp:val="00132C48" />
          <wsp:rsid wsp:val="00166812" />
          <wsp:rsid wsp:val="00190047" />
          <wsp:rsid wsp:val="0019717A" />
          <wsp:rsid wsp:val="001A0DB9" />
          <wsp:rsid wsp:val="001C2D3A" />
          <wsp:rsid wsp:val="001C5C95" />
          <wsp:rsid wsp:val="001D5D74" />
          <wsp:rsid wsp:val="001E04C4" />
          <wsp:rsid wsp:val="001F411F" />
          <wsp:rsid wsp:val="0022255E" />
          <wsp:rsid wsp:val="00251443" />
          <wsp:rsid wsp:val="002548F2" />
          <wsp:rsid wsp:val="0027437A" />
          <wsp:rsid wsp:val="002C51D9" />
          <wsp:rsid wsp:val="002C65C9" />
          <wsp:rsid wsp:val="002D2F54" />
          <wsp:rsid wsp:val="002E3921" />
          <wsp:rsid wsp:val="002E588F" />
          <wsp:rsid wsp:val="002E697F" />
          <wsp:rsid wsp:val="00302A0D" />
          <wsp:rsid wsp:val="003379C1" />
          <wsp:rsid wsp:val="00353984" />
          <wsp:rsid wsp:val="00356CD0" />
          <wsp:rsid wsp:val="003615F8" />
          <wsp:rsid wsp:val="003714A1" />
          <wsp:rsid wsp:val="00392A33" />
          <wsp:rsid wsp:val="003B1896" />
          <wsp:rsid wsp:val="003C154C" />
          <wsp:rsid wsp:val="003C4A1A" />
          <wsp:rsid wsp:val="003E1D10" />
          <wsp:rsid wsp:val="00403E50" />
          <wsp:rsid wsp:val="00410A4F" />
          <wsp:rsid wsp:val="0041460D" />
          <wsp:rsid wsp:val="004242FD" />
          <wsp:rsid wsp:val="0042652E" />
          <wsp:rsid wsp:val="00434804" />
          <wsp:rsid wsp:val="0043707A" />
          <wsp:rsid wsp:val="00442CD8" />
          <wsp:rsid wsp:val="00454C6E" />
          <wsp:rsid wsp:val="00455CC2" />
          <wsp:rsid wsp:val="00464565" />
          <wsp:rsid wsp:val="0047270B" />
          <wsp:rsid wsp:val="00477611" />
          <wsp:rsid wsp:val="00481C14" />
          <wsp:rsid wsp:val="004820E3" />
          <wsp:rsid wsp:val="00497940" />
          <wsp:rsid wsp:val="004A3FBF" />
          <wsp:rsid wsp:val="004A548D" />
          <wsp:rsid wsp:val="004B21DF" />
          <wsp:rsid wsp:val="004C4313" />
          <wsp:rsid wsp:val="004F00B6" />
          <wsp:rsid wsp:val="004F0EF8" />
          <wsp:rsid wsp:val="004F62AB" />
          <wsp:rsid wsp:val="00517AC2" />
          <wsp:rsid wsp:val="005270EA" />
          <wsp:rsid wsp:val="00534228" />
          <wsp:rsid wsp:val="00546403" />
          <wsp:rsid wsp:val="0054688D" />
          <wsp:rsid wsp:val="00553DEF" />
          <wsp:rsid wsp:val="0055578B" />
          <wsp:rsid wsp:val="005557B6" />
          <wsp:rsid wsp:val="00561690" />
          <wsp:rsid wsp:val="005A5DCF" />
          <wsp:rsid wsp:val="005C2D99" />
          <wsp:rsid wsp:val="005D0C60" />
          <wsp:rsid wsp:val="005D1B5C" />
          <wsp:rsid wsp:val="005D5341" />
          <wsp:rsid wsp:val="005D5FBA" />
          <wsp:rsid wsp:val="005D728D" />
          <wsp:rsid wsp:val="005E40E1" />
          <wsp:rsid wsp:val="0061765B" />
          <wsp:rsid wsp:val="00633C87" />
          <wsp:rsid wsp:val="00646FC6" />
          <wsp:rsid wsp:val="006473CE" />
          <wsp:rsid wsp:val="00656D66" />
          <wsp:rsid wsp:val="006627C9" />
          <wsp:rsid wsp:val="00680EFA" />
          <wsp:rsid wsp:val="00690CE4" />
          <wsp:rsid wsp:val="0069285A" />
          <wsp:rsid wsp:val="00696890" />
          <wsp:rsid wsp:val="006A0044" />
          <wsp:rsid wsp:val="006B74C4" />
          <wsp:rsid wsp:val="006C69F8" />
          <wsp:rsid wsp:val="00703E56" />
          <wsp:rsid wsp:val="00716998" />
          <wsp:rsid wsp:val="007327C8" />
          <wsp:rsid wsp:val="007431E8" />
          <wsp:rsid wsp:val="00787829" />
          <wsp:rsid wsp:val="0079016E" />
          <wsp:rsid wsp:val="007916F8" />
          <wsp:rsid wsp:val="007A452F" />
          <wsp:rsid wsp:val="007B53E0" />
          <wsp:rsid wsp:val="007B7323" />
          <wsp:rsid wsp:val="007E7170" />
          <wsp:rsid wsp:val="007E7E95" />
          <wsp:rsid wsp:val="007F27D6" />
          <wsp:rsid wsp:val="008033BA" />
          <wsp:rsid wsp:val="00814A25" />
          <wsp:rsid wsp:val="00820BE4" />
          <wsp:rsid wsp:val="00822E37" />
          <wsp:rsid wsp:val="0082398D" />
          <wsp:rsid wsp:val="00825F43" />
          <wsp:rsid wsp:val="00836FE2" />
          <wsp:rsid wsp:val="008406C9" />
          <wsp:rsid wsp:val="0084189D" />
          <wsp:rsid wsp:val="00861BE2" />
          <wsp:rsid wsp:val="008859F9" />
          <wsp:rsid wsp:val="008A6443" />
          <wsp:rsid wsp:val="008B67CC" />
          <wsp:rsid wsp:val="008E227B" />
          <wsp:rsid wsp:val="008F1F11" />
          <wsp:rsid wsp:val="008F2098" />
          <wsp:rsid wsp:val="0090522C" />
          <wsp:rsid wsp:val="009166D7" />
          <wsp:rsid wsp:val="009247B9" />
          <wsp:rsid wsp:val="00943E2E" />
          <wsp:rsid wsp:val="009508A3" />
          <wsp:rsid wsp:val="00951A41" />
          <wsp:rsid wsp:val="00962D05" />
          <wsp:rsid wsp:val="009644BE" />
          <wsp:rsid wsp:val="00965570" />
          <wsp:rsid wsp:val="0097375A" />
          <wsp:rsid wsp:val="00990B8B" />
          <wsp:rsid wsp:val="009A5066" />
          <wsp:rsid wsp:val="009B19C1" />
          <wsp:rsid wsp:val="009C4F6B" />
          <wsp:rsid wsp:val="009C7957" />
          <wsp:rsid wsp:val="009D6AEF" />
          <wsp:rsid wsp:val="009E043D" />
          <wsp:rsid wsp:val="009F33DB" />
          <wsp:rsid wsp:val="009F5A12" />
          <wsp:rsid wsp:val="00A05EBA" />
          <wsp:rsid wsp:val="00A07852" />
          <wsp:rsid wsp:val="00A13BCF" />
          <wsp:rsid wsp:val="00A255BD" />
          <wsp:rsid wsp:val="00A25923" />
          <wsp:rsid wsp:val="00A43DA2" />
          <wsp:rsid wsp:val="00A4781B" />
          <wsp:rsid wsp:val="00A47BC6" />
          <wsp:rsid wsp:val="00A62D50" />
          <wsp:rsid wsp:val="00A97F9F" />
          <wsp:rsid wsp:val="00AB0C63" />
          <wsp:rsid wsp:val="00AB1481" />
          <wsp:rsid wsp:val="00AE237D" />
          <wsp:rsid wsp:val="00AF04F1" />
          <wsp:rsid wsp:val="00B01219" />
          <wsp:rsid wsp:val="00B245AC" />
          <wsp:rsid wsp:val="00B25DA7" />
          <wsp:rsid wsp:val="00B50782" />
          <wsp:rsid wsp:val="00B84718" />
          <wsp:rsid wsp:val="00B95518" />
          <wsp:rsid wsp:val="00B95A03" />
          <wsp:rsid wsp:val="00BC21A5" />
          <wsp:rsid wsp:val="00BC43D5" />
          <wsp:rsid wsp:val="00BE06D5" />
          <wsp:rsid wsp:val="00BF1F81" />
          <wsp:rsid wsp:val="00C22486" />
          <wsp:rsid wsp:val="00C22604" />
          <wsp:rsid wsp:val="00C37354" />
          <wsp:rsid wsp:val="00C76EEB" />
          <wsp:rsid wsp:val="00C955ED" />
          <wsp:rsid wsp:val="00CA4D27" />
          <wsp:rsid wsp:val="00CB1025" />
          <wsp:rsid wsp:val="00CD3533" />
          <wsp:rsid wsp:val="00D12358" />
          <wsp:rsid wsp:val="00D33A54" />
          <wsp:rsid wsp:val="00D462AF" />
          <wsp:rsid wsp:val="00D64D52" />
          <wsp:rsid wsp:val="00D70A30" />
          <wsp:rsid wsp:val="00D754FD" />
          <wsp:rsid wsp:val="00D83D1A" />
          <wsp:rsid wsp:val="00D86EEC" />
          <wsp:rsid wsp:val="00D92D0D" />
          <wsp:rsid wsp:val="00D94772" />
          <wsp:rsid wsp:val="00D95B57" />
          <wsp:rsid wsp:val="00DA1211" />
          <wsp:rsid wsp:val="00DB7653" />
          <wsp:rsid wsp:val="00DC6786" />
          <wsp:rsid wsp:val="00E03514" />
          <wsp:rsid wsp:val="00E03F2A" />
          <wsp:rsid wsp:val="00E05787" />
          <wsp:rsid wsp:val="00E15D02" />
          <wsp:rsid wsp:val="00E205F8" />
          <wsp:rsid wsp:val="00E22D12" />
          <wsp:rsid wsp:val="00E31BDC" />
          <wsp:rsid wsp:val="00E50391" />
          <wsp:rsid wsp:val="00E63ABF" />
          <wsp:rsid wsp:val="00E64C27" />
          <wsp:rsid wsp:val="00E71BAF" />
          <wsp:rsid wsp:val="00E73C7B" />
          <wsp:rsid wsp:val="00E90E40" />
          <wsp:rsid wsp:val="00EC4C90" />
          <wsp:rsid wsp:val="00EC6564" />
          <wsp:rsid wsp:val="00EC66CF" />
          <wsp:rsid wsp:val="00F102CA" />
          <wsp:rsid wsp:val="00F22B71" />
          <wsp:rsid wsp:val="00F4015D" />
          <wsp:rsid wsp:val="00F43C00" />
          <wsp:rsid wsp:val="00F45E4E" />
          <wsp:rsid wsp:val="00F629BE" />
          <wsp:rsid wsp:val="00F71CB4" />
          <wsp:rsid wsp:val="00F72DB3" />
          <wsp:rsid wsp:val="00F736EF" />
          <wsp:rsid wsp:val="00F75870" />
          <wsp:rsid wsp:val="00F87DE8" />
          <wsp:rsid wsp:val="00FA0E72" />
          <wsp:rsid wsp:val="00FA27A0" />
          <wsp:rsid wsp:val="00FA3487" />
          <wsp:rsid wsp:val="00FB2DE6" />
          <wsp:rsid wsp:val="00FC2BEC" />
          <wsp:rsid wsp:val="00FD1AC8" />
          <wsp:rsid wsp:val="00FF2518" />
          <wsp:rsid wsp:val="00FF4CB9" />
          <wsp:rsid wsp:val="00FF5B48" />
        </wsp:rsids>
        <w:showXMLTags w:val="off" />
      </w:docPr>
      <w:body>
        <wx:sect>
          <wx:pBdrGroup>
            <wx:borders>
              <wx:bottom wx:val="solid" wx:bdrwidth="10" wx:space="1" wx:color="1F497D" />
            </wx:borders>
            <xsl:apply-templates select="ns0:Proposal" />
            <w:sectPr wsp:rsidR="00033690" wsp:rsidRPr="003615F8" wsp:rsidSect="005E40E1">
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
  <xsl:template match="/ns0:Proposal">
    <ns0:Proposal>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00033690" wsp:rsidRDefault="007B7323" wsp:rsidP="003379C1">
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
          </w:rPr> <w:t><xsl:text>Faktura</xsl:text></w:t></w:r>
      </w:p>
      <w:p wsp:rsidR="00033690" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00033690" wsp:rsidP="003379C1">
        <w:pPr>
          <w:pBdr>
            <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="1" w:color="1F497D" />
          </w:pBdr>
          <w:rPr>
            <w:color w:val="1F497D" />
            <w:sz w:val="40" />
            <w:sz-cs w:val="40" />
          </w:rPr>
          <w:sectPr wsp:rsidR="00033690" wsp:rsidRPr="003615F8" wsp:rsidSect="005E40E1">
            <w:ftr w:type="odd">
              <wx:pBdrGroup>
                <wx:borders>
                  <wx:top wx:val="solid" wx:bdrwidth="10" wx:space="1" wx:color="1F497D" />
                </wx:borders>
                <w:p wsp:rsidR="00033690" wsp:rsidRPr="00553DEF" wsp:rsidRDefault="0047270B" wsp:rsidP="003379C1">
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
                  <w:r wsp:rsidRPr="00FA27A0">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="begin" />
                  </w:r>
                  <w:r wsp:rsidR="00033690" wsp:rsidRPr="00FA27A0">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:instrText> DATE  \@ "d.MM.yyyy"  \* MERGEFORMAT </w:instrText>
                  </w:r>
                  <w:r wsp:rsidRPr="00FA27A0">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="separate" />
                  </w:r>
                  <w:r wsp:rsidR="00646FC6">
                    <w:rPr>
                      <w:noProof />
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>29.09.2017</xsl:text></w:t></w:r>
                  <w:r wsp:rsidRPr="00FA27A0">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="end" />
                  </w:r>
                  <w:r wsp:rsidR="00033690" wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:tab wx:wTab="4170" wx:tlc="none" wx:cTlc="92" />
                  </w:r>
                  <w:r wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="begin" />
                  </w:r>
                  <w:r wsp:rsidR="00033690" wsp:rsidRPr="00553DEF">
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
                  <w:r wsp:rsidR="00F87DE8">
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
                  <w:r wsp:rsidR="00033690" wsp:rsidRPr="00553DEF">
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
                  <w:r wsp:rsidR="00033690" wsp:rsidRPr="00553DEF">
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
                  <w:r wsp:rsidR="0004185E">
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
                  <w:r wsp:rsidR="00033690" wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:tab wx:wTab="3630" wx:tlc="none" wx:cTlc="80" />
                  </w:r>
                  <w:r wsp:rsidR="00033690">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>Created in</xsl:text></w:t></w:r>
                  <w:r wsp:rsidR="00033690" wsp:rsidRPr="00553DEF">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text> eWay-CRM</xsl:text></w:t></w:r>
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
      <w:p wsp:rsidR="00033690" wsp:rsidRDefault="00033690" wsp:rsidP="002548F2">
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
          <w:tblW w:w="5195" w:type="dxa" />
          <w:tblInd w:w="5353" w:type="dxa" />
          <w:tblLook w:val="00A0" />
        </w:tblPr>
        <w:tblGrid>
          <w:gridCol w:w="2693" />
          <w:gridCol w:w="2502" />
        </w:tblGrid>
        <w:tr wsp:rsidR="004F00B6" wsp:rsidRPr="003615F8" wsp:rsidTr="00DA1211">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2693" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="004F00B6" wsp:rsidRPr="009F33DB" wsp:rsidRDefault="00454C6E" wsp:rsidP="00572778">
              <w:pPr>
                <w:ind w:left="720" w:hanging="720" />
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>Fakturanr.</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2502" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="004F00B6" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="00572778">
              <w:pPr>
                <w:ind w:left="720" w:hanging="720" />
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:ID" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="004F00B6" wsp:rsidRPr="003615F8" wsp:rsidTr="00DA1211">
          <w:trPr>
            <w:trHeight w:val="279" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2693" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="004F00B6" wsp:rsidRPr="009F33DB" wsp:rsidRDefault="00454C6E" wsp:rsidP="00572778">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>Fakturadato</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2502" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="004F00B6" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="00572778">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:EffectiveFrom" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="004F00B6" wsp:rsidRPr="003615F8" wsp:rsidTr="00DA1211">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2693" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="004F00B6" wsp:rsidRPr="009F33DB" wsp:rsidRDefault="00454C6E" wsp:rsidP="00572778">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>Forfallsdato</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2502" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="004F00B6" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="00572778">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:ValidUntil" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="004F00B6" wsp:rsidRPr="003615F8" wsp:rsidTr="00DA1211">
          <w:trPr>
            <w:trHeight w:val="279" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2693" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="004F00B6" wsp:rsidRPr="009F33DB" wsp:rsidRDefault="00454C6E" wsp:rsidP="00572778">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>Kommentar</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2502" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="004F00B6" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="00572778">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:Note" />
            </w:p>
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p wsp:rsidR="001E04C4" wsp:rsidRPr="003615F8" wsp:rsidRDefault="001E04C4" wsp:rsidP="002E3921">
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
          <w:tblW w:w="10548" w:type="dxa" />
          <w:tblLook w:val="00A0" />
        </w:tblPr>
        <w:tblGrid>
          <w:gridCol w:w="5366" />
          <w:gridCol w:w="5182" />
        </w:tblGrid>
        <w:tr wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidTr="00DA1211">
          <w:trPr>
            <w:trHeight w:val="358" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRPr="007B7323" wsp:rsidRDefault="007B7323" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r wsp:rsidRPr="007B7323">
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>Kunde</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRPr="007B7323" wsp:rsidRDefault="007B7323" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r wsp:rsidRPr="007B7323">
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>Leverandør</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidTr="00DA1211">
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:ind w:left="720" w:hanging="720" />
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:Customer[1]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:ind w:left="720" w:hanging="720" />
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:MyCompany[1]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidTr="00DA1211">
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRDefault="0047270B" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:ind w:left="720" w:hanging="720" />
              </w:pPr>
              <xsl:apply-templates select="ns0:ContactPerson" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRDefault="0047270B" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:ind w:left="720" w:hanging="720" />
              </w:pPr>
              <xsl:apply-templates select="ns0:Owner" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidTr="00DA1211">
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:Customer[2]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:MyCompany[2]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidTr="00DA1211">
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:Customer[3]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:MyCompany[3]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidTr="00DA1211">
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:Customer[4]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:MyCompany[4]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002E3921" wsp:rsidRPr="003615F8" wsp:rsidTr="00DA1211">
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRDefault="0047270B" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:Customer[5]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002E3921" wsp:rsidRDefault="0047270B" wsp:rsidP="00C56C6F">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:MyCompany[5]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002D2F54" wsp:rsidRPr="003615F8" wsp:rsidTr="00DA1211">
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002D2F54" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00CB1025" wsp:rsidP="00134527">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>Org.nr.:</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002D2F54" wsp:rsidRPr="003615F8">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns0:Customer[6]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002D2F54" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00CB1025" wsp:rsidP="00134527">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>Org.nr.</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002D2F54" wsp:rsidRPr="003615F8">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns0:MyCompany[6]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="002D2F54" wsp:rsidRPr="003615F8" wsp:rsidTr="00DA1211">
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002D2F54" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00CB1025" wsp:rsidP="00134527">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>MVA</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="00FC2BEC">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002D2F54" wsp:rsidRPr="003615F8">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>:</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="00052162">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns0:Customer[position() &gt;= 7]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p wsp:rsidR="002D2F54" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00CB1025" wsp:rsidP="00134527">
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>MVA</xsl:text></w:t></w:r>
              <w:r wsp:rsidR="00FC2BEC">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <w:r wsp:rsidR="002D2F54" wsp:rsidRPr="003615F8">
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns0:MyCompany[position() &gt;= 7]" />
            </w:p>
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p wsp:rsidR="00033690" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00033690" wsp:rsidP="002548F2">
        <w:pPr>
          <w:rPr>
            <w:color w:val="383838" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:p wsp:rsidR="00033690" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00033690" wsp:rsidP="002548F2">
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
          <w:tblW w:w="10553" w:type="dxa" />
          <w:tblInd w:w="-5" w:type="dxa" />
          <w:tblBorders>
            <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="383838" />
            <w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="383838" />
            <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="383838" />
            <w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="383838" />
            <w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="383838" />
            <w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="383838" />
          </w:tblBorders>
          <w:tblLayout w:type="Fixed" />
          <w:tblLook w:val="00A0" />
        </w:tblPr>
        <w:tblGrid>
          <w:gridCol w:w="5273" />
          <w:gridCol w:w="975" />
          <w:gridCol w:w="1425" />
          <w:gridCol w:w="1272" />
          <w:gridCol w:w="1608" />
        </w:tblGrid>
        <w:tr wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidTr="00454C6E">
          <w:trPr>
            <w:trHeight w:val="268" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5273" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00454C6E" wsp:rsidP="002548F2">
              <w:pPr>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text>Beskrivelse</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="975" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00454C6E" wsp:rsidP="00B25DA7">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text>Antall</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1425" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00454C6E" wsp:rsidP="00AC640A">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text>Pris</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1272" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00454C6E" wsp:rsidP="00B25DA7">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text>MVA</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1608" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00454C6E" wsp:rsidP="00B25DA7">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text>Beløp</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <xsl:apply-templates select="ns0:Goods" />
        <w:tr wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidTr="00454C6E">
          <w:trPr>
            <w:trHeight w:val="268" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="7673" w:type="dxa" />
              <w:gridSpan w:val="3" />
              <w:tcBorders>
                <w:left w:val="nil" />
                <w:bottom w:val="nil" />
              </w:tcBorders>
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00454C6E" wsp:rsidP="003379C1">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1272" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00454C6E" wsp:rsidP="003379C1">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text>Nettobeløp</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1608" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRDefault="0047270B" wsp:rsidP="003379C1">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:PriceTotalExcludingVAT" />
              <w:r wsp:rsidR="00454C6E">
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns0:CurrencyEn[1]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidTr="00454C6E">
          <w:trPr>
            <w:trHeight w:val="268" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="7673" w:type="dxa" />
              <w:gridSpan w:val="3" />
              <w:tcBorders>
                <w:top w:val="nil" />
                <w:left w:val="nil" />
                <w:bottom w:val="nil" />
              </w:tcBorders>
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00454C6E" wsp:rsidP="003379C1">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1272" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRDefault="00454C6E" wsp:rsidP="003379C1">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text>Merverdiavgift</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1608" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRDefault="0047270B" wsp:rsidP="003379C1">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:VAT" />
              <w:r wsp:rsidR="00454C6E">
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns0:CurrencyEn[2]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidTr="00454C6E">
          <w:trPr>
            <w:trHeight w:val="268" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="7673" w:type="dxa" />
              <w:gridSpan w:val="3" />
              <w:tcBorders>
                <w:top w:val="nil" />
                <w:left w:val="nil" />
                <w:bottom w:val="nil" />
              </w:tcBorders>
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidRDefault="00454C6E" wsp:rsidP="003379C1">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1272" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRDefault="00454C6E" wsp:rsidP="003379C1">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text>Å BETALE</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1608" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p wsp:rsidR="00454C6E" wsp:rsidRDefault="0047270B" wsp:rsidP="003379C1">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns0:PriceTotal" />
              <w:r wsp:rsidR="00454C6E">
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns0:CurrencyEn[position() &gt;= 3]" />
            </w:p>
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p wsp:rsidR="00033690" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="002548F2">
        <w:pPr>
          <w:rPr>
            <w:i />
            <w:color w:val="383838" />
            <w:sz w:val="16" />
            <w:sz-cs w:val="16" />
          </w:rPr>
        </w:pPr>
      </w:p>
    </ns0:Proposal>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:PriceTotalExcludingVAT">
    <ns0:PriceTotalExcludingVAT>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00454C6E">
        <w:rPr>
          <w:b />
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:PriceTotalExcludingVAT>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:ValidUntil">
    <ns0:ValidUntil>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004F00B6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:ValidUntil>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Goods">
    <ns0:Goods>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:Item" />
    </ns0:Goods>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Goods/ns0:Item">
    <ns0:Item>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:tr wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidTr="00454C6E">
        <w:trPr>
          <w:trHeight w:val="268" />
        </w:trPr>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="5273" w:type="dxa" />
          </w:tcPr>
          <w:p wsp:rsidR="00454C6E" wsp:rsidRDefault="0047270B" wsp:rsidP="005A5DCF">
            <w:pPr>
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns0:FileAs" />
          </w:p>
          <w:p wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="005A5DCF">
            <w:pPr>
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns0:Description" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="975" w:type="dxa" />
          </w:tcPr>
          <w:p wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="00E22D12">
            <w:pPr>
              <w:jc w:val="right" />
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns0:Quantity" />
            <w:r wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8">
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            <xsl:apply-templates select="ns0:UnitEn" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="1425" w:type="dxa" />
          </w:tcPr>
          <w:p wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="003714A1">
            <w:pPr>
              <w:jc w:val="right" />
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns0:SalePriceExcludingVAT" />
            <w:r wsp:rsidR="00454C6E">
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            <xsl:apply-templates select="ns0:SaleCurrencyEn[1]" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="1272" w:type="dxa" />
          </w:tcPr>
          <w:p wsp:rsidR="00454C6E" wsp:rsidRDefault="0047270B" wsp:rsidP="009644BE">
            <w:pPr>
              <w:ind w:hanging="54" />
              <w:jc w:val="right" />
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns0:VATRate" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="1608" w:type="dxa" />
          </w:tcPr>
          <w:p wsp:rsidR="00454C6E" wsp:rsidRPr="003615F8" wsp:rsidRDefault="0047270B" wsp:rsidP="003714A1">
            <w:pPr>
              <w:jc w:val="right" />
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns0:PriceTotalExcludingVAT" />
            <w:r wsp:rsidR="00454C6E">
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            <xsl:apply-templates select="ns0:SaleCurrencyEn[position() &gt;= 2]" />
          </w:p>
        </w:tc>
      </w:tr>
    </ns0:Item>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Goods/ns0:Item/ns0:PriceTotalExcludingVAT">
    <ns0:PriceTotalExcludingVAT>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00454C6E">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:PriceTotalExcludingVAT>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Goods/ns0:Item/ns0:Description">
    <ns0:Description>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00454C6E">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:Description>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Goods/ns0:Item/ns0:VATRate">
    <ns0:VATRate>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00454C6E">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:VATRate>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Goods/ns0:Item/ns0:FileAs">
    <ns0:FileAs>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00454C6E">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:FileAs>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Goods/ns0:Item/ns0:UnitEn">
    <ns0:UnitEn>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00454C6E">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:UnitEn>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Goods/ns0:Item/ns0:SalePriceExcludingVAT">
    <ns0:SalePriceExcludingVAT>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00454C6E">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:SalePriceExcludingVAT>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Goods/ns0:Item/ns0:SaleCurrencyEn[1]">
    <ns0:SaleCurrencyEn>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00646FC6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:SaleCurrencyEn>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Goods/ns0:Item/ns0:SaleCurrencyEn[position() &gt;= 2]">
    <ns0:SaleCurrencyEn>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00D94772">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:SaleCurrencyEn>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Goods/ns0:Item/ns0:Quantity">
    <ns0:Quantity>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00454C6E">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:Quantity>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Note">
    <ns0:Note>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004F00B6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:Note>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:ID">
    <ns0:ID>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004F00B6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:ID>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:CurrencyEn[2]">
    <ns0:CurrencyEn>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="0004185E">
        <w:rPr>
          <w:b />
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:CurrencyEn>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[1]">
    <ns0:Customer>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:CompanyName" />
    </ns0:Customer>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[1]/ns0:CompanyName">
    <ns0:CompanyName>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:CompanyName>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[2]">
    <ns0:Customer>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:Address1Street" />
    </ns0:Customer>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[2]/ns0:Address1Street">
    <ns0:Address1Street>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:Address1Street>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[3]">
    <ns0:Customer>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:Address1City" />
    </ns0:Customer>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[3]/ns0:Address1City">
    <ns0:Address1City>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:Address1City>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[4]">
    <ns0:Customer>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:Address1PostalCode" />
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:text>  </xsl:text></w:t></w:r>
      <xsl:apply-templates select="ns0:Address1State" />
    </ns0:Customer>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[4]/ns0:Address1PostalCode">
    <ns0:Address1PostalCode>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:Address1PostalCode>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[4]/ns0:Address1State">
    <ns0:Address1State>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:Address1State>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[5]">
    <ns0:Customer>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:Address1CountryEn" />
    </ns0:Customer>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[5]/ns0:Address1CountryEn">
    <ns0:Address1CountryEn>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:Address1CountryEn>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[6]">
    <ns0:Customer>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:IdentificationNumber" />
    </ns0:Customer>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[6]/ns0:IdentificationNumber">
    <ns0:IdentificationNumber>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002D2F54">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:IdentificationNumber>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[position() &gt;= 7]">
    <ns0:Customer>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:VatNumber" />
    </ns0:Customer>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Customer[position() &gt;= 7]/ns0:VatNumber">
    <ns0:VatNumber>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002D2F54">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:VatNumber>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:VAT">
    <ns0:VAT>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00454C6E">
        <w:rPr>
          <w:b />
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:VAT>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[1]">
    <ns0:MyCompany>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:MyCompanyName" />
    </ns0:MyCompany>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[1]/ns0:MyCompanyName">
    <ns0:MyCompanyName>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:MyCompanyName>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[2]">
    <ns0:MyCompany>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:MyCompanyStreet" />
    </ns0:MyCompany>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[2]/ns0:MyCompanyStreet">
    <ns0:MyCompanyStreet>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:MyCompanyStreet>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[3]">
    <ns0:MyCompany>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:MyCompanyCity" />
    </ns0:MyCompany>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[3]/ns0:MyCompanyCity">
    <ns0:MyCompanyCity>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:MyCompanyCity>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[4]">
    <ns0:MyCompany>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:MyCompanyZip" />
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:text>  </xsl:text></w:t></w:r>
      <xsl:apply-templates select="ns0:MyCompanyState" />
    </ns0:MyCompany>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[4]/ns0:MyCompanyZip">
    <ns0:MyCompanyZip>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:MyCompanyZip>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[4]/ns0:MyCompanyState">
    <ns0:MyCompanyState>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:MyCompanyState>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[5]">
    <ns0:MyCompany>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:MyCompanyCountry" />
    </ns0:MyCompany>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[5]/ns0:MyCompanyCountry">
    <ns0:MyCompanyCountry>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002E3921">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:MyCompanyCountry>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[6]">
    <ns0:MyCompany>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:MyCompanyId" />
    </ns0:MyCompany>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[6]/ns0:MyCompanyId">
    <ns0:MyCompanyId>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002D2F54">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:MyCompanyId>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[position() &gt;= 7]">
    <ns0:MyCompany>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:MyCompanyVatNumber" />
    </ns0:MyCompany>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:MyCompany[position() &gt;= 7]/ns0:MyCompanyVatNumber">
    <ns0:MyCompanyVatNumber>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002D2F54">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:MyCompanyVatNumber>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:ContactPerson">
    <ns0:ContactPerson>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:FileAs" />
    </ns0:ContactPerson>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:ContactPerson/ns0:FileAs">
    <ns0:FileAs>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00546403" wsp:rsidRPr="0097375A">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:FileAs>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:PriceTotal">
    <ns0:PriceTotal>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00454C6E">
        <w:rPr>
          <w:b />
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:PriceTotal>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:EffectiveFrom">
    <ns0:EffectiveFrom>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="004F00B6">
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:EffectiveFrom>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Owner">
    <ns0:Owner>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns0:FileAs" />
    </ns0:Owner>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:Owner/ns0:FileAs">
    <ns0:FileAs>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00E50391">
        <w:rPr>
          <w:rFonts w:cs="Arial" />
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:FileAs>
  </xsl:template>
  <xsl:template match="/ns0:Proposal/ns0:CurrencyEn[1]|/ns0:Proposal/ns0:CurrencyEn[position() &gt;= 3]">
    <ns0:CurrencyEn>
      <xsl:for-each select="@ns0:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00D754FD">
        <w:rPr>
          <w:b />
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns0:CurrencyEn>
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