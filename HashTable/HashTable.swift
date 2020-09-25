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
    
    var capacity : Int {
        get {
            0
        }
    }
    
    
    public init(capacity: Int = 20) {
        self.buckets = Array<T?>(repeatElement(nil, count: capacity))
        self.slots = buckets.capacity
    }
}
