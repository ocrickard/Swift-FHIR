//
//  RequestTests.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 29/04/16.
//  2016, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
import Client
#else
import SwiftFHIR
#endif


/**
Test request generation.
*/
class RequestTests: XCTestCase {
	
	func testJSONGETRequest() {
		let handler = FHIRJSONRequestHandler(.GET)
		var req = URLRequest(url: URL(string: "https://fhir.smarthealthit.org")!)
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir", handler.headers[.accept])
	}
	
	func testJSONPUTRequest() {
		let handler = FHIRJSONRequestHandler(.PUT)
		var req = URLRequest(url: URL(string: "https://fhir.smarthealthit.org")!)
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir", handler.headers[.accept])
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.contentType])
		
		handler.headers[.contentType] = "application/xml+json"
		XCTAssertEqual("application/xml+json", handler.headers[.contentType])
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.contentType])
		
		handler.add(headers: FHIRRequestHeaders([.ifNoneMatch: "abcd4567", .contentType: "text/plain"]))
		XCTAssertEqual("text/plain", handler.headers[.contentType])
		XCTAssertEqual("abcd4567", handler.headers[.ifNoneMatch])
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.contentType])
		XCTAssertEqual("abcd4567", handler.headers[.ifNoneMatch])
	}
	
	func testJSONPOSTRequest() {
		let handler = FHIRJSONRequestHandler(.POST)
		var req = URLRequest(url: URL(string: "https://fhir.smarthealthit.org")!)
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir", handler.headers[.accept])
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.contentType])
		
		handler.headers[.contentType] = "application/xml+json"
		XCTAssertEqual("application/xml+json", handler.headers[.contentType])
		try! handler.prepare(request: &req)
		XCTAssertEqual("application/json+fhir; charset=utf-8", handler.headers[.contentType])
	}
	
	func testRequestPreparation() {
		var request = URLRequest(url: URL(string: "https://fhir.smarthealthit.org")!)
		let handler = FHIRJSONRequestHandler(.GET)
		try? handler.prepare(request: &request)
		XCTAssertEqual("https://fhir.smarthealthit.org", request.url?.absoluteString ?? "nil")
		
		handler.options = .summary
		try? handler.prepare(request: &request)
		XCTAssertEqual("https://fhir.smarthealthit.org?_summary=true", request.url?.absoluteString ?? "nil")
		
		request = URLRequest(url: URL(string: "https://fhir.smarthealthit.org/Patient/123?_include=Practitioner")!)
		try? handler.prepare(request: &request)
		XCTAssertEqual("https://fhir.smarthealthit.org/Patient/123?_include=Practitioner&_summary=true", request.url?.absoluteString ?? "nil")
		
		request = URLRequest(url: URL(string: "https://fhir.smarthealthit.org/Patient/123?_summary=true")!)
		try? handler.prepare(request: &request)
		XCTAssertEqual("https://fhir.smarthealthit.org/Patient/123?_summary=true", request.url?.absoluteString ?? "nil")
		
		handler.parameters[.elements] = "name,address"
		request = URLRequest(url: URL(string: "https://fhir.smarthealthit.org/Patient/123")!)
		try? handler.prepare(request: &request)
		XCTAssertEqual("https://fhir.smarthealthit.org/Patient/123?_summary=true&_elements=name,address", request.url?.absoluteString ?? "nil")
		
		handler.options.remove(.summary)
		request = URLRequest(url: URL(string: "https://fhir.smarthealthit.org/Patient/123")!)
		try? handler.prepare(request: &request)
		XCTAssertEqual("https://fhir.smarthealthit.org/Patient/123?_elements=name,address", request.url?.absoluteString ?? "nil")
	}
}

