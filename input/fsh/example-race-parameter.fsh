// Inspired by http://www.hl7.org/fhir/us/core/SearchParameter-us-core-race.html

Instance: example-race-parameter
InstanceOf: SearchParameter
Usage: #definition
* url = "http://example.org/SearchParameter/example-race-parameter"
* version = "4.0.0"
* name = "RaceParameter"
* status = #active
* description = "Returns patients with a race extension matching the specified code."
* base = #Patient
* code = #race
* type = #token
* expression = "Patient.extension.where(url = 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race').extension.value.code"