BEGIN_SETUP:

/******* XSLT Transformation Insert **********/
DECLARE @Name NVARCHAR(32);
	SET @Name = N'Letter'

DECLARE @FolderName NVARCHAR(50);
	SET @FolderName = N'Contacts';

DECLARE @LangCode NVARCHAR(256);
	SET @LangCode = N'en';
	
DECLARE @Namespace NVARCHAR(256);
	SET @Namespace = N'urn:eway:document-schemas:export-wml-contact';

DECLARE @TransformationVersion INT
	SET @TransformationVersion = 2; -- Only historical Proposals have version = 1, default is 2

DECLARE @DuplicateToOtherLanguages INT
	SET @DuplicateToOtherLanguages = 0	-- Set to 1 if you want to copy the same definition to other languages

DECLARE @Definition NVARCHAR(MAX);
	SET @Definition = N'<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2" xmlns:ns0="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:ns1="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:ns3="urn:eway:document-schemas:export-wml-contact">
  <xsl:output method="xml" encoding="UTF-8" standalone="yes" />
  <xsl:template match="/">
    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Word.Document"</xsl:text>
    </xsl:processing-instruction>
    <w:wordDocument xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2" xmlns:ns0="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:ns1="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:ns3="urn:eway:document-schemas:export-wml-contact" w:macrosPresent="no" w:embeddedObjPresent="no" w:ocxPresent="no" xml:space="preserve">
      <w:ignoreElements w:val="http://schemas.microsoft.com/office/word/2003/wordml/sp2" />
      <o:DocumentProperties>
        <o:Title>Dopis</o:Title>
        <o:Author>Jan Lalinský</o:Author>
        <o:LastAuthor>jfrondl</o:LastAuthor>
        <o:Revision>8</o:Revision>
        <o:TotalTime>6</o:TotalTime>
        <o:Created>2020-08-12T06:19:00Z</o:Created>
        <o:LastSaved>2020-10-06T12:04:00Z</o:LastSaved>
        <o:Pages>1</o:Pages>
        <o:Words>32</o:Words>
        <o:Characters>191</o:Characters>
        <o:Lines>1</o:Lines>
        <o:Paragraphs>1</o:Paragraphs>
        <o:CharactersWithSpaces>222</o:CharactersWithSpaces>
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
          <w:rsid w:val="00474192" />
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
          <w:rsid w:val="00474192" />
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
          <w:rsid w:val="00474192" />
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
          <w:rsid w:val="00474192" />
        </w:style>
        <w:style w:type="paragraph" w:styleId="Zpat">
          <w:name w:val="footer" />
          <wx:uiName wx:val="Zápatí" />
          <w:basedOn w:val="Normln" />
          <w:link w:val="FooterChar" />
          <w:rsid w:val="00474192" />
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
          <w:rsid w:val="00474192" />
        </w:style>
        <w:style w:type="paragraph" w:styleId="Textbubliny">
          <w:name w:val="Balloon Text" />
          <wx:uiName wx:val="Text bubliny" />
          <w:basedOn w:val="Normln" />
          <w:link w:val="BalloonTextChar" />
          <w:rsid w:val="00474192" />
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
          <w:rsid w:val="00474192" />
          <w:rPr>
            <w:rFonts w:ascii="Tahoma" w:h-ansi="Tahoma" w:cs="Tahoma" />
            <w:sz w:val="16" />
            <w:sz-cs w:val="16" />
          </w:rPr>
        </w:style>
      </w:styles>
      <w:shapeDefaults>
        <o:shapedefaults v:ext="edit" spidmax="8194" />
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
            <w:p wsp:rsidR="005466BA" wsp:rsidRDefault="005466BA">
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:footnote>
          <w:footnote w:type="continuation-separator">
            <w:p wsp:rsidR="005466BA" wsp:rsidRDefault="005466BA">
              <w:r>
                <w:continuationSeparator />
              </w:r>
            </w:p>
          </w:footnote>
        </w:footnotePr>
        <w:endnotePr>
          <w:endnote w:type="separator">
            <w:p wsp:rsidR="005466BA" wsp:rsidRDefault="005466BA">
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:endnote>
          <w:endnote w:type="continuation-separator">
            <w:p wsp:rsidR="005466BA" wsp:rsidRDefault="005466BA">
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
          <wsp:rsidRoot wsp:val="00700B2B" />
          <wsp:rsid wsp:val="000B6172" />
          <wsp:rsid wsp:val="002A47C1" />
          <wsp:rsid wsp:val="00382B18" />
          <wsp:rsid wsp:val="004337D7" />
          <wsp:rsid wsp:val="0047713A" />
          <wsp:rsid wsp:val="004A3DD8" />
          <wsp:rsid wsp:val="004A732E" />
          <wsp:rsid wsp:val="004C524F" />
          <wsp:rsid wsp:val="005466BA" />
          <wsp:rsid wsp:val="005818E1" />
          <wsp:rsid wsp:val="00700B2B" />
          <wsp:rsid wsp:val="00752441" />
          <wsp:rsid wsp:val="00935571" />
          <wsp:rsid wsp:val="00A531BA" />
          <wsp:rsid wsp:val="00CC18C5" />
          <wsp:rsid wsp:val="00D60DC5" />
          <wsp:rsid wsp:val="00D64CEA" />
          <wsp:rsid wsp:val="00F335A6" />
          <wsp:rsid wsp:val="00FB219F" />
        </wsp:rsids>
        <w:showXMLTags w:val="off" />
      </w:docPr>
      <w:body>
        <wx:sect>
          <xsl:apply-templates select="ns3:Contact" />
          <w:sectPr wsp:rsidR="00700B2B" wsp:rsidSect="00700B2B">
            <w:ftr w:type="odd">
              <wx:pBdrGroup>
                <wx:borders>
                  <wx:top wx:val="solid" wx:bdrwidth="10" wx:space="1" wx:color="BFBFBF" />
                </wx:borders>
                <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="004A3DD8">
                  <w:pPr>
                    <w:pStyle w:val="Zpat" />
                    <w:pBdr>
                      <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="1" w:color="BFBFBF" />
                    </w:pBdr>
                    <w:tabs>
                      <w:tab w:val="clear" w:pos="4320" />
                      <w:tab w:val="clear" w:pos="8640" />
                      <w:tab w:val="center" w:pos="5103" />
                      <w:tab w:val="right" w:pos="10206" />
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
                  <w:r wsp:rsidR="00382B18">
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
                  <w:r wsp:rsidR="00752441">
                    <w:rPr>
                      <w:noProof />
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>6.10.2020</xsl:text></w:t></w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="end" />
                  </w:r>
                  <w:r wsp:rsidR="00D64CEA">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:tab /> <w:t><xsl:text>                                                                                                                                                                                     </xsl:text></w:t></w:r>
                  <w:r wsp:rsidR="00935571">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>Created in</xsl:text></w:t></w:r>
                  <w:r wsp:rsidR="00382B18">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text> eWay-CRM®</xsl:text></w:t></w:r>
                </w:p>
              </wx:pBdrGroup>
            </w:ftr>
            <w:pgSz w:w="11900" w:h="16840" />
            <w:pgMar w:top="709" w:right="985" w:bottom="1135" w:left="993" w:header="708" w:footer="708" w:gutter="0" />
            <w:cols w:space="708" />
            <w:docGrid w:line-pitch="360" />
          </w:sectPr>
        </wx:sect>
      </w:body>
    </w:wordDocument>
  </xsl:template>
  <xsl:template match="/ns3:Contact">
    <ns3:Contact>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="00382B18">
        <w:pPr>
          <w:spacing w:after="120" />
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
          </w:rPr> <w:t><xsl:text>Letter</xsl:text></w:t></w:r>
      </w:p>
      <w:tbl>
        <w:tblPr>
          <w:tblW w:w="10065" w:type="dxa" />
          <w:tblInd w:w="-34" w:type="dxa" />
          <w:tblLook w:val="04A0" />
        </w:tblPr>
        <w:tblGrid>
          <w:gridCol w:w="5032" />
          <w:gridCol w:w="5033" />
        </w:tblGrid>
        <w:tr wsp:rsidR="00700B2B" wsp:rsidTr="00935571">
          <w:trPr>
            <w:trHeight w:val="358" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5029" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="00382B18">
              <w:pPr>
                <w:spacing w:before="240" />
                <w:ind w:left="38" w:hanging="38" />
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
                </w:rPr> <w:t><xsl:text>Sender</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5029" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="00382B18">
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
                </w:rPr> <w:t><xsl:text>Recipient</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00700B2B" wsp:rsidTr="00935571">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5029" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <xsl:apply-templates select="ns3:CurrentUser" />
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5029" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="004A3DD8">
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
              <xsl:apply-templates select="ns3:FileAs" />
              <w:r wsp:rsidR="00382B18">
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
                  <wx:font wx:val="Segoe UI Semibold" />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00700B2B" wsp:rsidTr="00935571">
          <w:trPr>
            <w:trHeight w:val="279" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5029" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <xsl:apply-templates select="ns3:MyCompany[1]" />
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5029" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <xsl:apply-templates select="ns3:Company" />
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00700B2B" wsp:rsidTr="00935571">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5029" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <xsl:apply-templates select="ns3:MyCompany[2]" />
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5029" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="004A3DD8">
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
              <xsl:apply-templates select="ns3:BusinessAddressStreet" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00700B2B" wsp:rsidTr="00935571">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5029" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <xsl:apply-templates select="ns3:MyCompany[position() &gt;= 3]" />
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5029" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="004A3DD8">
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
              <xsl:apply-templates select="ns3:BusinessAddressPostalCode" />
              <w:r wsp:rsidR="00382B18">
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns3:BusinessAddressCity" />
              <w:r wsp:rsidR="00752441">
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns3:BusinessAddressState" />
            </w:p>
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="00700B2B">
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
      <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="00700B2B">
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
      <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="004A3DD8">
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
    </ns3:Contact>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:BusinessAddressState">
    <ns3:BusinessAddressState>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00D60DC5">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:BusinessAddressState>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:BusinessAddressStreet">
    <ns3:BusinessAddressStreet>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00382B18">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:BusinessAddressStreet>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:BusinessAddressPostalCode">
    <ns3:BusinessAddressPostalCode>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00382B18">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:BusinessAddressPostalCode>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:CurrentUser">
    <ns3:CurrentUser>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="004A3DD8">
        <w:pPr>
          <w:ind w:left="38" w:hanging="38" />
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
            <wx:font wx:val="Segoe UI Semibold" />
            <w:b />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
        <xsl:apply-templates select="ns3:FileAs" />
      </w:p>
    </ns3:CurrentUser>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:CurrentUser/ns3:FileAs">
    <ns3:FileAs>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00382B18" wsp:rsidRPr="004C524F">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
          <wx:font wx:val="Segoe UI Semibold" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:FileAs>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:Company">
    <ns3:Company>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="004A3DD8">
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
        <xsl:apply-templates select="ns3:CompanyName" />
      </w:p>
    </ns3:Company>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:Company/ns3:CompanyName">
    <ns3:CompanyName>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00382B18">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:CompanyName>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:BusinessAddressCity">
    <ns3:BusinessAddressCity>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00382B18">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:BusinessAddressCity>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:FileAs">
    <ns3:FileAs>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00382B18">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
          <wx:font wx:val="Segoe UI Semibold" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:FileAs>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:MyCompany[1]">
    <ns3:MyCompany>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="004A3DD8">
        <w:pPr>
          <w:ind w:left="38" w:hanging="38" />
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:b />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
        <xsl:apply-templates select="ns3:MyCompanyName" />
      </w:p>
    </ns3:MyCompany>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:MyCompany[1]/ns3:MyCompanyName">
    <ns3:MyCompanyName>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00382B18">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:MyCompanyName>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:MyCompany[2]">
    <ns3:MyCompany>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="004A3DD8">
        <w:pPr>
          <w:ind w:left="38" w:hanging="38" />
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
        <xsl:apply-templates select="ns3:MyCompanyStreet" />
      </w:p>
    </ns3:MyCompany>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:MyCompany[2]/ns3:MyCompanyStreet">
    <ns3:MyCompanyStreet>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00382B18">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:MyCompanyStreet>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:MyCompany[position() &gt;= 3]">
    <ns3:MyCompany>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00700B2B" wsp:rsidRDefault="004A3DD8">
        <w:pPr>
          <w:spacing w:after="360" />
          <w:ind w:left="38" w:hanging="38" />
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr>
        </w:pPr>
        <xsl:apply-templates select="ns3:MyCompanyZip" />
        <w:r wsp:rsidR="00382B18">
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
        <xsl:apply-templates select="ns3:MyCompanyCity" />
        <w:r wsp:rsidR="00D60DC5">
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr> <w:t><xsl:text>, </xsl:text></w:t></w:r>
        <xsl:apply-templates select="ns3:MyCompanyState" />
      </w:p>
    </ns3:MyCompany>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:MyCompany[position() &gt;= 3]/ns3:MyCompanyState">
    <ns3:MyCompanyState>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00D60DC5">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:MyCompanyState>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:MyCompany[position() &gt;= 3]/ns3:MyCompanyZip">
    <ns3:MyCompanyZip>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00382B18">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:MyCompanyZip>
  </xsl:template>
  <xsl:template match="/ns3:Contact/ns3:MyCompany[position() &gt;= 3]/ns3:MyCompanyCity">
    <ns3:MyCompanyCity>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='''']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00382B18">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:MyCompanyCity>
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