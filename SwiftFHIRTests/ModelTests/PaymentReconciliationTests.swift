//
//  PaymentReconciliationTests.swift
//  PaymentReconciliationTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class PaymentReconciliationTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> PaymentReconciliation {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> PaymentReconciliation {
		let instance = PaymentReconciliation(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPaymentReconciliation1() {
		let instance = testPaymentReconciliation1_impl()
		testPaymentReconciliation1_impl(json: instance.asJSON())
	}
	
	func testPaymentReconciliation1_impl(json: JSONDictionary? = nil) -> PaymentReconciliation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "paymentreconciliation-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.detail![0].amount!.code!, "USD")
		XCTAssertEqual(inst.detail![0].amount!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.detail![0].amount!.value!, NSDecimalNumber(string: "1000.0"))
		XCTAssertEqual(inst.detail![0].date!.description, "2014-08-16")
		XCTAssertEqual(inst.detail![0].request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/225476332402")
		XCTAssertEqual(inst.detail![0].type!.code!, "payment")
		XCTAssertEqual(inst.detail![0].type!.system!.absoluteString!, "http://hl7.org/fhir/paymenttype")
		XCTAssertEqual(inst.detail![1].amount!.code!, "USD")
		XCTAssertEqual(inst.detail![1].amount!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.detail![1].amount!.value!, NSDecimalNumber(string: "4000.0"))
		XCTAssertEqual(inst.detail![1].date!.description, "2014-08-12")
		XCTAssertEqual(inst.detail![1].request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/225476332699")
		XCTAssertEqual(inst.detail![1].type!.code!, "payment")
		XCTAssertEqual(inst.detail![1].type!.system!.absoluteString!, "http://hl7.org/fhir/paymenttype")
		XCTAssertEqual(inst.detail![2].amount!.code!, "USD")
		XCTAssertEqual(inst.detail![2].amount!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.detail![2].amount!.value!, NSDecimalNumber(string: "-1500.0"))
		XCTAssertEqual(inst.detail![2].date!.description, "2014-08-16")
		XCTAssertEqual(inst.detail![2].type!.code!, "advance")
		XCTAssertEqual(inst.detail![2].type!.system!.absoluteString!, "http://hl7.org/fhir/paymenttype")
		XCTAssertEqual(inst.disposition!, "2014 August mid-month settlement.")
		XCTAssertEqual(inst.id!, "ER2500")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.BenefitsInc.com/fhir/enrollmentresponse")
		XCTAssertEqual(inst.identifier![0].value!, "781234")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!, "complete")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the PaymentReconciliation</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.total!.code!, "USD")
		XCTAssertEqual(inst.total!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.total!.value!, NSDecimalNumber(string: "3500.0"))
		
		return inst
	}
}