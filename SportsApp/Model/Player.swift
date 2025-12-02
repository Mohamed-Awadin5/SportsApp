
//  Player.swift
//  SportsApp
//  Created by mohamed awadin7 on 30/11/2025.


import Foundation

struct Player : Codable{
    
    var playerName : String
    var playerImage : String
    var playerPosition : String
    
    init(playerName: String, playerImage: String, playerPosition: String, playerAge: String) {
        self.playerName = playerName
        self.playerImage = playerImage
        self.playerPosition = playerPosition
    }
    
    enum CodingKeys : String, CodingKey{
        case playerName = "player_name"
        case playerImage = "player_image"
        case playerPosition = "player_type"
    }
    
    
}
