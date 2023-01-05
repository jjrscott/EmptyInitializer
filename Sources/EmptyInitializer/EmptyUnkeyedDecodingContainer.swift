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
    
    var isAtEnd: Bool = false
    
    var currentIndex: Int = 0
    
    mutating func decode(_ type: String.Type) throws -> String {
        isAtEnd = true
        return ""
    }
    
    mutating func decode(_ type: Double.Type) throws -> Double {
        isAtEnd = true
        return 0
    }
    
    mutating func decode(_ type: Float.Type) throws -> Float {
        isAtEnd = true
        return 0
    }
    
    mutating func decode(_ type: Int.Type) throws -> Int {
        isAtEnd = true
        return 0
    }
    
    mutating func decode(_ type: Int8.Type) throws -> Int8 {
        isAtEnd = true
        return 0
    }
    
    mutating func decode(_ type: Int16.Type) throws -> Int16 {
        isAtEnd = true
        return 0
    }
    
    mutating func decode(_ type: Int32.Type) throws -> Int32 {
        isAtEnd = true
        return 0
    }
    
    mutating func decode(_ type: Int64.Type) throws -> Int64 {
        isAtEnd = true
        return 0
    }
    
    mutating func decode(_ type: UInt.Type) throws -> UInt {
        isAtEnd = true
        return 0
    }
    
    mutating func decode(_ type: UInt8.Type) throws -> UInt8 {
        isAtEnd = true
        return 0
    }
    
    mutating func decode(_ type: UInt16.Type) throws -> UInt16 {
        isAtEnd = true
        return 0
    }
    
    mutating func decode(_ type: UInt32.Type) throws -> UInt32 {
        isAtEnd = true
        return 0
    }
    
    mutating func decode(_ type: UInt64.Type) throws -> UInt64 {
        isAtEnd = true
        return 0
    }
    
    mutating func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        isAtEnd = true
        return try EmptyInitializer.initialize(type: type)
    }
    
    mutating func decode(_ type: Bool.Type) throws -> Bool {
        isAtEnd = true
        return true
    }
    
    mutating func decodeNil() throws -> Bool {
        return true
    }
    
    mutating func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        fatalError()
    }
    
    mutating func nestedUnkeyedContainer() throws -> UnkeyedDecodingContainer {
        fatalError()
    }
    
    mutating func superDecoder() throws -> Decoder {
        fatalError()
    }
}
