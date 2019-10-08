# WordprocessingML

## Prepare schema

Schema defines what eWay-CRM data will be available in the template. eWay-CRM exports all available data from the appropriate
items. If you have custom fields you will have to create custom schema and add required custom fields there.

See our schema for [Invoices](XsltTransformations/WordprocessingML/Templates/Invoice/Invoice.xsd).
If you for example have a custom field af_14 on Bookkeeping module, you may modify schema like this:

```xml
<xs:element name="Active" type="xs:string" minOccurs="0" />
<xs:element name="af_14" type="xs:string" minOccurs="0" />
<xs:element name="CreatedByGUID" type="xs:string" minOccurs="0" />
```

You should also modify schema namespace to some unique name. In this case we renamed Invoice to MyInvoice:

```xml
<?xml version="1.0" encoding="utf-8"?>
<xs:schema targetNamespace="urn:eway:document-schemas:MyInvoice"
    elementFormDefault="qualified"
    xmlns="urn:eway:document-schemas:Invoice"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
```