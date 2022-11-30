Instance: HIVDiagnosisEncounterExample
InstanceOf: HIVDiagnosisEncounter
Usage: #example
Title: "HIV Diagnosis Encounter Example"
Description: "HIV Diagnosis Encounter example"
* serviceProvider = Reference(HIVOrganizationExample)
* status = #finished
* subject = Reference(HIVPatientExample)
* extension[next-visit].valueDateTime = "2022-10-22"

Instance: HIVClinicalEncounterExample
InstanceOf: HIVClinicalEncounter
Usage: #example
Title: "HIV Clinical Encounter Example"
Description: "HIV Clinical Encounter example"
* status = #finished
* period.start = "2021-07-22"
* subject = Reference(HIVPatientExample)
* extension[next-visit].valueDateTime = "2022-10-22"

Instance: HIVOrganizationExample
InstanceOf: HIVOrganization
Usage: #example
Title: "HIV Organization Example"
Description: "Organization example"
* address[+].country = "DISI country"
* address[=].state = "DISI state 1"
* address[=].district = "DISI district 1"
* address[=].city = "DISI city 1"
* address[=].line[+] = "DISI line 1"
* address[=].line[+] = "DISI line 2"
* address[=].line[+] = "DISI line 3"
* address[=].postalCode = "DISI postal code"
* name = "HIV Organization"
* identifier[+].system = "http://openhie.org/fhir/hiv-casereporting/identifier/hiv-organization"
* identifier[=].value = "facility1"

Instance: HIVPatientExample
InstanceOf: HIVPatient
Usage: #example
Title: "HIV Patient example"
Description: "."
* active = true
* name.use = #official
* name.given = "Jane" 
* name.family = "Smith"
* maritalStatus.coding[0].code = #M
* maritalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* gender = #female
* birthDate = "1986-06-04"
* telecom.system = #phone
* telecom.value = "+27825556666"
* address.country = "South Africa"
* address.state = "Western Province"
* address.district = "City of Cape Town"
* address.city = "Cape Town"
* identifier[art].value = "ART1234567"
* identifier[art].system = "http://openhie.org/fhir/hiv-casereporting/identifier/art"
* identifier[passport].value = "PASSPORT1234567"
* identifier[passport].system = "http://openhie.org/fhir/hiv-casereporting/identifier/passport"
* identifier[national].value = "NAT1234567"
* identifier[national].system = "http://openhie.org/fhir/hiv-casereporting/identifier/nid"
* identifier[pos].value = "100007G"
* identifier[pos].system = "http://openhie.org/fhir/hiv-casereporting/OpenMRSID"
* identifier[pos].type = #MR
* managingOrganization = Reference(HIVOrganizationExample)
* extension[genderIdentity].valueCodeableConcept = #male
* extension[keyPopulation].valueCodeableConcept = #transgender

Instance: GuardianExample
InstanceOf: HIVRelatedPerson
Usage: #example
Title: "Related Person example"
Description: ""
* name.given = "Peter"
* name.family = "Loo"
* patient = Reference(HIVPatientExample)

Instance: HIVDiagnosisExample
InstanceOf: HIVDiagnosis
Usage: #example
Title: "HIV Condition example"
Description: "."
* clinicalStatus = #active
* verificationStatus = #confirmed
* code = $SCT#86406008
* subject = Reference(HIVPatientExample)
* recordedDate = "2021-05-18"
* identifier[+].system = "http://openhie.org/fhir/hiv-casereporting/identifier/hiv-diagnosis"
* identifier[=].value = "abc"

Instance: HIVRecencyTestConductedExample
InstanceOf: HIVRecencyTestConducted
Usage: #example
Title: "HIV recency test example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueBoolean = true
* encounter = Reference(HIVClinicalEncounterExample)

Instance: HIVDateOfRecencyTestExample
InstanceOf: HIVDateOfRecencyTest
Usage: #example
Title: "HIV Date Recency Test Example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueDateTime = 2020-10-01
* encounter = Reference(HIVClinicalEncounterExample)

Instance: HIVActualRecencyTestResultExample
InstanceOf: HIVActualRecencyTestResult
Usage: #example
Title: "HIV Actual Recency Test Result Example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueString = "Test"
* encounter = Reference(HIVClinicalEncounterExample)

Instance: ViralLoadSuppressionMostRecentTestDateExample
InstanceOf: ViralLoadSuppressionMostRecentTestDate
Usage: #example
Title: "HIV Viral Load Suppression Most Recent Test Date Example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueDateTime = 2020-10-01

