Profile: ObservationWithEffectiveDateTimeOrPeriod
Id: example-observation-w-datetime-or-period
Parent: Observation
* effective[x] only dateTime or Period

Profile: PatientWithProfiledAddress
Id: example-patient-w-profiled-address
Parent: Patient
* address only MassachusettsAddress

Profile: MassachusettsAddress
Id: example-massachusetts-address
Parent: Address
* state = "MA"
* country = "USA"