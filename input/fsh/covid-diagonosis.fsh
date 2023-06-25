Alias: $sct = http://snomde.info/sct
Alias: $icd = http://hl7.org/fhir/sid/icd-10-cm

Profile: CovidDiagnosis
Parent: Condition
Description: "How to report COVID"
* code = $icd#U07.1
* severity from CovidSeverityVS (required)
* subject only Reference(Patient)
* subject 1..1

ValueSet: CovidSeverityVS
Description: "Values for COVID severity"
* include codes from valueset http://hl7.org/fhir/ValueSet/condition-severity
* include $sct#442452003 "Life threatening severity (qualifier)"

Instance: DiagnosisExample
InstanceOf: CovidDiagnosis
* subject = Reference(JaneDoe)
* code = $icd#U07.1
* severity = $sct#224484000 "Severe"

Instance: JaneDoe
InstanceOf: Patient
* name.given = "Jane"
* name.family = "Doe"