<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:ns1="urn:eway:document-schemas:Invoice" xmlns:st1="urn:schemas-microsoft-com:office:smarttags">
  <xsl:output method="xml" encoding="UTF-8" standalone="yes" />
  <xsl:template match="/">
    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Word.Document"</xsl:text>
    </xsl:processing-instruction>
    <w:wordDocument xmlns:w="http://schemas.microsoft.com/office/word/2003/wordml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w10="urn:schemas-microsoft-com:office:word" xmlns:sl="http://schemas.microsoft.com/schemaLibrary/2003/core" xmlns:aml="http://schemas.microsoft.com/aml/2001/core" xmlns:wx="http://schemas.microsoft.com/office/word/2003/auxHint" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:dt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:ns1="urn:eway:document-schemas:Invoice" xmlns:st1="urn:schemas-microsoft-com:office:smarttags" w:macrosPresent="no" w:embeddedObjPresent="no" w:ocxPresent="no" xml:space="preserve">
      <o:SmartTagType o:namespaceuri="urn:schemas-microsoft-com:office:smarttags" o:name="PlaceType" />
      <o:SmartTagType o:namespaceuri="urn:schemas-microsoft-com:office:smarttags" o:name="place" />
      <o:SmartTagType o:namespaceuri="urn:schemas-microsoft-com:office:smarttags" o:name="PlaceName" />
      <o:DocumentProperties>
        <o:Title>Invoice</o:Title>
        <o:Author>test3</o:Author>
        <o:LastAuthor>Admin</o:LastAuthor>
        <o:Revision>56</o:Revision>
        <o:TotalTime>109</o:TotalTime>
        <o:Created>2016-08-02T11:10:00Z</o:Created>
        <o:LastSaved>2020-05-20T12:43:00Z</o:LastSaved>
        <o:Pages>1</o:Pages>
        <o:Words>100</o:Words>
        <o:Characters>576</o:Characters>
        <o:Lines>4</o:Lines>
        <o:Paragraphs>1</o:Paragraphs>
        <o:CharactersWithSpaces>675</o:CharactersWithSpaces>
        <o:Version>11.5604</o:Version>
      </o:DocumentProperties>
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
        <w:font w:name="Cambria">
          <w:panose-1 w:val="02040503050406030204" />
          <w:charset w:val="EE" />
          <w:family w:val="Roman" />
          <w:pitch w:val="variable" />
          <w:sig w:usb-0="E00006FF" w:usb-1="420024FF" w:usb-2="00000000" w:usb-3="00000000" w:csb-0="0000019F" w:csb-1="00000000" />
        </w:font>
        <w:font w:name="Calibri">
          <w:panose-1 w:val="020F0502020204030204" />
          <w:charset w:val="EE" />
          <w:family w:val="Swiss" />
          <w:pitch w:val="variable" />
          <w:sig w:usb-0="E4003EFF" w:usb-1="C000247B" w:usb-2="00000009" w:usb-3="00000000" w:csb-0="000001FF" w:csb-1="00000000" />
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
        <w:style w:type="paragraph" w:default="on" w:styleId="Normlny">
          <w:name w:val="Normal" />
          <wx:uiName wx:val="Normálny" />
          <w:rsid w:val="00D46999" />
          <w:rPr>
            <w:rFonts w:ascii="Calibri" w:h-ansi="Calibri" />
            <wx:font wx:val="Calibri" />
            <w:sz-cs w:val="24" />
            <w:lang w:val="EN-US" w:fareast="EN-US" w:bidi="AR-SA" />
          </w:rPr>
        </w:style>
        <w:style w:type="character" w:default="on" w:styleId="Predvolenpsmoodseku">
          <w:name w:val="Default Paragraph Font" />
          <wx:uiName wx:val="Predvolené písmo odseku" />
          <w:semiHidden />
        </w:style>
        <w:style w:type="table" w:default="on" w:styleId="Normlnatabuka">
          <w:name w:val="Normal Table" />
          <wx:uiName wx:val="Normálna tabuľka" />
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
        <w:style w:type="list" w:default="on" w:styleId="Bezzoznamu">
          <w:name w:val="No List" />
          <wx:uiName wx:val="Bez zoznamu" />
          <w:semiHidden />
        </w:style>
        <w:style w:type="table" w:styleId="Mriekatabuky">
          <w:name w:val="Table Grid" />
          <wx:uiName wx:val="Mriežka tabuľky" />
          <w:basedOn w:val="Normlnatabuka" />
          <w:rsid w:val="00D46999" />
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
        <w:style w:type="paragraph" w:styleId="Hlavika">
          <w:name w:val="header" />
          <wx:uiName wx:val="Hlavička" />
          <w:basedOn w:val="Normlny" />
          <w:link w:val="HeaderChar" />
          <w:rsid w:val="00D46999" />
          <w:pPr>
            <w:pStyle w:val="Hlavika" />
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
          <w:basedOn w:val="Predvolenpsmoodseku" />
          <w:link w:val="Hlavika" />
          <w:locked />
          <w:rsid w:val="00D46999" />
          <w:rPr>
            <w:rFonts w:cs="Times New Roman" />
          </w:rPr>
        </w:style>
        <w:style w:type="paragraph" w:styleId="Pta">
          <w:name w:val="footer" />
          <wx:uiName wx:val="Päta" />
          <w:basedOn w:val="Normlny" />
          <w:link w:val="FooterChar" />
          <w:rsid w:val="00D46999" />
          <w:pPr>
            <w:pStyle w:val="Pta" />
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
          <w:basedOn w:val="Predvolenpsmoodseku" />
          <w:link w:val="Pta" />
          <w:locked />
          <w:rsid w:val="00D46999" />
          <w:rPr>
            <w:rFonts w:cs="Times New Roman" />
          </w:rPr>
        </w:style>
        <w:style w:type="paragraph" w:styleId="Textbubliny">
          <w:name w:val="Balloon Text" />
          <wx:uiName wx:val="Text bubliny" />
          <w:basedOn w:val="Normlny" />
          <w:link w:val="BalloonTextChar" />
          <w:rsid w:val="00D46999" />
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
          <w:basedOn w:val="Predvolenpsmoodseku" />
          <w:link w:val="Textbubliny" />
          <w:locked />
          <w:rsid w:val="00D46999" />
          <w:rPr>
            <w:rFonts w:ascii="Tahoma" w:h-ansi="Tahoma" w:cs="Times New Roman" />
            <w:sz w:val="16" />
          </w:rPr>
        </w:style>
      </w:styles>
      <w:shapeDefaults>
        <o:shapedefaults v:ext="edit" spidmax="7170" />
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
        <w:footnotePr>
          <w:footnote w:type="separator">
            <w:p>
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:footnote>
          <w:footnote w:type="continuation-separator">
            <w:p>
              <w:r>
                <w:continuationSeparator />
              </w:r>
            </w:p>
          </w:footnote>
        </w:footnotePr>
        <w:endnotePr>
          <w:endnote w:type="separator">
            <w:p>
              <w:r>
                <w:separator />
              </w:r>
            </w:p>
          </w:endnote>
          <w:endnote w:type="continuation-separator">
            <w:p>
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
        <w:showXMLTags w:val="off" />
      </w:docPr>
      <w:body>
        <wx:sect>
          <wx:pBdrGroup>
            <wx:borders>
              <wx:bottom wx:val="solid" wx:bdrwidth="10" wx:space="1" wx:color="1F497D" />
            </wx:borders>
            <xsl:apply-templates select="ns1:Proposal" />
            <w:sectPr>
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
  <xsl:template match="/ns1:Proposal">
    <ns1:Proposal>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p>
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
          </w:rPr> <w:t><xsl:text>Faktúra</xsl:text></w:t></w:r>
      </w:p>
      <w:p>
        <w:pPr>
          <w:pBdr>
            <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="1" w:color="1F497D" />
          </w:pBdr>
          <w:rPr>
            <w:color w:val="1F497D" />
            <w:sz w:val="40" />
            <w:sz-cs w:val="40" />
          </w:rPr>
          <w:sectPr>
            <w:ftr w:type="odd">
              <wx:pBdrGroup>
                <wx:borders>
                  <wx:top wx:val="solid" wx:bdrwidth="10" wx:space="1" wx:color="1F497D" />
                </wx:borders>
                <w:p>
                  <w:pPr>
                    <w:pStyle w:val="Pta" />
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
                  <w:r>
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
                  <w:r>
                    <w:rPr>
                      <w:noProof />
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>20.05.2020</xsl:text></w:t></w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="end" />
                  </w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:tab wx:wTab="4170" wx:tlc="none" wx:cTlc="92" />
                  </w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="begin" />
                  </w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:instrText> PAGE </w:instrText>
                  </w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="separate" />
                  </w:r>
                  <w:r>
                    <w:rPr>
                      <w:noProof />
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>1</xsl:text></w:t></w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="end" />
                  </w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>/</xsl:text></w:t></w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="begin" />
                  </w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:instrText> NUMPAGES </w:instrText>
                  </w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="separate" />
                  </w:r>
                  <w:r>
                    <w:rPr>
                      <w:noProof />
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr> <w:t><xsl:text>1</xsl:text></w:t></w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:fldChar w:fldCharType="end" />
                  </w:r>
                  <w:r>
                    <w:rPr>
                      <w:color w:val="383838" />
                      <w:sz w:val="18" />
                      <w:sz-cs w:val="18" />
                    </w:rPr>
                    <w:tab wx:wTab="3525" wx:tlc="none" wx:cTlc="77" /> <w:t><xsl:text>Vytvorené v eWay-CRM</xsl:text></w:t></w:r>
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
      <w:p>
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
        <w:tr>
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2693" w:type="dxa" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>Číslo</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2502" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:ind w:left="720" w:hanging="720" />
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:ID" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:val="279" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2693" w:type="dxa" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>Dátum vystavenia</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2502" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:EffectiveFrom" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:val="270" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2693" w:type="dxa" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>Dátum splatnosti</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2502" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:ValidUntil" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:val="279" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2693" w:type="dxa" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>Poznámka</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="2502" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:Note" />
            </w:p>
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p>
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
        <w:tr>
          <w:trPr>
            <w:trHeight w:val="358" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
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
                </w:rPr> <w:t><xsl:text>Odberateľ</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
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
                </w:rPr> <w:t><xsl:text>Dodávateľ</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:ind w:left="720" w:hanging="720" />
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:Customer[1]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:ind w:left="720" w:hanging="720" />
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:MyCompany[1]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:ind w:left="720" w:hanging="720" />
              </w:pPr>
              <xsl:apply-templates select="ns1:ContactPerson" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:ind w:left="720" w:hanging="720" />
              </w:pPr>
              <xsl:apply-templates select="ns1:Owner" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:Customer[2]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:MyCompany[2]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:Customer[3]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:MyCompany[3]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:Customer[4]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:MyCompany[4]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:Customer[5]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:MyCompany[5]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>IČO: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns1:Customer[6]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>IČO: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns1:MyCompany[6]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>IČ</xsl:text></w:t></w:r>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text> DPH</xsl:text></w:t></w:r>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns1:Customer[position() &gt;= 7]" />
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>IČ DPH</xsl:text></w:t></w:r>
              <w:r>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr> <w:t><xsl:text>: </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns1:MyCompany[7]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                  <w:sz-cs w:val="22" />
                </w:rPr>
              </w:pPr>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <xsl:apply-templates select="ns1:MyCompany[8]" />
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:h-rule="exact" w:val="278" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5366" w:type="dxa" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:rPr>
                  <w:color w:val="383838" />
                  <w:sz w:val="22" />
                </w:rPr>
              </w:pPr>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5182" w:type="dxa" />
            </w:tcPr>
            <xsl:apply-templates select="ns1:MyCompany[position() &gt;= 9]" />
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p>
        <w:pPr>
          <w:rPr>
            <w:color w:val="383838" />
            <w:sz w:val="22" />
            <w:sz-cs w:val="22" />
          </w:rPr>
        </w:pPr>
      </w:p>
      <w:p>
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
          <w:gridCol w:w="5245" />
          <w:gridCol w:w="1099" />
          <w:gridCol w:w="1732" />
          <w:gridCol w:w="745" />
          <w:gridCol w:w="1732" />
        </w:tblGrid>
        <w:tr>
          <w:trPr>
            <w:trHeight w:val="268" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="5153" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>Položka</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1080" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>Množstvo</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1701" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>J. cena bez DPH</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="732" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>DPH</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1701" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>Celkom bez DPH</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
        </w:tr>
        <xsl:apply-templates select="ns1:Goods" />
        <w:tr>
          <w:trPr>
            <w:trHeight w:val="268" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="6233" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:tcBorders>
                <w:left w:val="nil" />
                <w:bottom w:val="nil" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p>
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
              <w:tcW w:w="1701" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:tcBorders>
                <w:left w:val="nil" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>Celkom bez DPH</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1701" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:PriceTotalExcludingVAT" />
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns1:CurrencyEn[1]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:val="268" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="6233" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:tcBorders>
                <w:top w:val="nil" />
                <w:left w:val="nil" />
                <w:bottom w:val="nil" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p>
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
              <w:tcW w:w="1701" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:tcBorders>
                <w:left w:val="nil" />
                <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="383838" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>DPH</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1701" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:VAT" />
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns1:CurrencyEn[2]" />
            </w:p>
          </w:tc>
        </w:tr>
        <w:tr>
          <w:trPr>
            <w:trHeight w:val="268" />
          </w:trPr>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="6233" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:tcBorders>
                <w:top w:val="nil" />
                <w:left w:val="nil" />
                <w:bottom w:val="nil" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="auto" />
            </w:tcPr>
            <w:p>
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
              <w:tcW w:w="1701" w:type="dxa" />
              <w:gridSpan w:val="2" />
              <w:tcBorders>
                <w:left w:val="nil" />
                <w:bottom w:val="single" w:sz="4" wx:bdrwidth="10" w:space="0" w:color="auto" />
              </w:tcBorders>
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p>
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
                </w:rPr> <w:t><xsl:text>Celkom s DPH</xsl:text></w:t></w:r>
            </w:p>
          </w:tc>
          <w:tc>
            <w:tcPr>
              <w:tcW w:w="1701" w:type="dxa" />
              <w:shd w:val="clear" w:color="auto" w:fill="D9D9D9" />
            </w:tcPr>
            <w:p>
              <w:pPr>
                <w:jc w:val="right" />
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr>
              </w:pPr>
              <xsl:apply-templates select="ns1:PriceTotal" />
              <w:r>
                <w:rPr>
                  <w:b />
                  <w:color w:val="383838" />
                  <w:sz-cs w:val="20" />
                </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
              <xsl:apply-templates select="ns1:CurrencyEn[position() &gt;= 3]" />
            </w:p>
          </w:tc>
        </w:tr>
      </w:tbl>
      <w:p>
        <w:pPr>
          <w:rPr>
            <w:i />
            <w:color w:val="383838" />
            <w:sz w:val="16" />
            <w:sz-cs w:val="16" />
          </w:rPr>
        </w:pPr>
      </w:p>
    </ns1:Proposal>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:ID">
    <ns1:ID>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:ID>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[1]">
    <ns1:MyCompany>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:MyCompanyName" />
    </ns1:MyCompany>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[1]/ns1:MyCompanyName">
    <ns1:MyCompanyName>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:MyCompanyName>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[2]">
    <ns1:MyCompany>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:MyCompanyStreet" />
    </ns1:MyCompany>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[2]/ns1:MyCompanyStreet">
    <ns1:MyCompanyStreet>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:MyCompanyStreet>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[3]">
    <ns1:MyCompany>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:MyCompanyCity" />
    </ns1:MyCompany>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[3]/ns1:MyCompanyCity">
    <ns1:MyCompanyCity>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:MyCompanyCity>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[4]">
    <ns1:MyCompany>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:MyCompanyZip" />
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:text>  </xsl:text></w:t></w:r>
      <xsl:apply-templates select="ns1:MyCompanyState" />
    </ns1:MyCompany>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[4]/ns1:MyCompanyState">
    <ns1:MyCompanyState>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:MyCompanyState>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[4]/ns1:MyCompanyZip">
    <ns1:MyCompanyZip>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:MyCompanyZip>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[5]">
    <ns1:MyCompany>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:MyCompanyCountry" />
    </ns1:MyCompany>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[5]/ns1:MyCompanyCountry">
    <ns1:MyCompanyCountry>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:MyCompanyCountry>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[6]">
    <ns1:MyCompany>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:MyCompanyId" />
    </ns1:MyCompany>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[6]/ns1:MyCompanyId">
    <ns1:MyCompanyId>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:MyCompanyId>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[7]">
    <ns1:MyCompany>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:MyCompanyVatNumber" />
    </ns1:MyCompany>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[7]/ns1:MyCompanyVatNumber">
    <ns1:MyCompanyVatNumber>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:MyCompanyVatNumber>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[8]">
    <ns1:MyCompany>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p>
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
          </w:rPr> <w:t><xsl:text>DIČ: </xsl:text></w:t></w:r>
        <xsl:apply-templates select="ns1:MyCompanyIDVAT" />
      </w:p>
    </ns1:MyCompany>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[8]/ns1:MyCompanyIDVAT">
    <ns1:MyCompanyIDVAT>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:MyCompanyIDVAT>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[position() &gt;= 9]">
    <ns1:MyCompany>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:p>
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
          </w:rPr> <w:t><xsl:text>Register: </xsl:text></w:t></w:r>
        <xsl:apply-templates select="ns1:MyCompanyRegister" />
      </w:p>
    </ns1:MyCompany>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:MyCompany[position() &gt;= 9]/ns1:MyCompanyRegister">
    <ns1:MyCompanyRegister>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:MyCompanyRegister>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:PriceTotal">
    <ns1:PriceTotal>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:b />
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:PriceTotal>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:EffectiveFrom">
    <ns1:EffectiveFrom>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:EffectiveFrom>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:PriceTotalExcludingVAT">
    <ns1:PriceTotalExcludingVAT>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:b />
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:PriceTotalExcludingVAT>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Note">
    <ns1:Note>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:Note>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Goods">
    <ns1:Goods>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:Item" />
    </ns1:Goods>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Goods/ns1:Item">
    <ns1:Item>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:tr>
        <w:trPr>
          <w:trHeight w:val="268" />
        </w:trPr>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="5153" w:type="dxa" />
          </w:tcPr>
          <w:p>
            <w:pPr>
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns1:FileAs" />
          </w:p>
          <w:p>
            <w:pPr>
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns1:Description" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="1080" w:type="dxa" />
          </w:tcPr>
          <w:p>
            <w:pPr>
              <w:jc w:val="right" />
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns1:Quantity" />
            <w:r>
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            <xsl:apply-templates select="ns1:UnitEn" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="1701" w:type="dxa" />
          </w:tcPr>
          <w:p>
            <w:pPr>
              <w:jc w:val="right" />
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns1:SalePriceExcludingVAT" />
            <w:r>
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            <xsl:apply-templates select="ns1:SaleCurrencyEn[1]" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="732" w:type="dxa" />
          </w:tcPr>
          <w:p>
            <w:pPr>
              <w:ind w:hanging="54" />
              <w:jc w:val="right" />
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns1:VATRate" />
          </w:p>
        </w:tc>
        <w:tc>
          <w:tcPr>
            <w:tcW w:w="1701" w:type="dxa" />
          </w:tcPr>
          <w:p>
            <w:pPr>
              <w:jc w:val="right" />
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr>
            </w:pPr>
            <xsl:apply-templates select="ns1:PriceTotalExcludingVAT" />
            <w:r>
              <w:rPr>
                <w:color w:val="383838" />
                <w:sz-cs w:val="20" />
              </w:rPr> <w:t><xsl:text> </xsl:text></w:t></w:r>
            <xsl:apply-templates select="ns1:SaleCurrencyEn[position() &gt;= 2]" />
          </w:p>
        </w:tc>
      </w:tr>
    </ns1:Item>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Goods/ns1:Item/ns1:UnitEn">
    <ns1:UnitEn>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:UnitEn>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Goods/ns1:Item/ns1:PriceTotalExcludingVAT">
    <ns1:PriceTotalExcludingVAT>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:PriceTotalExcludingVAT>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Goods/ns1:Item/ns1:VATRate">
    <ns1:VATRate>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:VATRate>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Goods/ns1:Item/ns1:SalePriceExcludingVAT">
    <ns1:SalePriceExcludingVAT>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:SalePriceExcludingVAT>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Goods/ns1:Item/ns1:Quantity">
    <ns1:Quantity>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:Quantity>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Goods/ns1:Item/ns1:FileAs">
    <ns1:FileAs>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:FileAs>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Goods/ns1:Item/ns1:Description">
    <ns1:Description>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:Description>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:ContactPerson">
    <ns1:ContactPerson>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:FileAs" />
    </ns1:ContactPerson>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:ContactPerson/ns1:FileAs">
    <ns1:FileAs>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:FileAs>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Owner">
    <ns1:Owner>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:FileAs" />
    </ns1:Owner>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Owner/ns1:FileAs">
    <ns1:FileAs>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:rFonts w:cs="Arial" />
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:FileAs>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[1]">
    <ns1:Customer>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:CompanyName" />
    </ns1:Customer>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[1]/ns1:CompanyName">
    <ns1:CompanyName>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:CompanyName>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[2]">
    <ns1:Customer>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:Address1Street" />
    </ns1:Customer>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[2]/ns1:Address1Street">
    <ns1:Address1Street>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:Address1Street>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[3]">
    <ns1:Customer>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:Address1City" />
    </ns1:Customer>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[3]/ns1:Address1City">
    <ns1:Address1City>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:Address1City>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[4]">
    <ns1:Customer>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:Address1PostalCode" />
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:text>  </xsl:text></w:t></w:r>
      <xsl:apply-templates select="ns1:Address1State" />
    </ns1:Customer>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[4]/ns1:Address1State">
    <ns1:Address1State>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:Address1State>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[4]/ns1:Address1PostalCode">
    <ns1:Address1PostalCode>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:Address1PostalCode>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[5]">
    <ns1:Customer>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:Address1CountryEn" />
    </ns1:Customer>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[5]/ns1:Address1CountryEn">
    <ns1:Address1CountryEn>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:Address1CountryEn>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[6]">
    <ns1:Customer>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:IdentificationNumber" />
    </ns1:Customer>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[6]/ns1:IdentificationNumber">
    <ns1:IdentificationNumber>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:IdentificationNumber>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[position() &gt;= 7]">
    <ns1:Customer>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <xsl:apply-templates select="ns1:VatNumber" />
    </ns1:Customer>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Customer[position() &gt;= 7]/ns1:VatNumber">
    <ns1:VatNumber>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:VatNumber>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:VAT">
    <ns1:VAT>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:b />
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:VAT>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:ValidUntil">
    <ns1:ValidUntil>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz w:val="22" />
          <w:sz-cs w:val="22" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:ValidUntil>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:Goods/ns1:Item/ns1:SaleCurrencyEn">
    <ns1:SaleCurrencyEn>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:SaleCurrencyEn>
  </xsl:template>
  <xsl:template match="/ns1:Proposal/ns1:CurrencyEn">
    <ns1:CurrencyEn>
      <xsl:for-each select="@ns1:*|@*[namespace-uri()='']">
        <xsl:attribute name="{name()}" namespace="{namespace-uri()}">
          <xsl:value-of select="." />
        </xsl:attribute>
      </xsl:for-each>
      <w:r>
        <w:rPr>
          <w:b />
          <w:color w:val="383838" />
          <w:sz-cs w:val="20" />
        </w:rPr> <w:t><xsl:value-of select="." /></w:t></w:r>
    </ns1:CurrencyEn>
  </xsl:template>
</xsl:stylesheet>