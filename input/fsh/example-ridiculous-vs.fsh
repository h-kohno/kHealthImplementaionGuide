Alias: $SCT = http://snomed.info/sct

// Inspired by examples from http://build.fhir.org/ig/HL7/fhir-shorthand/reference.html#defining-value-sets

ValueSet: RidiculousExampleValueSet
Id: example-ridiculous-vs
Title: "RidiculousE ValueSet"
Description: "This is a ridiculous value set just to demonstrate the rule types"
* ^experimental = true
* ^status = #draft
* $SCT#961000205106 "Wearing street clothes, no shoes"
//* include $SCT#961000205106 "Wearing street clothes, no shoes"
* include codes from valueset http://hl7.org/fhir/ValueSet/data-absent-reason
* include codes from system http://snomed.info/sct
* include codes from system $SCT where concept is-a #254837009
* exclude $SCT#961000205106 "Wearing street clothes, no shoes"