//
//  TestArchive.swift
//  MohistDataPersistenceModule
//
//  Created by mozhe on 2018/10/26.
//  Copyright © 2018 mozhe. All rights reserved.
//

import Foundation


/// A test Class Property contains Struct,Class eg. netcast

class TestArchive: Codable {
    
    var name: String
    var age: Int
    var data: Data
    var subArchive: SubArchive
    var subStruct: SubStruct
    
    init(name: String, age: Int, data: Data, sub: SubArchive,structs: SubStruct) {
        self.name = name
        self.age  = age
        self.data = data
        self.subArchive = sub
        subStruct = structs
    }
}

class SubArchive: Codable {
    var subName: String
    var age: Int
    
    init(name: String, age: Int) {
        self.subName = name
        self.age = age
    }
}

struct SubStruct: Codable {
    var value: String
    var description: String
    
    init(value: String, description: String) {
        self.value = value
        self.description = description
    }
}
