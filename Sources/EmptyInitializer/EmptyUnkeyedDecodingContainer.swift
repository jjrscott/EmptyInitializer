//
//  EmptyUnkeyedDecodingContainer.swift
//  
//
//  Created by John Scott on 05/01/2023.
//

import Foundation

struct EmptyUnkeyedDecodingContainer: UnkeyedDecodingContainer {
    
    var codingPath: [CodingKey] = []
    
    var count: Int?
    
    var isAtEnd: Bool = true
    
    var currentIndex: Int = 0
    
    mutating func decode(_ type: String.Type) throws -> String {
        ""
    }
    
    mutating func decode(_ type: Double.Type) throws -> Double {
        0
    }
    
    mutating func decode(_ type: Float.Type) throws -> Float {
        0
    }
    
    mutating func decode(_ type: Int.Type) throws -> Int {
        0
    }
    
    mutating func decode(_ type: Int8.Type) throws -> Int8 {
        0
    }
    
    mutating func decode(_ type: Int16.Type) throws -> Int16 {
        0
    }
    
    mutating func decode(_ type: Int32.Type) throws -> Int32 {
        0
    }
    
    mutating func decode(_ type: Int64.Type) throws -> Int64 {
        0
    }
    
    mutating func decode(_ type: UInt.Type) throws -> UInt {
        0
    }
    
    mutating func decode(_ type: UInt8.Type) throws -> UInt8 {
        0
    }
    
    mutating func decode(_ type: UInt16.Type) throws -> UInt16 {
        0
    }
    
    mutating func decode(_ type: UInt32.Type) throws -> UInt32 {
        0
    }
    
    mutating func decode(_ type: UInt64.Type) throws -> UInt64 {
        0
    }
    
    mutating func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        try T(from: EmptyDecoder())
    }
    
    mutating func decode(_ type: Bool.Type) throws -> Bool {
        true
    }
    
    mutating func decodeNil() throws -> Bool {
        true
    }
    
    mutating func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        KeyedDecodingContainer(EmptyKeyedDecodingContainer<NestedKey>())
    }
    
    mutating func nestedUnkeyedContainer() throws -> UnkeyedDecodingContainer {
        EmptyUnkeyedDecodingContainer()
    }
    
    mutating func superDecoder() throws -> Decoder {
        EmptyDecoder()
    }
}
