//
//  FindCommonCharactersTests.swift
//  HashTableTests
//
//  Created by Frank McAuley on 9/28/20.
//

import XCTest

class FindCommonCharactersTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatFindCommonCharactersCanBeInitalized() throws {
        let fcc = FindCommonCharacters()
        XCTAssertNotNil(fcc)
    }
    
    func testThatGivenAnEmptyArrayThefindDuplicateCharactersWillreturnAnEmptyArray() {
        let fcc = FindCommonCharacters()
        let input = [String]()
        let output = fcc.findCommonChars(input)
        XCTAssertEqual([], output)
    }

    func testThatGivenAnArrayOfThreeWordsTheDuplocatesCharactersWillBeReturned() {
        let fcc = FindCommonCharacters()
        let input = ["cool","lock","cook"]
        let expected = ["c","o"]
        let output = fcc.findCommonChars(input)
        XCTAssertEqual(expected, output)
    }

}
