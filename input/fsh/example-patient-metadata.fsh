Profile: PatientMetadata
Parent: Patient
Id: example-patient-metadata
Title: "Patient Metadata Profile"
Description: "Demonstrates setting metadata"
* ^version = "0.0.1"
* ^status = #draft
* ^experimental = true
* ^date = 2021-09-30
* ^contact.name = "Shorty the FSH Fish"

Profile: PatientNameMetadata
Parent: Patient
Id: example-patient-name-metadata
* name 1..1
* name ^short = "The full legal name of the patient"
* name ^definition = "Although the patient may have multiple..."

Profile: PatientRootElementMetadata
Parent: Patient
Id: example-patient-root-metadata
* . ^short = "A patient from the course on authoring FHIR Implementation Guides"
* . ^definition = "Patients who attend FHIR IG courses have characteristics..."