//
//  DuplicateFinder.swift
//  HashTable
//
//  Created by Frank McAuley on 9/25/20.
//

import Foundation

class DuplicateFinder {
    func findDuplicate(in arr: [Int]) -> Int {
        let hashTable = HashTable<Int>(capacity: 32)
        for x in arr {
            hashTable.insert(key: x)
        }
        if let dupValue = hashTable.duplicate() {
            return dupValue
        }
        return 0
    }

}
