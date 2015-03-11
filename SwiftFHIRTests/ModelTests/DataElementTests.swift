//
//  DataElementTests.swift
//  DataElementTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DataElementTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> DataElement {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> DataElement {
		let instance = DataElement(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDataElement1() {
		let instance = testDataElement1_impl()
		testDataElement1_impl(json: instance.asJSON())
	}
	
	func testDataElement1_impl(json: JSONDictionary? = nil) -> DataElement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "dataelement-example.json")
		
		XCTAssertEqual(inst.element![0].binding!.name!, "Gender")
		XCTAssertEqual(inst.element![0].binding!.referenceReference!.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/11179-permitted-value-valueset")
		XCTAssertEqual(inst.element![0].binding!.referenceReference!.extension_fhir![0].valueReference!.reference!, "#2179414-permitted")
		XCTAssertEqual(inst.element![0].binding!.referenceReference!.extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap")
		XCTAssertEqual(inst.element![0].binding!.referenceReference!.extension_fhir![1].valueReference!.reference!, "#2179414-cm")
		XCTAssertEqual(inst.element![0].binding!.referenceReference!.reference!, "#2179414")
		XCTAssertEqual(inst.element![0].binding!.strength!, "required")
		XCTAssertEqual(inst.element![0].definition!, "The code representing the gender of a person.")
		XCTAssertEqual(inst.element![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.element![0].extension_fhir![0].valueInteger!, 1)
		XCTAssertEqual(inst.element![0].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/elementdefinition-question")
		XCTAssertEqual(inst.element![0].extension_fhir![1].valueString!, "Gender")
		XCTAssertEqual(inst.element![0].maxLength!, 13)
		XCTAssertEqual(inst.element![0].path!, "Gender")
		XCTAssertEqual(inst.element![0].type![0].code!, "CodeableConcept")
		XCTAssertEqual(inst.id!, "gender")
		XCTAssertEqual(inst.identifier!.value!, "2179650")
		XCTAssertEqual(inst.name!, "Gender Code")
		XCTAssertEqual(inst.publisher!, "DCP")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.useContext![0].coding![0].display!, "FBPP Pooled Database")
		XCTAssertEqual(inst.useContext![0].coding![0].system!.absoluteString!, "http://unknown/FBPP")
		XCTAssertEqual(inst.useContext![0].coding![1].display!, "Demographics")
		XCTAssertEqual(inst.useContext![0].coding![1].system!.absoluteString!, "http://unknown/PhenX")
		XCTAssertEqual(inst.useContext![0].coding![2].display!, "Pt. Administrative")
//		XCTAssertEqual(inst.useContext![0].coding![2].system!.absoluteString!, "http://unknown/Eligibility Criteria")
		XCTAssertEqual(inst.useContext![0].coding![3].display!, "UAMS New CDEs")
//		XCTAssertEqual(inst.useContext![0].coding![3].system!.absoluteString!, "http://unknown/UAMS Clinical Research")
		XCTAssertEqual(inst.useContext![0].coding![4].display!, "Substance Abuse and ")
		XCTAssertEqual(inst.useContext![0].coding![4].system!.absoluteString!, "http://unknown/PhenX")
		XCTAssertEqual(inst.useContext![0].coding![5].display!, "CSAERS Adverse Event")
		XCTAssertEqual(inst.useContext![0].coding![5].system!.absoluteString!, "http://unknown/Category")
		XCTAssertEqual(inst.useContext![0].coding![6].display!, "Core: Tier 1")
		XCTAssertEqual(inst.useContext![0].coding![6].system!.absoluteString!, "http://unknown/PhenX")
		XCTAssertEqual(inst.useContext![0].coding![7].display!, "Case Report Forms")
		XCTAssertEqual(inst.useContext![0].coding![7].system!.absoluteString!, "http://unknown/Category")
		XCTAssertEqual(inst.useContext![0].coding![8].display!, "CSAERS Review Set")
		XCTAssertEqual(inst.useContext![0].coding![8].system!.absoluteString!, "http://unknown/Category")
		XCTAssertEqual(inst.useContext![0].coding![9].display!, "CIAF")
		XCTAssertEqual(inst.useContext![0].coding![9].system!.absoluteString!, "http://unknown/Demonstration%20Applications")
		XCTAssertEqual(inst.version!, "1.0")
		
		return inst
	}
	
	func testDataElement2() {
		let instance = testDataElement2_impl()
		testDataElement2_impl(json: instance.asJSON())
	}
	
	func testDataElement2_impl(json: JSONDictionary? = nil) -> DataElement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "dataelement-labtestmaster-example.json")
		
		XCTAssertEqual(inst.element![0].comments!, "Used to screen the integrity of the extrinsic and common pathways of coagulation and to monitor warfarin anticoagulation. ")
		XCTAssertEqual(inst.element![0].definition!, "The PT test evaluates the extrinsic and common pathways of the coagulation cascade.")
		XCTAssertEqual(inst.element![0].exampleDecimal!, NSDecimalNumber(string: "10.0"))
		XCTAssertEqual(inst.element![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/elementdefinition-allowedUnits")
		XCTAssertEqual(inst.element![0].extension_fhir![0].valueCodeableConcept!.coding![0].code!, "s")
		XCTAssertEqual(inst.element![0].extension_fhir![0].valueCodeableConcept!.coding![0].display!, "second")
		XCTAssertTrue(inst.element![0].extension_fhir![0].valueCodeableConcept!.coding![0].primary!)
		XCTAssertEqual(inst.element![0].extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString!, "http:/unitsofmeasure.org")
		XCTAssertEqual(inst.element![0].extension_fhir![0].valueCodeableConcept!.coding![0].valueSet!.display!, "UCUM")
		XCTAssertEqual(inst.element![0].extension_fhir![0].valueCodeableConcept!.coding![0].valueSet!.reference!, "http:/unitsofmeasure.org/vs")
		XCTAssertEqual(inst.element![0].extension_fhir![0].valueCodeableConcept!.coding![0].version!, "1.9")
		XCTAssertEqual(inst.element![0].extension_fhir![0].valueCodeableConcept!.text!, "second")
		XCTAssertEqual(inst.element![0].mapping![0].identity!, "loinc")
		XCTAssertEqual(inst.element![0].mapping![0].map!, "5964-2")
		XCTAssertEqual(inst.element![0].path!, "prothrombin")
		XCTAssertEqual(inst.element![0].requirements!, "This test is orderable. A plasma specimen in a 3.2% sodium citrate blue top tube is required.")
		XCTAssertEqual(inst.element![0].synonym![0], "Protime, PT")
		XCTAssertEqual(inst.element![0].type![0].code!, "Decimal")
		XCTAssertEqual(inst.id!, "prothrombin")
		XCTAssertEqual(inst.identifier!.assigner!.display!, "Century Hospital Laboratory")
		XCTAssertEqual(inst.identifier!.label!, "Prothrombin Time, PT")
		XCTAssertEqual(inst.identifier!.period!.start!.description, "2011-05-19")
		XCTAssertEqual(inst.identifier!.system!.absoluteString!, "htpp://www.CenturyHospital/Laboratory/DirectoryofServices")
		XCTAssertEqual(inst.identifier!.value!, "11")
		XCTAssertEqual(inst.mapping![0].comments!, "Version 2.48 or later")
		XCTAssertEqual(inst.mapping![0].identity!, "loinc")
		XCTAssertEqual(inst.mapping![0].name!, "LOINC")
		XCTAssertEqual(inst.mapping![0].uri!.absoluteString!, "http://loinc.org/")
		XCTAssertEqual(inst.name!, "Prothrombin Time")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDataElement3() {
		let instance = testDataElement3_impl()
		testDataElement3_impl(json: instance.asJSON())
	}
	
	func testDataElement3_impl(json: JSONDictionary? = nil) -> DataElement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "dataelement-sdc-profile-example.json")
		
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "email")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "william.munier@ahrq.hhs.gov")
		XCTAssertEqual(inst.date!.description, "2012-10-21")
		XCTAssertEqual(inst.element![0].binding!.name!, "Gender")
		XCTAssertEqual(inst.element![0].binding!.referenceReference!.reference!, "#de42")
		XCTAssertEqual(inst.element![0].binding!.strength!, "required")
		XCTAssertEqual(inst.element![0].code![0].code!, "72143-1")
		XCTAssertTrue(inst.element![0].code![0].primary!)
		XCTAssertEqual(inst.element![0].code![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.element![0].definition!, "The patient's documented gender on arrival at the hospital. ")
		XCTAssertEqual(inst.element![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/elementdefinition-question")
		XCTAssertEqual(inst.element![0].extension_fhir![0].valueString!, "Patient's Gender")
		XCTAssertEqual(inst.element![0].mapping![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/11179-objectClass")
		XCTAssertEqual(inst.element![0].mapping![0].extension_fhir![0].valueCoding!.code!, "116154003")
		XCTAssertEqual(inst.element![0].mapping![0].extension_fhir![0].valueCoding!.display!, "Patient")
		XCTAssertEqual(inst.element![0].mapping![0].extension_fhir![0].valueCoding!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.element![0].mapping![0].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/11179-property")
		XCTAssertEqual(inst.element![0].mapping![0].extension_fhir![1].valueCoding!.code!, "263495000")
		XCTAssertEqual(inst.element![0].mapping![0].extension_fhir![1].valueCoding!.display!, "Gender")
		XCTAssertEqual(inst.element![0].mapping![0].extension_fhir![1].valueCoding!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.element![0].mapping![0].identity!, "objclass")
		XCTAssertEqual(inst.element![0].mapping![0].map!, "http://snomed.info/sct#116154003 | http://snomed.info/sct | 263495000")
		XCTAssertEqual(inst.element![0].path!, "gender")
		XCTAssertEqual(inst.element![0].type![0].code!, "CodeableConcept")
		XCTAssertEqual(inst.id!, "sdc-gender")
		XCTAssertEqual(inst.identifier!.system!.absoluteString!, "http://nlm.nih.gov/some_other_text/data_element_identifier")
		XCTAssertEqual(inst.identifier!.value!, "DE42AHRQ")
		XCTAssertEqual(inst.mapping![0].identity!, "objclass")
		XCTAssertEqual(inst.mapping![0].name!, "Structured Data Capture ObjectClass/Property")
		XCTAssertEqual(inst.mapping![0].uri!.absoluteString!, "http://healthit.gov/sdc/objectclassproperty")
		XCTAssertEqual(inst.name!, "Patient Gender")
		XCTAssertEqual(inst.publisher!, "Agency for Healthcare Research and Quality (AHRQ)")
		XCTAssertEqual(inst.status!, "draft")
		XCTAssertEqual(inst.text!.div!, "<div>TODO</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.useContext![0].coding![0].code!, "Healthcare Event Reporting Form")
		XCTAssertEqual(inst.useContext![0].coding![0].display!, "Patient safety event report - hospital: healthcare event reporting form")
		XCTAssertEqual(inst.version!, "1.2")
		
		return inst
	}
}