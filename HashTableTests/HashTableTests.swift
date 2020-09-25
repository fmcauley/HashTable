//
//  HashTableTests.swift
//  HashTableTests
//
//  Created by Frank McAuley on 9/24/20.
//

import XCTest
@testable import HashTable

class HashTableTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatHashSetHasACapacity(){
        let value = 4
        let hashSet = HashTable<Int>(capacity: value)
        XCTAssertEqual(hashSet.capacity, value)
    }

}
