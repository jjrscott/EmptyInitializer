//
//  EmptyDecoder.swift
//  
//
//  Created by John Scott on 05/01/2023.
//

import Foundation

struct EmptyDecoder: Decoder {
    var codingPath: [CodingKey] = []
    
    var userInfo: [CodingUserInfoKey : Any] = [:]
        
    func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key> where Key : CodingKey {
        KeyedDecodingContainer(EmptyKeyedDecodingContainer<Key>())
    }
    
    func unkeyedContainer() throws -> UnkeyedDecodingContainer {
        EmptyUnkeyedDecodingContainer()
    }
    
    func singleValueContainer() throws -> SingleValueDecodingContainer {
        EmptySingleValueDecodingContainer()
    }
}
