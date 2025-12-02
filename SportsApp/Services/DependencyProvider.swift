//
//  DependencyProvider.swift
//  SportsApp
////  Created by mohamed awadin7 on 30/11/2025.

//

import Foundation
import UIKit

struct DependencyProvider{
    
    static var networkRequestHandler : NetworkRequestProtocol{
        return NetworkRequestHandler()
    }
    
    static var networkReachability : NetworkReachabilityProtocol{
        return NetworkReachabilityHandler()
    }
    static var database : DatabaseManagerProtocol{
        return DatabaseManager.getInstance()
    }
    
    static var rootViewController: UINavigationController{
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! UINavigationController
        
        return vc
    }
    static var leaguesViewModel : LeagueDetailsViewModel{
        return LeagueDetailsViewModel(networkRequest: networkRequestHandler)
    }
    
   
    
    
}
