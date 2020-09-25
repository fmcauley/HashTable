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
    
    func testThatTheCountOfTheHashSetWillBeOneAfterAnInsert() {
        let value = 32
        let hashSet = HashTable<Int>(capacity: value)
        let key = 23
        let expected = 1
        hashSet.insert(key: key)
        XCTAssertEqual(hashSet.keyCount, expected)
    }
    
    func testThatTheBucketContainsaValueThatWasInserted() {
        let value = 32
        let hashSet = HashTable<Int>(capacity: value)
        let key = 23
        let expected = true
        hashSet.insert(key: key)
        let output = hashSet.contains(key: key)
        XCTAssertEqual(output, expected)
    }
    
    func testThatTheBucketDoesNotContainsaValueThatWasInserted() {
        let value = 32
        let hashSet = HashTable<Int>(capacity: value)
        let key = 23
        let expected = false
        let output = hashSet.contains(key: key)
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatTheRemovedValueIsNoLongerContainedInTheHashTable() {
        let value = 32
        let expected = false
        let hashSet = HashTable<Int>(capacity: value)
        let key = 23
        let output = hashSet.removeValue(key: key)
        XCTAssertEqual(output, expected)
    }
    
    func testThatDuplicateWillReturnADuplicateValue() {
        let value = 32
        let hashSet = HashTable<Int>(capacity: value)
        let key = 23
        let expected = 23
        
        hashSet.insert(key: key)
        hashSet.insert(key: key)
        
        let output = hashSet.duplicate()
        
        XCTAssertEqual(expected, output)
        
    }

}
