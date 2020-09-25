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
    
    func testThatHashTableCanHashAKey() {
        let value = 32
        let hashSet = HashTable<Int>(capacity:value)
        let key = 2
        let capacity = hashSet.capacity
        
        let expected = testPreHash(key: key, andCapacity: capacity)
        print(expected)
        XCTAssertEqual(expected, hashSet.preHash(key: key, andCapacity: capacity))
        
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
        t
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
    
    
    // HELP FUNCTION for testing hashing
    private func testPreHash(key k: Int, andCapacity m: Int) -> Int {
        let a = 59389690744 //random number
        let b = 30762909936 //random number
        let p = 87178291199 //large prime fits with in the range of an unsigned integer
        
        return (((a*k + b) % p) % m)
    }

}
