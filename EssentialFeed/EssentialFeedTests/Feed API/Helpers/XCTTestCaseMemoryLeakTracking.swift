//
//  XCTTestCaseMemoryLeakTracking.swift
//  EssentialFeed
//
//  Created by Chiman Song on 12/30/24.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #file, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak")
        }
    }
}
