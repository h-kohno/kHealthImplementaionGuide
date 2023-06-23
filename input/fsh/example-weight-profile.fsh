Alias: $UCUM = http://unitsofmeasure.org

// Inspired by http://www.hl7.org/fhir/us/core/StructureDefinition-us-core-body-weight.html

Profile: BodyWeightProfile
Parent: Observation
Id: example-weight-profile
Title: "Body Weight"
Description: "An example profile for collecting weight"
* code = http://loinc.org#29463-7 // Body weight
* value[x] only Quantity
* valueQuantity from BodyWeightUnits

// Inspired by http://hl7.org/fhir/R4/valueset-ucum-bodyweight.html

ValueSet: BodyWeightUnits
Id: example-weight-units
Title: "Body Weight Units"
* $UCUM#kg "kg"
* $UCUM#[lb_av] "lb_av"
* $UCUM#g "g"