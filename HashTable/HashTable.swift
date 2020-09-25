//
//  HashTable.swift
//  HashTable
//
//  Created by Frank McAuley on 9/24/20.
//

import Foundation

public class HashTable <T> {
    private var buckets: Array<T?>
    private var slots: Int = 0
    private var count = 0
    
    var keyCount : Int {
        get {
            count
        }
    }
    
    var capacity : Int {
        get {
            slots
        }
    }
    
    
    public init(capacity: Int = 16) {
        self.buckets = Array<T?>(repeatElement(nil, count: capacity))
        self.slots = buckets.capacity
    }
    
    func insert(key k: T) {
        let index = preHash(key: k, andCapacity: capacity)
        buckets.insert(k, at: index)
        count += 1
    }
    
    func contains(key k: T) -> Bool {
        let index = preHash(key: k, andCapacity: capacity)
        return (buckets[index] != nil)
    }
    
    
    //this should be private and not exposed through interface
    func preHash(key k: T, andCapacity m: Int) -> Int {
        let a = 59389690744 //random number
        let b = 30762909936 //random number
        let p = 87178291199 //large prime fits with in the range of an unsigned integer
        let kValue = k as! Int // I don't like this
        
        return (((a*kValue + b) % p) % m)
    }
}

