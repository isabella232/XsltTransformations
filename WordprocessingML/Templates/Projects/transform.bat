@echo off
chcp 65001

    ..\..\bin\Wml2Ew.exe "ProjectSheet_CZ.xml" "urn:eway:document-schemas:export-wml-project" "Projektový list" "Projects" "cs" "2" "0"
    ..\..\bin\Wml2Ew.exe "ProjectSheet_EN.xml" "urn:eway:document-schemas:export-wml-project" "Project Sheet" "Projects" "en" "2" "0"
    ..\..\bin\Wml2Ew.exe "ProjectSheet_NO.xml" "urn:eway:document-schemas:export-wml-project" "Prosjektark" "Projects" "no" "2" "0"

    ..\..\bin\Wml2Ew.exe "AcceptanceProtocol_CZ.xml" "urn:eway:document-schemas:export-wml-project" "Předávací protokol" "Projects" "cs" "2" "0"
    ..\..\bin\Wml2Ew.exe "AcceptanceProtocol_EN.xml" "urn:eway:document-schemas:export-wml-project" "Completition Certificate" "Projects" "en" "2" "0"