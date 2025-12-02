//
//  Teams.swift
//  SportsApp
//  Created by mohamed awadin7 on 30/11/2025.
//

import Foundation

struct Teams : Codable{
    var teams : [Team]?

    enum CodingKeys : String , CodingKey{
        case teams = "result"
    }
}
