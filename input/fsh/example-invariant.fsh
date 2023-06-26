// Inspired by http://www.hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html

Invariant: pat-1
Severity: #error
Description: "SHALL at least contain a contact's details or a reference to an organization"
Expression: "name.exists() or telecom.exists() or address.exists() or organization.exists()"
// XPath: "exists(f:name) or exists(f:telecom) or exists(f:address) or exists(f:organization)"

Profile: PatientWithContactInvariant
Id: example-patient-w-contact-invariant
Parent: Patient
* contact obeys pat-1

// Inspired by http://www.hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html

Invariant: us-core-2
Severity: #error
Description: "If there is no component or hasMember element then either a value[x] or a data absent reason must be present"
Expression: "(component.empty() and hasMember.empty()) implies (dataAbsentReason.exists() or value.exists())"
XPath: "exists(f:component) or exists(f:hasMember) or exists(f:*[starts-with(local-name(.), 'value')]) or exists(f:dataAbsentReason)"

Profile: ObservationWithInvariant
Id: example-observation-with-invariant
Parent: Observation
* obeys us-core-2