//
//  EmptyDecoder.swift
//  
//
//  Created by John Scott on 05/01/2023.
//

import Foundation

class EmptyDecoder: Decoder {
    var codingPath: [CodingKey]
    
    var userInfo: [CodingUserInfoKey : Any]

    init(codingPath: [CodingKey], userInfo: [CodingUserInfoKey : Any]) {
        self.codingPath = codingPath
        self.userInfo = userInfo
    }
        
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
