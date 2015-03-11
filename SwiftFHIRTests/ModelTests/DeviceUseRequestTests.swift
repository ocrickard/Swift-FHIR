//
//  DeviceUseRequestTests.swift
//  DeviceUseRequestTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DeviceUseRequestTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> DeviceUseRequest {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> DeviceUseRequest {
		let instance = DeviceUseRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceUseRequest1() {
		let instance = testDeviceUseRequest1_impl()
		testDeviceUseRequest1_impl(json: instance.asJSON())
	}
	
	func testDeviceUseRequest1_impl(json: JSONDictionary? = nil) -> DeviceUseRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "deviceuserequest-example.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDeviceUseRequest2() {
		let instance = testDeviceUseRequest2_impl()
		testDeviceUseRequest2_impl(json: instance.asJSON())
	}
	
	func testDeviceUseRequest2_impl(json: JSONDictionary? = nil) -> DeviceUseRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "deviceuserequest-qicore-example.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}