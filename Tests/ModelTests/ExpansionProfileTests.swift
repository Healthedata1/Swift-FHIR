//
//  ExpansionProfileTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 on 2016-10-26.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ExpansionProfileTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ExpansionProfile {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ExpansionProfile {
		let instance = SwiftFHIR.ExpansionProfile(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testExpansionProfile1() {
		do {
			let instance = try runExpansionProfile1()
			try runExpansionProfile1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ExpansionProfile successfully, but threw")
		}
	}
	
	@discardableResult
	func runExpansionProfile1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ExpansionProfile {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "expansionprofile-example.json")
		
		XCTAssertTrue(inst.excludeNested ?? false)
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[ Provide Rendering ]</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}