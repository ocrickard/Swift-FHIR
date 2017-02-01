//
//  Count.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/Count) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
A measured or measurable amount.

A measured amount (or an amount that can potentially be measured). Note that measured amounts include amounts that are
not precisely quantified, including amounts involving arbitrary units and floating currencies.
*/
open class Count: Quantity {
	override open class var resourceType: String {
		get { return "Count" }
	}
	
}