Instance: ViralLoadSuppressionMostRecentTestResultExample
InstanceOf: ViralLoadSuppressionMostRecentTestResult
Usage: #example
Title: "HIV Viral Load Suppression Most Recent Test Result Example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueInteger = 29
* interpretation = CSVLInterpretation#D

Instance: HIVRecencyResultExample
InstanceOf: HIVRecencyResult
Usage: #example
Title: "HIV recency result example"
Description: "."
* status = #final
* subject = Reference(HIVPatientExample)
* valueBoolean = false
* encounter = Reference(HIVClinicalEncounterExample)

Instance: HIVEpisodeOfCareExample
InstanceOf: HIVEpisodeOfCare
Usage: #example
Title: "HIV Episode Of Care Example"
Description: ""
* status = #active
* patient = Reference(HIVPatientExample)
* period.start = "2021-08-25"
* identifier[+].system = "http://openhie.org/fhir/hiv-casereporting/identifier/enrollment-unique-id"
* identifier[=].value = "123456789"
* managingOrganization = Reference(HIVOrganizationExample)
* diagnosis.condition = Reference(HIVDiagnosisExample)
* referralRequest = Reference(HIVTransferOutExample)

Instance: ARVTreatmentExample1
InstanceOf: ARVTreatment
Usage: #example
Title: "ARV therapy summary example"
Description: ""
* status = #active
* intent = #plan
* subject = Reference(HIVPatientExample)
* period.start = "2021-05-20"
* activity.detail.status = #stopped
* activity.detail.kind = #MedicationRequest
* activity.detail.code = $LNC#45260-7 "HIV ART medication"
* activity.detail.productCodeableConcept = #TDF/3TC/DTG
* activity.detail.extension[artRegimenLine].valueCodeableConcept = #FIRST-LINE
* extension[artStatus].valueCodeableConcept = #IIT 
* activity.outcomeCodeableConcept = $CIEL#162572 
* activity.outcomeCodeableConcept.coding.display = "Refused"
* activity.detail.scheduledPeriod.end = "2021-05-22"
//system to use when  outcomeCodeableConcept.coding.code is "Contacted" http://openhie.org/fhir/hiv-casereporting/CodeSystem/contact-tracing-outcome-codes

Instance: ARVTreatmentExample2
InstanceOf: ARVTreatment
Usage: #example
Title: "ARV therapy summary example"
Description: ""
* status = #active
* intent = #plan
* subject = Reference(HIVPatientExample)
* period.start = "2021-07-20"
* activity.detail.status = #in-progress
* activity.detail.kind = #MedicationRequest
* activity.detail.code = $LNC#45260-7 "HIV ART medication"
* activity.detail.productCodeableConcept = #TDF/3TC/EFV
* activity.detail.extension[artRegimenLine].valueCodeableConcept = #SECOND-LINE
* extension[artStatus].valueCodeableConcept = #Active
* activity.outcomeCodeableConcept = $SCT#439771001 
* activity.outcomeCodeableConcept.coding.display = "Contacted"
* activity.detail.scheduledPeriod.end = "2022-10-22"

Instance: CD4Example1
InstanceOf: CD4
Usage: #example
Title: "CD4 example 1"
Description: ""
* status = #final
* subject = Reference(HIVPatientExample)
* code = CSHIVObsCodes#CD4-RESULT "CD4 result"
* effectiveDateTime = "2020-06-09"
* component[+].code = $SCT#113056008 "CD4 result"
* component[=].valueInteger = 500
* component[+].code = $SCT#313938009 "CD4 percentage"
* component[=].valueInteger = 50

Instance: CD4Example2
InstanceOf: CD4
Usage: #example
Title: "CD4 example 2"
Description: ""
* status = #final
* subject = Reference(HIVPatientExample)
* code = CSHIVObsCodes#CD4-RESULT "CD4 result"
* effectiveDateTime = "2021-08-26"
* component[+].code = $SCT#113056008 "CD4 result"
* component[=].valueInteger = 200
* component[+].code = $SCT#313938009 "CD4 percentage"
* component[=].valueInteger = 30

Instance: ViralLoadSuppressionExample1
InstanceOf: ViralLoadSuppression
Usage: #example
Title: "Viral load suppression example 1"
Description: ""
* status = #final
* subject = Reference(HIVPatientExample)
* code = CSHIVObsCodes#VL-RESULT "Viral load result"
* effectiveDateTime = "2020-06-09"
* valueInteger = 1000
* interpretation[+] = CSVLInterpretation#D "Detectable"
* interpretation[+] = CSVLSuppression#UNSUP "Unsuppressed"
* note.authorReference = Reference(HIVOrganizationExample))
* note.text = "some comment"
* note.time      = "2020-06-09"

