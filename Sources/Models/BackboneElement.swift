//
//  BackboneElement.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 (http://hl7.org/fhir/StructureDefinition/BackboneElement) on 2016-11-04.
//  2016, SMART Health IT.
//

import Foundation


/**
Base for elements defined inside a resource.

Base definition for all elements that are defined inside a resource - but not those in a data type.
*/
open class BackboneElement: Element {
	override open class var resourceType: String {
		get { return "BackboneElement" }
	}
	
	/// Extensions that cannot be ignored.
	public var modifierExtension: [Extension]?
	
	
	override open func populate(from json: FHIRJSON, presentKeys: inout Set<String>) throws -> [FHIRValidationError]? {
		var errors = try super.populate(from: json, presentKeys: &presentKeys) ?? [FHIRValidationError]()
		if let exist = json["modifierExtension"] {
			presentKeys.insert("modifierExtension")
			if let val = exist as? [FHIRJSON] {
				do {
					self.modifierExtension = try Extension.instantiate(fromArray: val, owner: self) as? [Extension]
				}
				catch let error as FHIRValidationError {
					errors.append(error.prefixed(with: "modifierExtension"))
				}
			}
			else {
				errors.append(FHIRValidationError(key: "modifierExtension", wants: Array<FHIRJSON>.self, has: type(of: exist)))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON(errors: inout [FHIRValidationError]) -> FHIRJSON {
		var json = super.asJSON(errors: &errors)
		
		if let modifierExtension = self.modifierExtension {
			json["modifierExtension"] = modifierExtension.map() { $0.asJSON(errors: &errors) }
		}
		
		return json
	}
}

