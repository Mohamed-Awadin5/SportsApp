//
//  Leagues.swift
//  SportsApp
//
//  Created by mohamed awadin7 on 30/11/2025.


import Foundation

struct Leagues : Codable{
    var leagues : [League]
    
    init(leagues: [League]) {
        self.leagues = leagues
    }
    
    enum CodingKeys : String, CodingKey{
        case leagues = "result"
    }
}
