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
        return ""
    }
    
    mutating func decode(_ type: Double.Type) throws -> Double {
        return 0
    }
    
    mutating func decode(_ type: Float.Type) throws -> Float {
        return 0
    }
    
    mutating func decode(_ type: Int.Type) throws -> Int {
        return 0
    }
    
    mutating func decode(_ type: Int8.Type) throws -> Int8 {
        return 0
    }
    
    mutating func decode(_ type: Int16.Type) throws -> Int16 {
        return 0
    }
    
    mutating func decode(_ type: Int32.Type) throws -> Int32 {
        return 0
    }
    
    mutating func decode(_ type: Int64.Type) throws -> Int64 {
        return 0
    }
    
    mutating func decode(_ type: UInt.Type) throws -> UInt {
        return 0
    }
    
    mutating func decode(_ type: UInt8.Type) throws -> UInt8 {
        return 0
    }
    
    mutating func decode(_ type: UInt16.Type) throws -> UInt16 {
        return 0
    }
    
    mutating func decode(_ type: UInt32.Type) throws -> UInt32 {
        return 0
    }
    
    mutating func decode(_ type: UInt64.Type) throws -> UInt64 {
        return 0
    }
    
    mutating func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        return try EmptyInitializer.initialize(type: type)
    }
    
    mutating func decode(_ type: Bool.Type) throws -> Bool {
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
