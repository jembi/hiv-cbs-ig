
Instance: HIVCaseReportingSubmitBundleExample
InstanceOf: Bundle
Usage: #example
Title: "HIV Case Report - Full Bundle Example"
Description: "Example of a clinical bundle representing a case report"
* type = #transaction
* entry[+].fullUrl = "Encounter/HIVDiagnosisEncounterExample"
* entry[=].resource = HIVDiagnosisEncounterExample

* entry[+].fullUrl = "Encounter/HIVClinicalEncounterExample"
* entry[=].resource = HIVClinicalEncounterExample

* entry[+].fullUrl = "Patient/HIVPatientExample"
* entry[=].resource = HIVPatientExample

* entry[+].fullUrl = "RelatedPerson/GuardianExample"
* entry[=].resource = GuardianExample

* entry[+].fullUrl = "Condition/HIVDiagnosisExample"
* entry[=].resource = HIVDiagnosisExample

* entry[+].fullUrl = "Observation/HIVRecencyTestConductedExample"
* entry[=].resource = HIVRecencyTestConductedExample

* entry[+].fullUrl = "Observation/HIVRecencyResultExample"
* entry[=].resource = HIVRecencyResultExample

* entry[+].fullUrl = "Observation/HIVTestDateExample"
* entry[=].resource = HIVTestDateExample

* entry[+].fullUrl = "EpisodeOfCare/HIVEpisodeOfCareExample"
* entry[=].resource = HIVEpisodeOfCareExample

* entry[+].fullUrl = "ServiceRequest/HIVServiceRequestExample"
* entry[=].resource = HIVServiceRequestExample

* entry[+].fullUrl = "CarePlan/ARVTreatmentExample1"    //#TODO - Which Example must be used, 1 or 2 ?
* entry[=].resource = ARVTreatmentExample1

* entry[+].fullUrl = "Observation/CD4Example1"    //#TODO - Must example one or two be used?
* entry[=].resource = CD4Example1

* entry[+].fullUrl = "Observation/ViralLoadSuppressionExample1" //#TODO - Must example one or two be used?
* entry[=].resource = ViralLoadSuppressionExample1

* entry[+].fullUrl = "Observation/DeathExample"
* entry[=].resource = DeathExample

* entry[+].fullUrl = "Procedure/VLProcedureInfoExample"
* entry[=].resource = VLProcedureInfoExample

* entry[+].fullUrl = "MedicationDispense/HIVMedicationDispenseExample"
* entry[=].resource = HIVMedicationDispenseExample



