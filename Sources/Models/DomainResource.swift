//
//  DomainResource.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 (http://hl7.org/fhir/StructureDefinition/DomainResource) on 2017-02-01.
//  2017, SMART Health IT.
//

import Foundation


/**
A resource with narrative, extensions, and contained resources.

A resource that includes narrative, extensions, and contained resources.
*/
open class DomainResource: Resource {
	override open class var resourceType: String {
		get { return "DomainResource" }
	}
	
	/// Contained, inline Resources.
	public var contained: [Resource]?
	
	/// Additional Content defined by implementations.
	public var extension_fhir: [Extension]?
	
	/// Extensions that cannot be ignored.
	public var modifierExtension: [Extension]?
	
	/// Text summary of the resource, for human interpretation.
	public var text: Narrative?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		
		contained = try createInstances(of: Resource.self, for: "contained", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? contained
		extension_fhir = try createInstances(of: Extension.self, for: "extension", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? extension_fhir
		modifierExtension = try createInstances(of: Extension.self, for: "modifierExtension", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? modifierExtension
		text = try createInstance(type: Narrative.self, for: "text", in: json, presentKeys: &presentKeys, errors: &errors, owner: self) ?? text
		
		return errors.isEmpty ? nil : errors
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "contained", using: self.contained, errors: &errors)
		arrayDecorate(json: &json, withKey: "extension", using: self.extension_fhir, errors: &errors)
		arrayDecorate(json: &json, withKey: "modifierExtension", using: self.modifierExtension, errors: &errors)
		self.text?.decorate(json: &json, withKey: "text", errors: &errors)
	}
}

