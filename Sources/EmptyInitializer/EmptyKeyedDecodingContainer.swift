//
//  EmptyKeyedDecodingContainer.swift
//  
//
//  Created by John Scott on 05/01/2023.
//

import Foundation

struct EmptyKeyedDecodingContainer<Key: CodingKey>: KeyedDecodingContainerProtocol {
    var codingPath: [CodingKey] = []
    
    var allKeys: [Key] = []
    
    func contains(_ key: Key) -> Bool {
        return true
    }
    
    func decodeNil(forKey key: Key) throws -> Bool {
        return true
    }
    
    func decode(_ type: Bool.Type, forKey key: Key) throws -> Bool {
        return true
    }
    
    func decode(_ type: String.Type, forKey key: Key) throws -> String {
        return ""
    }
    
    func decode(_ type: Double.Type, forKey key: Key) throws -> Double {
        return 0
    }
    
    func decode(_ type: Float.Type, forKey key: Key) throws -> Float {
        return 0
    }
    
    func decode(_ type: Int.Type, forKey key: Key) throws -> Int {
        return 0
    }
    
    func decode(_ type: Int8.Type, forKey key: Key) throws -> Int8 {
        return 0
    }
    
    func decode(_ type: Int16.Type, forKey key: Key) throws -> Int16 {
        return 0
    }
    
    func decode(_ type: Int32.Type, forKey key: Key) throws -> Int32 {
        return 0
    }
    
    func decode(_ type: Int64.Type, forKey key: Key) throws -> Int64 {
        return 0
    }
    
    func decode(_ type: UInt.Type, forKey key: Key) throws -> UInt {
        return 0
    }
    
    func decode(_ type: UInt8.Type, forKey key: Key) throws -> UInt8 {
        return 0
    }
    
    func decode(_ type: UInt16.Type, forKey key: Key) throws -> UInt16 {
        return 0
    }
    
    func decode(_ type: UInt32.Type, forKey key: Key) throws -> UInt32 {
        return 0
    }
    
    func decode(_ type: UInt64.Type, forKey key: Key) throws -> UInt64 {
        return 0
    }
    
    func decode<T>(_ type: T.Type, forKey key: Key) throws -> T where T : Decodable {
        try T(from: EmptyDecoder())
    }
    
    func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: Key) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        KeyedDecodingContainer(EmptyKeyedDecodingContainer<NestedKey>())
    }
    
    func nestedUnkeyedContainer(forKey key: Key) throws -> UnkeyedDecodingContainer {
        EmptyUnkeyedDecodingContainer()
    }
    
    func superDecoder() throws -> Decoder {
        EmptyDecoder()
    }
    
    func superDecoder(forKey key: Key) throws -> Decoder {
        EmptyDecoder()
    }
}
