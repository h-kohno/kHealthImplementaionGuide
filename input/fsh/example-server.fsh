Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

// Inspired by http://www.hl7.org/fhir/us/core/CapabilityStatement-us-core-server.html

Instance: example-server
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://example.org/CapabilityStatement/example-server"
* version = "4.0.0"
* name = "ExampleServerCapabilityStatement"
* title = "Example Server CapabilityStatement"
* status = #active
* date = "2021-06-17T14:23:02.762610-08:00"
* kind = #requirements
* description = "This document describes the expected capabilities of the Example Server actor..."
* fhirVersion = #4.0.1
* format = #json
* rest.mode = #server
// AllergyIntolerance
* insert SupportResource(AllergyIntolerance, #SHALL)
* insert SupportProfile(http://example.org/StructureDefinition/example-allergyintolerance, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(patient, http://example.org/SearchParameter/example-allergyintolerance-patient, #reference, #SHALL)
* rest.resource[=].referencePolicy = #resolves
// CarePlan
* insert SupportResource(CarePlan, #SHALL)
* insert SupportProfile(http://example.org/StructureDefinition/example-careplan, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(category, http://example.org/SearchParameter/example-careplan-category, #token, #MAY)
* insert SupportSearchParam(patient, http://example.org/SearchParameter/example-careplan-patient, #reference, #MAY)
* rest.resource[=].referencePolicy = #resolves

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}
