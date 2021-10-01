<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2" xmlns:ns0="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:ns1="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:ns3="urn:eway:document-schemas:proposal-base2">
  <xsl:output method="xml" encoding="UTF-8" standalone="yes" />
  <xsl:template match="/">
    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Word.Document"</xsl:text>
    </xsl:processing-instruction>
    <w:wordDocument xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:wsp="http://schemas.microsoft.com/office/word/2003/wordml/sp2" xmlns:ns0="http://schemas.microsoft.com/office/word/2010/wordprocessingCanvas" xmlns:ns1="http://schemas.microsoft.com/office/word/2006/wordml" xmlns:ns3="urn:eway:document-schemas:proposal-base2" w:macrosPresent="no" w:embeddedObjPresent="no" w:ocxPresent="no" xml:space="preserve">
      <w:ignoreElements w:val="http://schemas.microsoft.com/office/word/2003/wordml/sp2" />
      <o:DocumentProperties>
        <o:Title>Faktura</o:Title>
        <o:Author>test3</o:Author>
        <o:LastAuthor>jfrondl</o:LastAuthor>
        <o:Revision>4</o:Revision>
        <o:TotalTime>1</o:TotalTime>
        <o:Created>2020-08-11T05:29:00Z</o:Created>
        <o:LastSaved>2020-10-05T07:08:00Z</o:LastSaved>
        <o:Pages>1</o:Pages>
        <o:Words>116</o:Words>
        <o:Characters>690</o:Characters>
        <o:Lines>5</o:Lines>
        <o:Paragraphs>1</o:Paragraphs>
        <o:CharactersWithSpaces>805</o:CharactersWithSpaces>
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
          <w:rsid w:val="00800469" />
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
          <w:rsid w:val="00800469" />
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
          <w:rsid w:val="00800469" />
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
          <w:link w:val="Zhlav" />
          <w:locked />
          <w:rsid w:val="00800469" />
          <w:rPr>
            <w:rFonts w:cs="Times New Roman" />
          </w:rPr>
        </w:style>
        <w:style w:type="paragraph" w:styleId="Zpat">
          <w:name w:val="footer" />
          <wx:uiName wx:val="Zápatí" />
          <w:basedOn w:val="Normln" />
          <w:link w:val="FooterChar" />
          <w:rsid w:val="00800469" />
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
          <w:link w:val="Zpat" />
          <w:locked />
          <w:rsid w:val="00800469" />
          <w:rPr>
            <w:rFonts w:cs="Times New Roman" />
          </w:rPr>
        </w:style>
        <w:style w:type="paragraph" w:styleId="Textbubliny">
          <w:name w:val="Balloon Text" />
          <wx:uiName wx:val="Text bubliny" />
          <w:basedOn w:val="Normln" />
          <w:link w:val="BalloonTextChar" />
          <w:rsid w:val="00800469" />
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
          <w:link w:val="Textbubliny" />
          <w:locked />
          <w:rsid w:val="00800469" />
          <w:rPr>
            <w:rFonts w:ascii="Tahoma" w:h-ansi="Tahoma" w:cs="Times New Roman" />
            <w:sz w:val="16" />
          </w:rPr>
        </w:style>
      </w:styles>
      <w:shapeDefaults>
        <o:shapedefaults v:ext="edit" spidmax="16386" />
        <o:shapelayout v:ext="edit">
          <o:idmap v:ext="edit" data="1" />
        </o:shapelayout>
      </w:shapeDefaults>
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
        <w:hdrShapeDefaults>
          <o:shapedefaults v:ext="edit" spidmax="16386" />
        </w:hdrShapeDefaults>
        <w:footnotePr>
          <w:footnote w:type="separator">
            <w:p wsp:rsidR="00D33487" wsp:rsidRDefault="00D33487">
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:footnote>
          <w:footnote w:type="continuation-separator">
            <w:p wsp:rsidR="00D33487" wsp:rsidRDefault="00D33487">
              <w:r>
                <w:continuationSeparator />
              </w:r>
            </w:p>
          </w:footnote>
        </w:footnotePr>
        <w:endnotePr>
          <w:endnote w:type="separator">
            <w:p wsp:rsidR="00D33487" wsp:rsidRDefault="00D33487">
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:endnote>
          <w:endnote w:type="continuation-separator">
            <w:p wsp:rsidR="00D33487" wsp:rsidRDefault="00D33487">
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
          <w:docVar w:name="__Grammarly_42___1" w:val="H4sIAAAAAAAEAKtWcslP9kxRslIyNDYyNje2MDMyNTA0sjA2NLBQ0lEKTi0uzszPAykwrgUAQCx3DiwAAAA=" />
        </w:docVars>
        <wsp:rsids>
          <wsp:rsidRoot wsp:val="00CE0867" />
          <wsp:rsid wsp:val="00542257" />
          <wsp:rsid wsp:val="00583DD5" />
          <wsp:rsid wsp:val="007A702E" />
          <wsp:rsid wsp:val="00B438F7" />
          <wsp:rsid wsp:val="00B717D9" />
          <wsp:rsid wsp:val="00CE0867" />
          <wsp:rsid wsp:val="00D33487" />
          <wsp:rsid wsp:val="00D55B4D" />
        </wsp:rsids>
        <w:showXMLTags w:val="off" />
      </w:docPr>
      <w:body>
        <wx:sect>
          <xsl:apply-templates select="ns3:Proposal" />
          <w:sectPr wsp:rsidR="00CE0867" wsp:rsidSect="00CE0867">
            <w:ftr w:type="odd">
              <wx:pBdrGroup>
                <wx:borders>
                  <wx:top wx:val="solid" wx:bdrwidth="10" wx:space="1" wx:color="BFBFBF" />
                </wx:borders>
                <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
                  <w:pPr>
                    <w:pStyle w:val="Zpat" />
                    <w:pBdr>
                      <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="1" w:color="BFBFBF" />
                    </w:pBdr>
                    <w:tabs>
                      <w:tab w:val="clear" w:pos="4320" />
                      <w:tab w:val="clear" w:pos="8640" />
                      <w:tab w:val="center" w:pos="5103" />
                      <w:tab w:val="right" w:pos="9639" />
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
                  <w:r wsp:rsidR="00B717D9">
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
                  <w:r wsp:rsidR="007A702E">
                    <w:rPr>
                      <w:noProof />
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>5.10.2020</xsl:text></w:t></w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="end" />
                  </w:r>
                  <w:r wsp:rsidR="00B717D9">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:tab wx:wTab="4380" wx:tlc="none" wx:cTlc="96" />
                  </w:r>
                  <w:r wsp:rsidR="00B717D9">
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:tab wx:wTab="2730" wx:tlc="none" wx:cTlc="60" /> <w:t><xsl:text>Vytvořeno v eWay-CRM®</xsl:text></w:t></w:r>
                </w:p>
              </wx:pBdrGroup>
              <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867" />
            </w:ftr>
            <w:type w:val="continuous" />
            <w:pgSz w:w="11900" w:h="16840" />
            <w:pgMar w:top="720" w:right="985" w:bottom="720" w:left="993" w:header="708" w:footer="708" w:gutter="0" />
            <w:cols w:space="708" />
            <w:docGrid w:line-pitch="360" />
          </w:sectPr>
        </wx:sect>
      </w:body>
    </w:wordDocument>
  </xsl:template>
  <xsl:template match="/ns3:Proposal">
    <ns3:Proposal>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
        <w:pPr>
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
          </w:rPr> <w:t><xsl:text>Faktúra</xsl:text></w:t></w:r>
      </w:p>
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
        <w:pPr>
          <w:spacing w:after="120" />
          <w:jc w:val="right" />
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
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
            <w:color w:val="414042" />
            <w:sz w:val="28" />
            <w:sz-cs w:val="28" />
          </w:rPr> <w:t><xsl:text>Daňový doklad </xsl:text></w:t></w:r>
        <xsl:apply-templates select="ns3:ID" />
      </w:p>
      <w:tbl>
        <w:tblPr>
          <w:tblW w:w="10031" w:type="dxa" />
          <w:tblLook w:val="04A0" />
        </w:tblPr>
        <w:tblGrid>
          <w:gridCol w:w="5148" />
          <w:gridCol w:w="2880" />
          <w:gridCol w:w="2003" />
        </w:tblGrid>
        <w:tr wsp:rsidR="00CE0867" wsp:rsidTr="007A702E">
          <w:trPr>
            <w:trHeight w:val="358" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5148" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
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
                </w:rPr> <w:t><xsl:text>Dodávateľ</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="4883" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
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
                </w:rPr> <w:t><xsl:text>Odberateľ</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00CE0867" wsp:rsidTr="007A702E">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5148" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <xsl:apply-templates select="ns3:MyCompany[1]" />
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="4883" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <xsl:apply-templates select="ns3:Customer[1]" />
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00CE0867" wsp:rsidTr="007A702E">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5148" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <xsl:apply-templates select="ns3:MyCompany[2]" />
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="4883" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <xsl:apply-templates select="ns3:Customer[2]" />
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00CE0867" wsp:rsidTr="007A702E">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5148" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <xsl:apply-templates select="ns3:MyCompany[3]" />
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="4883" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <xsl:apply-templates select="ns3:Customer[3]" />
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00CE0867" wsp:rsidTr="007A702E">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5148" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867">
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
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="4883" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867">
              <w:pPr>
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
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00CE0867" wsp:rsidTr="007A702E">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5148" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
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
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>IČ: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns3:MyCompany[4]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="4883" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
              <w:pPr>
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
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>IČ: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns3:Customer[4]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00CE0867" wsp:rsidTr="007A702E">
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5148" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
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
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>DIČ: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns3:MyCompany[position() &gt;= 5]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="4883" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:shd w:val="clear" w:color="auto" w:fill="F2F2F2" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
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
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>DIČ: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns3:Customer[position() &gt;= 5]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00CE0867" wsp:rsidTr="007A702E">
          <w:trPr>
            <w:trHeight w:val="162" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5148" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867">
              <w:pPr>
                <w:ind w:left="119" />
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="16" />
                  <w:sz-cs w:val="16" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="4883" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867">
              <w:pPr>
                <w:ind w:left="119" />
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="16" />
                  <w:sz-cs w:val="16" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00CE0867" wsp:rsidTr="007A702E">
          <w:trPr>
            <w:trHeight w:val="272" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5148" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867">
              <w:pPr>
                <w:ind w:left="119" />
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="26" />
                  <w:sz-cs w:val="26" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2880" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
              <w:pPr>
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
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Dátum vystavenia</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2003" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
              <w:pPr>
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
              <xsl:apply-templates select="ns3:EffectiveFrom" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00CE0867" wsp:rsidTr="007A702E">
          <w:trPr>
            <w:trHeight w:val="272" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5148" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867">
              <w:pPr>
                <w:ind w:left="119" />
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="26" />
                  <w:sz-cs w:val="26" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2880" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
              <w:pPr>
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
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Dátum zd. plněnia</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2003" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
              <w:pPr>
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
              <xsl:apply-templates select="ns3:TaxableSupplyDate" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00CE0867" wsp:rsidTr="007A702E">
          <w:trPr>
            <w:trHeight w:val="272" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5148" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867">
              <w:pPr>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="26" />
                  <w:sz-cs w:val="26" />
                  <w:lang w:val="CS" />
                </w:rPr>
              </w:pPr>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2880" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
              <w:pPr>
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
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Dátum splatnosti</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2003" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
              <w:pPr>
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
              <xsl:apply-templates select="ns3:ValidUntil" />
            </w:p>
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867">
        <w:pPr>
          <w:ind w:right="-426" />
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
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867">
        <w:pPr>
          <w:ind w:right="-426" />
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
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867">
        <w:pPr>
          <w:ind w:right="-426" />
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
          <w:tblW w:w="10065" w:type="dxa" />
          <w:tblInd w:w="-34" w:type="dxa" />
          <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
          <w:tblLayout w:type="Fixed" />
          <w:tblLook w:val="04A0" />
        </w:tblPr>
        <w:tblGrid>
          <w:gridCol w:w="4111" />
          <w:gridCol w:w="1276" />
          <w:gridCol w:w="1985" />
          <w:gridCol w:w="708" />
          <w:gridCol w:w="1985" />
        </w:tblGrid>
        <w:tr wsp:rsidR="00CE0867">
          <w:trPr>
            <w:trHeight w:val="397" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="4111" w:type="dxa" />
              <w:tcBorders>
                <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
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
                </w:rPr> <w:t><xsl:text>Položka</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1276" w:type="dxa" />
              <w:tcBorders>
                <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
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
                </w:rPr> <w:t><xsl:text>Množstvo</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1985" w:type="dxa" />
              <w:tcBorders>
                <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
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
              <w:tcW w:w="708" w:type="dxa" />
              <w:tcBorders>
                <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
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
                </w:rPr> <w:t><xsl:text>DPH</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1985" w:type="dxa" />
              <w:tcBorders>
                <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
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
                </w:rPr> <w:t><xsl:text>Celkem</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <xsl:apply-templates select="ns3:Goods" />
        <w:tr wsp:rsidR="00CE0867">
          <w:trPr>
            <w:trHeight w:val="397" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="7372" w:type="dxa" />
              <w:gridSpan w:val="3" />
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
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
                </w:rPr> <w:t><xsl:text>Celkom bez DPH</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2693" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
              <xsl:apply-templates select="ns3:PriceTotalExcludingVAT" />
              <w:r wsp:rsidR="00B717D9">
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns3:CurrencyEn[1]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00CE0867">
          <w:trPr>
            <w:trHeight w:val="397" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="7372" w:type="dxa" />
              <w:gridSpan w:val="3" />
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
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
                </w:rPr> <w:t><xsl:text>DPH</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2693" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
              <xsl:apply-templates select="ns3:VAT" />
              <w:r wsp:rsidR="00B717D9">
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                  <wx:font wx:val="Segoe UI" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns3:CurrencyEn[2]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr wsp:rsidR="00CE0867">
          <w:trPr>
            <w:trHeight w:val="397" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="7372" w:type="dxa" />
              <w:gridSpan w:val="3" />
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00B717D9">
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
              <w:r>
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
                  <wx:font wx:val="Segoe UI Semibold" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="26" />
                  <w:sz-cs w:val="26" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text>Celkom s DPH</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2693" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
              <w:vAlign w:val="center" />
            </w:tcPr>
            <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
              <xsl:apply-templates select="ns3:PriceTotal" />
              <w:r wsp:rsidR="00B717D9">
                <w:rPr>
                  <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
                  <wx:font wx:val="Segoe UI Semibold" />
                  <w:b-cs />
                  <w:color w:val="414042" />
                  <w:sz w:val="26" />
                  <w:sz-cs w:val="26" />
                  <w:lang w:val="CS" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns3:CurrencyEn[position() &gt;= 3]" />
            </w:p>
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867">
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
      </w:p>
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867">
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
      </w:p>
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00CE0867">
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
      </w:p>
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
        <xsl:apply-templates select="ns3:Note" />
      </w:p>
    </ns3:Proposal>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:ValidUntil">
    <ns3:ValidUntil>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
          <wx:font wx:val="Segoe UI Semibold" />
          <w:color w:val="414042" />
          <w:sz w:val="26" />
          <w:sz-cs w:val="26" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:ValidUntil>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:MyCompany[1]">
    <ns3:MyCompany>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
        <xsl:apply-templates select="ns3:MyCompanyName" />
      </w:p>
    </ns3:MyCompany>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:MyCompany[1]/ns3:MyCompanyName">
    <ns3:MyCompanyName>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
          <wx:font wx:val="Segoe UI Semibold" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:MyCompanyName>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:MyCompany[2]">
    <ns3:MyCompany>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
        <xsl:apply-templates select="ns3:MyCompanyStreet" />
      </w:p>
    </ns3:MyCompany>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:MyCompany[2]/ns3:MyCompanyStreet">
    <ns3:MyCompanyStreet>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
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
  <xsl:template match="/ns3:Proposal/ns3:MyCompany[3]">
    <ns3:MyCompany>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
        <xsl:apply-templates select="ns3:MyCompanyZip" />
        <w:r wsp:rsidR="00B717D9">
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
        <xsl:apply-templates select="ns3:MyCompanyCity" />
      </w:p>
    </ns3:MyCompany>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:MyCompany[3]/ns3:MyCompanyZip">
    <ns3:MyCompanyZip>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
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
  <xsl:template match="/ns3:Proposal/ns3:MyCompany[3]/ns3:MyCompanyCity">
    <ns3:MyCompanyCity>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
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
  <xsl:template match="/ns3:Proposal/ns3:MyCompany[4]">
    <ns3:MyCompany>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns3:MyCompanyId" />
    </ns3:MyCompany>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:MyCompany[4]/ns3:MyCompanyId">
    <ns3:MyCompanyId>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:MyCompanyId>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:MyCompany[position() &gt;= 5]">
    <ns3:MyCompany>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns3:MyCompanyVatNumber" />
    </ns3:MyCompany>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:MyCompany[position() &gt;= 5]/ns3:MyCompanyVatNumber">
    <ns3:MyCompanyVatNumber>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:MyCompanyVatNumber>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Goods">
    <ns3:Goods>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns3:Item" />
    </ns3:Goods>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Goods/ns3:Item">
    <ns3:Item>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:tr wsp:rsidR="00CE0867">
        <w:trPr>
          <w:trHeight w:val="397" />
        </w:trPr>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="4111" w:type="dxa" />
            <w:tcBorders>
              <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
            </w:tcBorders>
            <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
            <w:vAlign w:val="center" />
          </w:tcPr>
          <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
            <xsl:apply-templates select="ns3:FileAs" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="1276" w:type="dxa" />
            <w:tcBorders>
              <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
            </w:tcBorders>
            <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
            <w:vAlign w:val="center" />
          </w:tcPr>
          <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
            <xsl:apply-templates select="ns3:Quantity" />
            <w:r wsp:rsidR="00B717D9">
              <w:rPr>
                <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                <wx:font wx:val="Segoe UI" />
                <w:b-cs />
                <w:color w:val="414042" />
                <w:sz w:val="22" />
                <w:sz-cs w:val="22" />
                <w:lang w:val="CS" />
              </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            <xsl:apply-templates select="ns3:UnitEn" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="1985" w:type="dxa" />
            <w:tcBorders>
              <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
            </w:tcBorders>
            <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
            <w:vAlign w:val="center" />
          </w:tcPr>
          <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
            <xsl:apply-templates select="ns3:SalePriceExcludingVAT" />
            <w:r wsp:rsidR="00B717D9">
              <w:rPr>
                <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                <wx:font wx:val="Segoe UI" />
                <w:b-cs />
                <w:color w:val="414042" />
                <w:sz w:val="22" />
                <w:sz-cs w:val="22" />
                <w:lang w:val="CS" />
              </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            <xsl:apply-templates select="ns3:SaleCurrencyEn[1]" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="708" w:type="dxa" />
            <w:tcBorders>
              <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
            </w:tcBorders>
            <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
            <w:vAlign w:val="center" />
          </w:tcPr>
          <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
            <xsl:apply-templates select="ns3:VATRate" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="1985" w:type="dxa" />
            <w:tcBorders>
              <w:top w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
              <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="BFBFBF" />
            </w:tcBorders>
            <w:shd w:val="clear" w:color="auto" w:fill="FFFFFF" />
            <w:vAlign w:val="center" />
          </w:tcPr>
          <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
            <xsl:apply-templates select="ns3:PriceTotalExcludingVAT" />
            <w:r wsp:rsidR="00B717D9">
              <w:rPr>
                <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
                <wx:font wx:val="Segoe UI" />
                <w:b-cs />
                <w:color w:val="414042" />
                <w:sz w:val="22" />
                <w:sz-cs w:val="22" />
                <w:lang w:val="CS" />
              </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            <xsl:apply-templates select="ns3:SaleCurrencyEn[position() &gt;= 2]" />
            <w:r wsp:rsidR="00B717D9">
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
    </ns3:Item>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Goods/ns3:Item/ns3:UnitEn">
    <ns3:UnitEn>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:UnitEn>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Goods/ns3:Item/ns3:VATRate">
    <ns3:VATRate>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:VATRate>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Goods/ns3:Item/ns3:FileAs">
    <ns3:FileAs>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:FileAs>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Goods/ns3:Item/ns3:Quantity">
    <ns3:Quantity>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:Quantity>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Goods/ns3:Item/ns3:SalePriceExcludingVAT">
    <ns3:SalePriceExcludingVAT>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:SalePriceExcludingVAT>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:TaxableSupplyDate">
    <ns3:TaxableSupplyDate>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:TaxableSupplyDate>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Note">
    <ns3:Note>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:Note>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:ID">
    <ns3:ID>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="28" />
          <w:sz-cs w:val="28" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:ID>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:CurrencyEn[position() &gt;= 3]">
    <ns3:CurrencyEn>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
          <wx:font wx:val="Segoe UI Semibold" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="26" />
          <w:sz-cs w:val="26" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:CurrencyEn>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:PriceTotal">
    <ns3:PriceTotal>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
          <wx:font wx:val="Segoe UI Semibold" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="26" />
          <w:sz-cs w:val="26" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:PriceTotal>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Customer[1]">
    <ns3:Customer>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
        <xsl:apply-templates select="ns3:CompanyName" />
      </w:p>
    </ns3:Customer>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Customer[1]/ns3:CompanyName">
    <ns3:CompanyName>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI Semibold" w:h-ansi="Segoe UI Semibold" w:cs="Segoe UI Semibold" />
          <wx:font wx:val="Segoe UI Semibold" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:CompanyName>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Customer[2]">
    <ns3:Customer>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
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
        <xsl:apply-templates select="ns3:Address1Street" />
      </w:p>
    </ns3:Customer>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Customer[2]/ns3:Address1Street">
    <ns3:Address1Street>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:Address1Street>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Customer[3]">
    <ns3:Customer>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p wsp:rsidR="00CE0867" wsp:rsidRDefault="00542257">
        <w:pPr>
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
        <xsl:apply-templates select="ns3:Address1PostalCode" />
        <w:r wsp:rsidR="00B717D9">
          <w:rPr>
            <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
            <wx:font wx:val="Segoe UI" />
            <w:color w:val="414042" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
            <w:lang w:val="CS" />
          </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
        <xsl:apply-templates select="ns3:Address1City" />
      </w:p>
    </ns3:Customer>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Customer[3]/ns3:Address1PostalCode">
    <ns3:Address1PostalCode>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:Address1PostalCode>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Customer[3]/ns3:Address1City">
    <ns3:Address1City>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:Address1City>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Customer[4]">
    <ns3:Customer>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns3:IdentificationNumber" />
    </ns3:Customer>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Customer[4]/ns3:IdentificationNumber">
    <ns3:IdentificationNumber>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:IdentificationNumber>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Customer[position() &gt;= 5]">
    <ns3:Customer>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns3:VatNumber" />
    </ns3:Customer>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Customer[position() &gt;= 5]/ns3:VatNumber">
    <ns3:VatNumber>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:VatNumber>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:VAT">
    <ns3:VAT>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:VAT>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:EffectiveFrom">
    <ns3:EffectiveFrom>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:EffectiveFrom>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:CurrencyEn[1]|/ns3:Proposal/ns3:CurrencyEn[2]">
    <ns3:CurrencyEn>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:CurrencyEn>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Goods/ns3:Item/ns3:SaleCurrencyEn">
    <ns3:SaleCurrencyEn>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:SaleCurrencyEn>
  </xsl:template>
  <xsl:template match="/ns3:Proposal/ns3:Goods/ns3:Item/ns3:PriceTotalExcludingVAT|/ns3:Proposal/ns3:PriceTotalExcludingVAT">
    <ns3:PriceTotalExcludingVAT>
      <xsl:for-each select="@ns3:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r wsp:rsidR="00B717D9">
        <w:rPr>
          <w:rFonts w:ascii="Segoe UI" w:h-ansi="Segoe UI" w:cs="Segoe UI" />
          <wx:font wx:val="Segoe UI" />
          <w:b-cs />
          <w:color w:val="414042" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
          <w:lang w:val="CS" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns3:PriceTotalExcludingVAT>
  </xsl:template>
</xsl:stylesheet>