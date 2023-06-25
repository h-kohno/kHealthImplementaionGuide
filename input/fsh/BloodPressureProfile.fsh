Alias: $LOINC = http://loinc.org
Alias: $UCUM = http://unitsofmeasure.org

// Inspired by http://www.hl7.org/fhir/us/core/StructureDefinition-us-core-blood-pressure.html

Profile: BloodPressureProfile
Parent: Observation
Title: "Blood Pressure"
Description: "An example blood pressure profile"
* code = $LOINC#85354-9

// Step 1: Define the slicing logic
* component ^slicing.discriminator.type = #pattern  // or #value, #profile
* component ^slicing.discriminator.path = "code"    // any FHIRPath expression
* component ^slicing.rules = #open    // additional elements are ok
* component ^slicing.ordered = false  // by default, array elements in any order
* component ^slicing.description = "Slice pattern for component.code"  // optional

// Step 2: Identify the slices
* component contains
    systolic 1..1 and  // each slice is identified by name, card, & optional flags
    diastolic 1..1     // using "and" to separate each slice identification

// Step 3: Define each slice: systolic
* component[systolic].code = $LOINC#8480-6  // LOINC#8480-6 distinguishes the slice
* component[systolic].value[x] only Quantity
* component[systolic].valueQuantity = $UCUM#mm[Hg]

// Step 3: Define each slice: diastolic
* component[diastolic].code = $LOINC#8462-4 // LOINC#8462-4 distinguishes the slice
* component[diastolic].value[x] only Quantity
* component[diastolic].valueQuantity = $UCUM#mm[Hg]