Instance: ViralLoadSuppressionExample2
InstanceOf: ViralLoadSuppression
Usage: #example
Title: "Viral load suppression example 2"
Description: ""
* status = #final
* subject = Reference(HIVPatientExample)
* code = CSHIVObsCodes#VL-RESULT "Viral load result"
* effectiveDateTime = "2021-06-21"
* valueInteger = 200
* interpretation[+] = CSVLInterpretation#ND "Non Detectable"
* interpretation[+] = CSVLSuppression#SUP "Suppressed"
* note.authorReference = Reference(HIVOrganizationExample))
* note.text = "some comment"
* note.time      = "2020-06-09"

Instance: DeathExample
InstanceOf: DeathObs
Usage: #example
Title: "Death Example"
Description: ""
* status = #final
* subject = Reference(HIVPatientExample)
* code = CSHIVObsCodes#CAUSE-OF-DEATH "Cause of death"
* effectiveDateTime = "2021-08-26"
* valueCodeableConcept = CSVLCauseOfDeath#HIV "HIV Related"
* extension[lastClinicalVisit].valueDateTime = "2021-08-26"

Instance: HIVCareMedicationRequestExample
InstanceOf: HIVCareMedicationRequest
Usage: #example
Title: "HIV Care Medication Request Example"
Description: ""
* status = #active
* intent = #proposal
* medicationCodeableConcept = $LNC#45260-7 "HIV ART medication"
* dispenseRequest.quantity.value = 30
* subject = Reference(HIVPatientExample)
* basedOn = Reference(ARVTreatmentExample1)

Instance: HIVTransferOutExample
InstanceOf: HIVTransferOut
Usage: #example
Title: "HIV Transfer Out Request example"
Description: "HIV Transfer Out Request example"
* occurrenceDateTime = "2021-08-26"
* status = #active
* intent = #proposal
* subject = Reference(HIVPatientExample)

Instance: VLProcedureInfoExample
InstanceOf: VLProcedureInfo
Usage: #example
Title: "VL Procedure info example"
Description: "VL Procedure info example"
* status = #completed
* subject = Reference(HIVPatientExample)
* encounter = Reference(HIVClinicalEncounter)
* category  = $SCT#108252007
* category.coding.display = "Laboratory procedure"
* reasonCode.coding.code = #5d4e13af-92ec-4b91-a8e4-97818810e577
* reasonCode.coding.system  = "http://openhie.org/fhir/hiv-casereporting/CodeSystem/vl-reason-code"
* reasonCode.coding.display = "Baseline Viral Load"
* code = $SCT#315124004
* code.coding.display = "Human immunodeficiency virus load"
* code.text = "viral load"

Instance: HIVServiceRequestExample
InstanceOf: HIVServiceRequest
Usage: #example
Title: "HIV Service Request example"
Description: "HIV Service Request example"
* occurrenceDateTime = "2022-08-26"
* specimen = Reference(VLSpecimenExample)
* status = #active
* intent = #order
* subject = Reference(HIVPatientExample) 

Instance: VLSpecimenExample
InstanceOf: Specimen
Usage: #example
Title: "Viral Load Specimen example"
Description: "Viral Load Specimen example"
* identifier.system = $SCT
* identifier.value  = "395058002"
* type = $SCT#395058002  
* subject = Reference(HIVPatientExample)  
* collection.collectedDateTime =  "2022-08-26"                        

Instance: HIVTestDateExample
InstanceOf: HIVTestDate
Usage: #example
Title: "HIV Test Date Observation"
Description: "This profile allows the exchange of a patient's test date"
* subject = Reference(HIVPatientExample)
* encounter = Reference(HIVClinicalEncounter)
* valueDateTime = "2022-08-26" 
* status = #final
          
Instance: HIVMedicationDispenseExample
InstanceOf: HIVMedicationDispense
Usage: #example
* status = #completed
* context = Reference(Encounter/HIVClinicalEncounter)
* subject = Reference(Patient/HIVPatientExample)
* quantity.value = 1 
* quantity.system = "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm"
* quantity.code = #TAB
* medicationCodeableConcept = $SCT#439771001 /// NB #TODO - TEMP CODE ONLY, APPLY CORRECT CODING / BINDING