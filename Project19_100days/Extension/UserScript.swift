//
//  UserScript.swift
//  Extension
//
//  Created by user228564 on 2/28/23.
//

import Foundation

class UserScript: Codable {
    var name: String
    var script: String
    
    init(name: String, script: String) {
        self.name = name
        self.script = script
    }
}
