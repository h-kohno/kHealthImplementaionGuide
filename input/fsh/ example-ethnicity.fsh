Alias: $CDC_RACE_ETHN = urn:oid:2.16.840.1.113883.6.238

// Inspired by http://www.hl7.org/fhir/us/core/StructureDefinition-us-core-ethnicity.html

Extension: EthnicityExtension
Id: example-ethnicity
Title: "Ethnicity Extension"
Description: "Concepts classifying the person into a named category of humans..."
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson"
// skipped Person and Practitioner contexts for brevity
* extension contains
    ombCategory 0..1 MS and
    detailed 0..* and
    text 1..1 MS
* extension[ombCategory] ^short = "Hispanic or Latino|Not Hispanic or Latino"
* extension[ombCategory].value[x] only Coding
* extension[ombCategory].valueCoding from OmbEthnicityCategories (required)
* extension[detailed] ^short = "Extended ethnicity codes"
* extension[detailed].value[x] only Coding
* extension[detailed].valueCoding from DetailedEthnicity (required)
* extension[text] ^short = "Ethnicity text"
* extension[text].value[x] only string

// Inspired by http://www.hl7.org/fhir/us/core/ValueSet-omb-ethnicity-category.html

ValueSet: OmbEthnicityCategories
Id: example-omb-ethnicity-categories
Title: "OMB Ethnicity Categories"
* $CDC_RACE_ETHN#2135-2 "Hispanic or Latino"
* $CDC_RACE_ETHN#2186-5 "Non Hispanic or Latino"

// Inspired by http://www.hl7.org/fhir/us/core/ValueSet-detailed-ethnicity.html

ValueSet: DetailedEthnicity
Id: example-detailed-ethnicity
Title: "Detailed Ethnicity"
* include codes from system $CDC_RACE_ETHN where concept is-a #2133-7
* exclude $CDC_RACE_ETHN#2135-2
* exclude $CDC_RACE_ETHN#2186-5