//
//  TestDuplicateFinder.swift
//  HashTableTests
//
//  Created by Frank McAuley on 9/25/20.
//

import XCTest
@testable import HashTable
class TestDuplicateFinder: XCTestCase {

    func testThatDuplicateFinderWillFindADuplciateTwo() throws {
        let input = [1,3,4,2,2]
        let df = DuplicateFinder()
        let expected = 2
        let output = df.findDuplicate(in: input)
        XCTAssertEqual(expected, output)
    }
    
    func testThatDuplicateFinderWillFindADuplciateThree() throws {
        let input = [3,1,3,4,2]
        let df = DuplicateFinder()
        let expected = 3
        let output = df.findDuplicate(in: input)
        XCTAssertEqual(expected, output)
    }


}
