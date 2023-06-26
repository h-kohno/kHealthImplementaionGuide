Alias: $GENDER = http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender
Alias: $NULL = http://terminology.hl7.org/CodeSystem/v3-NullFlavor

// Inspired by http://www.hl7.org/fhir/us/core/StructureDefinition-us-core-birthsex.html

Extension: BirthSexExtension
Id: example-birthsex
Title: "Birth Sex Extension"
Description: "A code classifying the person's sex assigned at birth."
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only code
* valueCode 1..1
* valueCode from BirthSexValueSet (required)

// Inspired by http://www.hl7.org/fhir/us/core/ValueSet-birthsex.html

ValueSet: BirthSexValueSet
Id: example-birthsex-vs
Title: "Birth Sex Value Set"
* $GENDER#F "Female"
* $GENDER#M "Male"
* $NULL#UNK "Unknown"