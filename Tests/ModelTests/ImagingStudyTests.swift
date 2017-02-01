//
//  ImagingStudyTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 on 2017-02-01.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRImagingStudy = Models.ImagingStudy
#else
import SwiftFHIR
typealias SwiftFHIRImagingStudy = SwiftFHIR.ImagingStudy
#endif


class ImagingStudyTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRImagingStudy {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRImagingStudy {
		return try SwiftFHIRImagingStudy(json: json)
	}
	
	func testImagingStudy1() {
		do {
			let instance = try runImagingStudy1()
			try runImagingStudy1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ImagingStudy successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runImagingStudy1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRImagingStudy {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "imagingstudy-example.json")
		
		XCTAssertEqual(inst.endpoint?[0].reference, "Endpoint/example-wadors")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.numberOfInstances, 1)
		XCTAssertEqual(inst.numberOfSeries, 1)
		XCTAssertEqual(inst.patient?.reference, "Patient/dicom")
		XCTAssertEqual(inst.series?[0].bodySite?.code, "67734004")
		XCTAssertEqual(inst.series?[0].bodySite?.display, "Upper Trunk Structure")
		XCTAssertEqual(inst.series?[0].bodySite?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.series?[0].description_fhir, "CT Surview 180")
		XCTAssertEqual(inst.series?[0].instance?[0].number, 1)
		XCTAssertEqual(inst.series?[0].instance?[0].sopClass?.absoluteString, "urn:oid:1.2.840.10008.5.1.4.1.1.2")
		XCTAssertEqual(inst.series?[0].instance?[0].uid?.absoluteString, "urn:oid:2.16.124.113543.6003.189642796.63084.16748.2599092903")
		XCTAssertEqual(inst.series?[0].modality?.code, "CT")
		XCTAssertEqual(inst.series?[0].modality?.system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.series?[0].number, 3)
		XCTAssertEqual(inst.series?[0].numberOfInstances, 1)
		XCTAssertEqual(inst.series?[0].uid?.absoluteString, "urn:oid:2.16.124.113543.6003.2588828330.45298.17418.2723805630")
		XCTAssertEqual(inst.started?.description, "2011-01-01T11:01:20+03:00")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">CT Chest.  John Smith (MRN: 09236). Accession: W12342398. Performed: 2011-01-01. 3 series, 12 images.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.uid?.absoluteString, "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045")
		
		return inst
	}
}
