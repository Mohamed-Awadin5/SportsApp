
//  SportsApp
//  Created by mohamed awadin7 on 30/11/2025.

import Foundation

struct Events : Codable{
    var events : [Event]
    
    init(events: [Event]) {
        self.events = events
    }
    
    enum CodingKeys :String , CodingKey{
        case events = "result"
    }
}
