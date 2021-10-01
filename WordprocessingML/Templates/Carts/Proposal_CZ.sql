BEGIN_SETUP:

/******* XSLT Transformation Insert **********/
DECLARE @Name NVARCHAR(32);
	SET @Name = N'Nabídka'

DECLARE @FolderName NVARCHAR(50);
	SET @FolderName = N'Carts';

DECLARE @LangCode NVARCHAR(256);
	SET @LangCode = N'cs';
	
DECLARE @Namespace NVARCHAR(256);
	SET @Namespace = N'urn:eway:document-schemas:proposal-base2';

DECLARE @TransformationVersion INT
	SET @TransformationVersion = 2; -- Only historical Proposals have version = 1, default is 2

DECLARE @DuplicateToOtherLanguages INT
	SET @DuplicateToOtherLanguages = 0	-- Set to 1 if you want to copy the same definition to other languages

DECLARE @Definition NVARCHAR(MAX);
	SET @Definition = N'<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2" xmlns:ns0="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:ns1="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:ns2="urn:eway:document-schemas:proposal-base2">
  <xsl:output method="xml" encoding="UTF-8" standalone="yes" />
  <xsl:template match="/">
    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Word.Document"</xsl:text>
    </xsl:processing-instruction>
    <w:wordDocument xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2" xmlns:ns0="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:ns1="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:ns2="urn:eway:document-schemas:proposal-base2" w:macrosPresent="no" w:embeddedObjPresent="no" w:ocxPresent="no" xml:space="preserve">
      <w:ignoreElements w:val="http://schemas.microsoft.com/office/word/2003/wordml/sp2" />
      <o:DocumentProperties>
        <o:Title>Nabídka</o:Title>
        <o:Author>Jan Lalinský</o:Author>
        <o:LastAuthor>jfrondl</o:LastAuthor>
        <o:Revision>16</o:Revision>
        <o:TotalTime>27</o:TotalTime>
        <o:LastPrinted>2020-06-23T11:00:00Z</o:LastPrinted>
        <o:Created>2020-08-12T10:56:00Z</o:Created>
        <o:LastSaved>2020-09-29T13:10:00Z</o:LastSaved>
        <o:Pages>1</o:Pages>
        <o:Words>85</o:Words>
        <o:Characters>502</o:Characters>
        <o:Lines>4</o:Lines>
        <o:Paragraphs>1</o:Paragraphs>
        <o:CharactersWithSpaces>586</o:CharactersWithSpaces>
        <o:Version>11.0000</o:Version>
      </o:DocumentProperties>
      <o:CustomDocumentProperties>
        <o:processingInstructions dt:dt="string">  <xsl:for-each select="processing-instruction()"><xsl:text>&lt;?</xsl:text><xsl:value-of select="name()" /><xsl:text> </xsl:text><xsl:value-of select="." /><xsl:text>?&gt;</xsl:text></xsl:for-each></o:processingInstructions>
      </o:CustomDocumentProperties>
      <w:fonts>
        <w:defaultFonts w:ascii="Cambria" w:fareast="MS Mincho" w:h-ansi="Cambria" w:cs="Times New Roman" />
        <w:font w:name="MS Mincho">
          <w:altName w:val="MS Gothic" />
          <w:panose-1 w:val="02020609040205080304" />
          <w:charset w:val="80" />
          <w:family w:val="Roman" />
          <w:notTrueType />
          <w:pitch w:val="fixed" />
          <w:sig w:usb-0="00000001" w:usb-1="08070000" w:usb-2="00000010" w:usb-3="00000000" w:csb-0="00020000" w:csb-1="00000000" />
        </w:font>
        <w:font w:name="Tahoma">
          <w:panose-1 w:val="020B0604030504040204" />
          <w:charset w:val="EE" />
          <w:family w:val="Swiss" />
          <w:pitch w:val="variable" />
          <w:sig w:usb-0="E1003EFF" w:usb-1="C000605B" w:usb-2="00000029" w:usb-3="00000000" w:csb-0="000101FF" w:csb-1="00000000" />
        </w:font>
        <w:font w:name="Calibri">
          <w:panose-1 w:val="020F0502020204030204" />
          <w:charset w:val="EE" />
          <w:family w:val="Swiss" />
          <w:pitch w:val="variable" />
          <w:sig w:usb-0="E4003EFF" w:usb-1="C000247B" w:usb-2="00000009" w:usb-3="00000000" w:csb-0="000001FF" w:csb-1="00000000" />
        </w:font>
        <w:font w:name="Cambria">
          <w:panose-1 w:val="02040503050406030204" />
          <w:charset w:val="EE" />
          <w:family w:val="Roman" />
          <w:pitch w:val="variable" />
          <w:sig w:usb-0="E00006FF" w:usb-1="420024FF" w:usb-2="00000000" w:usb-3="00000000" w:csb-0="0000019F" w:csb-1="00000000" />
        </w:font>
        <w:font w:name="Segoe UI">
          <w:panose-1 w:val="020B0502040204020203" />
          <w:charset w:val="EE" />
          <w:family w:val="Swiss" />
          <w:pitch w:val="variable" />
          <w:sig w:usb-0="E4003EFF" w:usb-1="C000E47F" w:usb-2="00000009" w:usb-3="00000000" w:csb-0="000001FF" w:csb-1="00000000" />
        </w:font>
        <w:font w:name="Segoe UI Light">
          <w:panose-1 w:val="020B0502040204020203" />
          <w:charset w:val="EE" />
          <w:family w:val="Swiss" />
          <w:pitch w:val="variable" />
          <w:sig w:usb-0="E4003EFF" w:usb-1="C000E47F" w:usb-2="00000009" w:usb-3="00000000" w:csb-0="000001FF" w:csb-1="00000000" />
        </w:font>
        <w:font w:name="Segoe UI Semibold">
          <w:panose-1 w:val="020B0702040204020203" />
          <w:charset w:val="EE" />
          <w:family w:val="Swiss" />
          <w:pitch w:val="variable" />
          <w:sig w:usb-0="E4003EFF" w:usb-1="C000E47F" w:usb-2="00000009" w:usb-3="00000000" w:csb-0="000001FF" w:csb-1="00000000" />
        </w:font>
        <w:font w:name="@MS Mincho">
          <w:panose-1 w:val="02020609040205080304" />
          <w:charset w:val="80" />
          <w:family w:val="Modern" />
          <w:pitch w:val="fixed" />
          <w:sig w:usb-0="E00002FF" w:usb-1="6AC7FDFB" w:usb-2="08000012" w:usb-3="00000000" w:csb-0="0002009F" w:csb-1="00000000" />
        </w:font>
      </w:fonts>
      <w:styles>
        <w:versionOfBuiltInStylenames w:val="4" />
        <w:latentStyles w:defLockedState="off" w:latentStyleCount="156" />
        <w:style w:type="paragraph" w:default="on" w:styleId="Normln">
          <w:name w:val="Normal" />
          <wx:uiName wx:val="Normální" />
          <w:rsid w:val="0096517C" />
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
          <w:rsid w:val="0096517C" />
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
          <w:rsid w:val="0096517C" />
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
          <w:rsid w:val="0096517C" />
        </w:style>
        <w:style w:type="paragraph" w:styleId="Zpat">
          <w:name w:val="footer" />
          <wx:uiName wx:val="Zápatí" />
          <w:basedOn w:val="Normln" />
          <w:link w:val="FooterChar" />
          <w:rsid w:val="0096517C" />
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
          <w:rsid w:val="0096517C" />
        </w:style>
        <w:style w:type="paragraph" w:styleId="Textbubliny">
          <w:name w:val="Balloon Text" />
          <wx:uiName wx:val="Text bubliny" />
          <w:basedOn w:val="Normln" />
          <w:link w:val="BalloonTextChar" />
          <w:rsid w:val="0096517C" />
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
          <w:rsid w:val="0096517C" />
          <w:rPr>
            <w:rFonts w:ascii="Tahoma" w:h-ansi="Tahoma" w:cs="Tahoma" />
            <w:sz w:val="16" />
            <w:sz-cs w:val="16" />
          </w:rPr>
        </w:style>
        <w:style w:type="paragraph" w:styleId="Rozvrendokumentu">
          <w:name w:val="Document Map" />
          <wx:uiName wx:val="Rozvržení dokumentu" />
          <w:basedOn w:val="Normln" />
          <w:semiHidden />
          <w:rsid w:val="0096517C" />
          <w:pPr>
            <w:pStyle w:val="Rozvrendokumentu" />
            <w:shd w:val="clear" w:color="auto" w:fill="000080" />
          </w:pPr>
          <w:rPr>
            <w:rFonts w:ascii="Tahoma" w:h-ansi="Tahoma" w:cs="Tahoma" />
            <wx:font wx:val="Tahoma" />
            <w:sz-cs w:val="20" />
          </w:rPr>
        </w:style>
      </w:styles>
      <w:shapeDefaults>
        <o:shapedefaults v:ext="edit" spidmax="28674" />
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
        <w:hdrShapeDefaults>
          <o:shapedefaults v:ext="edit" spidmax="28674" />
        </w:hdrShapeDefaults>
        <w:footnotePr>
          <w:footnote w:type="separator">
            <w:p wsp:rsidR="007D4203" wsp:rsidRDefault="007D4203">
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:footnote>
          <w:footnote w:type="continuation-separator">
            <w:p wsp:rsidR="007D4203" wsp:rsidRDefault="007D4203">
              <w:r>
                <w:continuationSeparator />
              </w:r>
            </w:p>
          </w:footnote>
        </w:footnotePr>
        <w:endnotePr>
          <w:endnote w:type="separator">
            <w:p wsp:rsidR="007D4203" wsp:rsidRDefault="007D4203">
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:endnote>
          <w:endnote w:type="continuation-separator">
            <w:p wsp:rsidR="007D4203" wsp:rsidRDefault="007D4203">
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
        <w:docVars>
          <w:docVar w:name="__Grammarly_42____i" w:val="H4sIAAAAAAAEAKtWckksSQxILCpxzi/NK1GyMqwFAAEhoTITAAAA" />
          <w:docVar w:name="__Grammarly_42___1" w:val="H4sIAAAAAAAEAKtWcslP9kxRslIyNDYyNjc2tzQwNDKwMDE0MzRU0lEKTi0uzszPAykwqQUAyTt0WiwAAAA=" />
        </w:docVars>
        <wsp:rsids>
          <wsp:rsidRoot wsp:val="00103157" />
          <wsp:rsid wsp:val="00103157" />
          <wsp:rsid wsp:val="001E3CF3" />
          <wsp:rsid wsp:val="002A3A33" />
          <wsp:rsid wsp:val="004B2477" />
          <wsp:rsid wsp:val="00511775" />
          <wsp:rsid wsp:val="007D4203" />
          <wsp:rsid wsp:val="008623C9" />
          <wsp:rsid wsp:val="009C6C1E" />
          <wsp:rsid wsp:val="00AE65B9" />
          <wsp:rsid wsp:val="00B14F72" />
          <wsp:rsid wsp:val="00BD7C11" />
          <wsp:rsid wsp:val="00D80ECD" />
        </wsp:rsids>
        <w:showXMLTags w:val="off" />
      </w:docPr>
      <w:body>
        <wx:sect>
          <xsl:apply-templates select="ns2:Proposal" />
          <w:sectPr wsp:rsidR="00103157" wsp:rsidSect="00103157">
            <w:type w:val="continuous" />
            <w:pgSz w:w="11900" w:h="16840" w:code="9" />
            <w:pgMar w:top="720" w:right="987" w:bottom="720" w:left="992" w:header="709" w:footer="709" w:gutter="0" />
            <w:cols w:space="708" />
            <w:docGrid w:line-pitch="360" />
          </w:sectPr>
        </wx:sect>
      </w:body>
    </w:wordDocument>
  </xsl:template>
  <xsl:template match="/ns2:Proposal">
    <ns2:Proposal>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="002A3A33">
        <w:pPr>
          <w:tabs>
            <w:tab w:val="left" w:pos="-1980" />
          </w:tabs>
          <w:jc w:val="right" />
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI Light" w:h-ansi="Segoe UI Light" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI Light" />
            <w:color w:val="E43025" />
            <w:sz w:val="60" />
            <w:sz-cs w:val="60" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
        <w:r>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI Light" w:h-ansi="Segoe UI Light" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI Light" />
            <w:color w:val="E43025" />
            <w:sz w:val="60" />
            <w:sz-cs w:val="60" />
            <w:lang w:val="CS" />
          </w:rPr> <w:t><xsl:text>Nabídka</xsl:text></w:t></w:r>
      </w:p>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
        <w:pPr>
          <w:tabs>
            <w:tab w:val="left" w:pos="-1980" />
          </w:tabs>
          <w:jc w:val="right" />
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="28" />
            <w:sz-cs w:val="28" />
            <w:lang w:val="CS" />
          </w:rPr>
          <w:sectPr wsp:rsidR="00103157">
            <w:ftr w:type="odd">
              <wx:pBdrGroup>
                <wx:borders>
                  <wx:top wx:val="solid" wx:bdrwidth="10" wx:space="1" wx:color="BFBFBF" />
                </wx:borders>
                <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
                  <w:pPr>
                    <w:pStyle w:val="Zpat" />
                    <w:pBdr>
                      <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="1" w:color="BFBFBF" />
                    </w:pBdr>
                    <w:tabs>
                      <w:tab w:val="clear" w:pos="4320" />
                      <w:tab w:val="clear" w:pos="8640" />
                      <w:tab w:val="center" w:pos="9360" />
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
                  <w:r wsp:rsidR="002A3A33">
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
                  <w:r wsp:rsidR="00511775">
                    <w:rPr>
                      <w:noProof />
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>29.09.2020</xsl:text></w:t></w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="end" />
                  </w:r>
                  <w:r wsp:rsidR="002A3A33">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:tab wx:wTab="7605" wx:tlc="none" wx:cTlc="168" /> <w:t><xsl:text>  Vytvořeno v eWay-CRM®</xsl:text></w:t></w:r>
                </w:p>
              </wx:pBdrGroup>
            </w:ftr>
            <w:pgSz w:w="11900" w:h="16840" />
            <w:pgMar w:top="709" w:right="987" w:bottom="1134" w:left="709" w:header="709" w:footer="709" w:gutter="0" />
            <w:cols w:space="708" />
            <w:docGrid w:line-pitch="360" />
          </w:sectPr>
        </w:pPr>
        <xsl:apply-templates select="ns2:ID" />
      </w:p>
      <w:tbl>
        <w:tblPr>
          <w:tblW w:w="10080" w:type="dxa" />
          <w:tblInd w:w="-72" w:type="dxa" />
          <w:tblLook w:val="04A0" />
        </w:tblPr>
        <w:tblGrid>
          <w:gridCol w:w="5040" />
          <w:gridCol w:w="5040" />
        </w:tblGrid>
        <w:tr wsp:rsidR="00103157" wsp:rsidTr="00511775">
          <w:trPr>
            <w:trHeight w:val="358" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5040" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00103157" wsp:rsidRDefault="002A3A33">
              <w:pPr>
                <w:spacing w:before="240" />
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Dodavatel</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5040" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <w:p wsp:rsidR="00103157" wsp:rsidRDefault="002A3A33">
              <w:pPr>
                <w:spacing w:before="240" />
                <w:ind w:left="120" />
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Odběratel</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00103157" wsp:rsidTr="00511775">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5040" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <xsl:apply-templates select="ns2:MyCompany[1]" />
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5040" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <xsl:apply-templates select="ns2:Customer[1]" />
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00103157" wsp:rsidTr="00511775">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5040" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <xsl:apply-templates select="ns2:Owner" />
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5040" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <xsl:apply-templates select="ns2:ContactPerson" />
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00103157" wsp:rsidTr="00511775">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5040" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <xsl:apply-templates select="ns2:MyCompany[2]" />
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5040" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <xsl:apply-templates select="ns2:Customer[2]" />
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00103157" wsp:rsidTr="00511775">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5040" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <xsl:apply-templates select="ns2:MyCompany[position() &gt;= 3]" />
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5040" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <xsl:apply-templates select="ns2:Customer[position() &gt;= 3]" />
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00103157">
        <w:pPr>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00103157">
        <w:pPr>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00103157">
        <w:pPr>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00103157">
        <w:pPr>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00103157">
        <w:pPr>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:tbl>
        <w:tblPr>
          <w:tblW w:w="10080" w:type="dxa" />
          <w:tblInd w:w="-72" w:type="dxa" />
          <w:tblBorders>
            <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
            <w:left w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
            <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
            <w:right w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
            <w:insideH w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
            <w:insideV w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
          </w:tblBorders>
          <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
          <w:tblLayout w:type="Fixed" />
          <w:tblLook w:val="04A0" />
        </w:tblPr>
        <w:tblGrid>
          <w:gridCol w:w="1359" />
          <w:gridCol w:w="4041" />
          <w:gridCol w:w="1260" />
          <w:gridCol w:w="500" />
          <w:gridCol w:w="1120" />
          <w:gridCol w:w="1800" />
        </w:tblGrid>
        <w:tr wsp:rsidR="00103157" wsp:rsidTr="00AE65B9">
          <w:trPr>
            <w:trHeight w:val="397" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1359" w:type="dxa" />
              <w:tcBorders>
                <w:top w:val="nil" />
                <w:left w:val="nil" />
                <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
                <w:right w:val="nil" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00103157" wsp:rsidRDefault="002A3A33">
              <w:pPr>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Kód</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="4041" w:type="dxa" />
              <w:tcBorders>
                <w:top w:val="nil" />
                <w:left w:val="nil" />
                <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
                <w:right w:val="nil" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00103157" wsp:rsidRDefault="002A3A33">
              <w:pPr>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Název</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1260" w:type="dxa" />
              <w:tcBorders>
                <w:top w:val="nil" />
                <w:left w:val="nil" />
                <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
                <w:right w:val="nil" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00103157" wsp:rsidRDefault="002A3A33">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Množství</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1620" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:tcBorders>
                <w:top w:val="nil" />
                <w:left w:val="nil" />
                <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
                <w:right w:val="nil" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00103157" wsp:rsidRDefault="002A3A33">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Cena / m.j</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1800" w:type="dxa" />
              <w:tcBorders>
                <w:top w:val="nil" />
                <w:left w:val="nil" />
                <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
                <w:right w:val="nil" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00103157" wsp:rsidRDefault="002A3A33">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Cena celkem</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <xsl:apply-templates select="ns2:Goods" />
        <w:tr wsp:rsidR="00103157">
          <w:trPr>
            <w:trHeight w:val="397" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="7160" w:type="dxa" />
              <w:gridSpan w:val="4" />
              <w:tcBorders>
                <w:top w:val="nil" />
                <w:left w:val="nil" />
                <w:bottom w:val="nil" />
                <w:right w:val="nil" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00103157" wsp:rsidRDefault="002A3A33">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Celkem bez DPH</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2920" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:tcBorders>
                <w:top w:val="nil" />
                <w:left w:val="nil" />
                <w:bottom w:val="nil" />
                <w:right w:val="nil" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
                  <wx:font wx:val="Segoe UI Semibold" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="26" />
                  <w:sz-cs w:val="26" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns2:PriceTotalExcludingVAT" />
              <w:r wsp:rsidR="002A3A33">
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
                  <wx:font wx:val="Segoe UI Semibold" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="26" />
                  <w:sz-cs w:val="26" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns2:CurrencyEn" />
            </w:p>
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00103157">
        <w:pPr>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00103157">
        <w:pPr>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00103157">
        <w:pPr>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
        <w:pPr>
          <w:ind w:left="-43" />
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
        <xsl:apply-templates select="ns2:Note" />
      </w:p>
    </ns2:Proposal>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:CurrencyEn">
    <ns2:CurrencyEn>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
          <wx:font wx:val="Segoe UI Semibold" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="26" />
          <w:sz-cs w:val="26" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:CurrencyEn>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:ContactPerson">
    <ns2:ContactPerson>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns2:FileAs" />
    </ns2:ContactPerson>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:ContactPerson/ns2:FileAs">
    <ns2:FileAs>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="002A3A33">
        <w:pPr>
          <w:ind w:left="120" />
        </w:pPr>
        <w:r>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
      </w:p>
    </ns2:FileAs>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:MyCompany[1]">
    <ns2:MyCompany>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
        <w:pPr>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
            <wx:font wx:val="Segoe UI Semibold" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
        <xsl:apply-templates select="ns2:MyCompanyName" />
      </w:p>
    </ns2:MyCompany>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:MyCompany[1]/ns2:MyCompanyName">
    <ns2:MyCompanyName>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
          <wx:font wx:val="Segoe UI Semibold" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:MyCompanyName>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:MyCompany[2]">
    <ns2:MyCompany>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
        <w:pPr>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
        <xsl:apply-templates select="ns2:MyCompanyStreet" />
      </w:p>
    </ns2:MyCompany>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:MyCompany[2]/ns2:MyCompanyStreet">
    <ns2:MyCompanyStreet>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:MyCompanyStreet>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:MyCompany[position() &gt;= 3]">
    <ns2:MyCompany>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
        <w:pPr>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
        <xsl:apply-templates select="ns2:MyCompanyZip" />
        <w:r wsp:rsidR="002A3A33">
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
        <xsl:apply-templates select="ns2:MyCompanyCity" />
      </w:p>
    </ns2:MyCompany>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:MyCompany[position() &gt;= 3]/ns2:MyCompanyCity">
    <ns2:MyCompanyCity>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:MyCompanyCity>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:MyCompany[position() &gt;= 3]/ns2:MyCompanyZip">
    <ns2:MyCompanyZip>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:MyCompanyZip>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:PriceTotalExcludingVAT">
    <ns2:PriceTotalExcludingVAT>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
          <wx:font wx:val="Segoe UI Semibold" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="26" />
          <w:sz-cs w:val="26" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:PriceTotalExcludingVAT>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Customer[1]">
    <ns2:Customer>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns2:CompanyName" />
    </ns2:Customer>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Customer[1]/ns2:CompanyName">
    <ns2:CompanyName>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="002A3A33">
        <w:pPr>
          <w:ind w:left="120" />
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
            <wx:font wx:val="Segoe UI Semibold" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
        <w:r>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
            <wx:font wx:val="Segoe UI Semibold" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
      </w:p>
    </ns2:CompanyName>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Customer[2]">
    <ns2:Customer>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
        <w:pPr>
          <w:ind w:left="120" />
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
        <xsl:apply-templates select="ns2:Address1Street" />
      </w:p>
    </ns2:Customer>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Customer[2]/ns2:Address1Street">
    <ns2:Address1Street>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:Address1Street>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Customer[position() &gt;= 3]">
    <ns2:Customer>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
        <w:pPr>
          <w:spacing w:after="360" />
          <w:ind w:left="119" />
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
        <xsl:apply-templates select="ns2:Address1PostalCode" />
        <w:r wsp:rsidR="002A3A33">
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
        <xsl:apply-templates select="ns2:Address1City" />
      </w:p>
    </ns2:Customer>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Customer[position() &gt;= 3]/ns2:Address1City">
    <ns2:Address1City>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:Address1City>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Customer[position() &gt;= 3]/ns2:Address1PostalCode">
    <ns2:Address1PostalCode>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:Address1PostalCode>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Owner">
    <ns2:Owner>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns2:FileAs" />
    </ns2:Owner>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Owner/ns2:FileAs">
    <ns2:FileAs>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00103157" wsp:rsidRDefault="002A3A33">
        <w:r>
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
      </w:p>
    </ns2:FileAs>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Goods">
    <ns2:Goods>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns2:Item" />
    </ns2:Goods>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Goods/ns2:Item">
    <ns2:Item>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:tr wsp:rsidR="00103157" wsp:rsidTr="00AE65B9">
        <w:trPr>
          <w:trHeight w:val="397" />
        </w:trPr>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="1359" w:type="dxa" />
            <w:tcBorders>
              <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:left w:val="nil" />
              <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:right w:val="nil" />
            </w:tcBorders>
            <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
            <w:vAlign w:val="center" />
          </w:tcPr>
          <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
            <w:pPr>
              <w:rPr>
                <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                <wx:font wx:val="Segoe UI" />
                <w:b-cs />
                <w:color w:val="414042" />
                <w:sz w:val="22" />
                <w:sz-cs w:val="22" />
                <w:lang w:val="CS" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns2:Code" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="4041" w:type="dxa" />
            <w:tcBorders>
              <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:left w:val="nil" />
              <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:right w:val="nil" />
            </w:tcBorders>
            <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
            <w:vAlign w:val="center" />
          </w:tcPr>
          <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
            <w:pPr>
              <w:rPr>
                <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                <wx:font wx:val="Segoe UI" />
                <w:b-cs />
                <w:color w:val="414042" />
                <w:sz w:val="22" />
                <w:sz-cs w:val="22" />
                <w:lang w:val="CS" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns2:FileAs" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="1260" w:type="dxa" />
            <w:tcBorders>
              <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:left w:val="nil" />
              <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:right w:val="nil" />
            </w:tcBorders>
            <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
            <w:vAlign w:val="center" />
          </w:tcPr>
          <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
            <w:pPr>
              <w:jc w:val="right" />
              <w:rPr>
                <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                <wx:font wx:val="Segoe UI" />
                <w:b-cs />
                <w:color w:val="414042" />
                <w:sz w:val="22" />
                <w:sz-cs w:val="22" />
                <w:lang w:val="CS" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns2:Quantity" />
            <w:r wsp:rsidR="002A3A33">
              <w:rPr>
                <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                <wx:font wx:val="Segoe UI" />
                <w:b-cs />
                <w:color w:val="414042" />
                <w:sz w:val="22" />
                <w:sz-cs w:val="22" />
                <w:lang w:val="CS" />
              </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            <xsl:apply-templates select="ns2:UnitEn" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="1620" w:type="dxa" />
            <w:gridSpan w:val="2" />
            <w:tcBorders>
              <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:left w:val="nil" />
              <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:right w:val="nil" />
            </w:tcBorders>
            <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
            <w:vAlign w:val="center" />
          </w:tcPr>
          <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
            <w:pPr>
              <w:jc w:val="right" />
              <w:rPr>
                <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                <wx:font wx:val="Segoe UI" />
                <w:b-cs />
                <w:color w:val="414042" />
                <w:sz w:val="22" />
                <w:sz-cs w:val="22" />
                <w:lang w:val="CS" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns2:SalePriceExcludingVAT" />
            <w:r wsp:rsidR="002A3A33">
              <w:rPr>
                <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                <wx:font wx:val="Segoe UI" />
                <w:b-cs />
                <w:color w:val="414042" />
                <w:sz w:val="22" />
                <w:sz-cs w:val="22" />
                <w:lang w:val="CS" />
              </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            <xsl:apply-templates select="ns2:SaleCurrencyEn[1]" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="1800" w:type="dxa" />
            <w:tcBorders>
              <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:left w:val="nil" />
              <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:right w:val="nil" />
            </w:tcBorders>
            <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
            <w:vAlign w:val="center" />
          </w:tcPr>
          <w:p wsp:rsidR="00103157" wsp:rsidRDefault="00D80ECD">
            <w:pPr>
              <w:jc w:val="right" />
              <w:rPr>
                <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                <wx:font wx:val="Segoe UI" />
                <w:b-cs />
                <w:color w:val="414042" />
                <w:sz w:val="22" />
                <w:sz-cs w:val="22" />
                <w:lang w:val="CS" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns2:PriceTotalExcludingVAT" />
            <w:r wsp:rsidR="002A3A33">
              <w:rPr>
                <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                <wx:font wx:val="Segoe UI" />
                <w:b-cs />
                <w:color w:val="414042" />
                <w:sz w:val="22" />
                <w:sz-cs w:val="22" />
                <w:lang w:val="CS" />
              </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            <xsl:apply-templates select="ns2:SaleCurrencyEn[position() &gt;= 2]" />
            <w:r wsp:rsidR="002A3A33">
              <w:rPr>
                <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                <wx:font wx:val="Segoe UI" />
                <w:b-cs />
                <w:color w:val="414042" />
                <w:sz w:val="22" />
                <w:sz-cs w:val="22" />
                <w:lang w:val="CS" />
              </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
          </w:p>
        </w:tc>
      </w:tr>
    </ns2:Item>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Goods/ns2:Item/ns2:Code">
    <ns2:Code>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:Code>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Goods/ns2:Item/ns2:PriceTotalExcludingVAT">
    <ns2:PriceTotalExcludingVAT>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:PriceTotalExcludingVAT>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Goods/ns2:Item/ns2:Quantity">
    <ns2:Quantity>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:Quantity>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Goods/ns2:Item/ns2:SalePriceExcludingVAT">
    <ns2:SalePriceExcludingVAT>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:SalePriceExcludingVAT>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Goods/ns2:Item/ns2:FileAs">
    <ns2:FileAs>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:FileAs>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Goods/ns2:Item/ns2:UnitEn">
    <ns2:UnitEn>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:UnitEn>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:ID">
    <ns2:ID>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="28" />
          <w:sz-cs w:val="28" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:ID>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Note">
    <ns2:Note>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:Note>
  </xsl:template>
  <xsl:template match="/ns2:Proposal/ns2:Goods/ns2:Item/ns2:SaleCurrencyEn">
    <ns2:SaleCurrencyEn>
      <xsl:for-each select="@ns2:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="002A3A33">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns2:SaleCurrencyEn>
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