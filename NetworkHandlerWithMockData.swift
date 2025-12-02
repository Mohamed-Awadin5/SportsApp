//
//  NetworkHandlerWithMockData.swift
//  SportsAppTests
//  Created by mohamed awadin7 on 30/11/2025.


import Foundation
@testable import SportsApp
import Alamofire
class NetworkHandlerWithMockData : NetworkRequestProtocol{
    
    var hasError : Bool
    var resource : String
    
    init(hasError: Bool, resource: String) {
        self.hasError = hasError
        self.resource = resource
    }
   nb

    func fetchData<T>(url: String, completionHandler: @escaping (T?, Error?) -> Void) where T : Decodable {
        if hasError{
            completionHandler(nil, nil)
            return
        }else{
            guard let path = Bundle.main.path(forResource: resource, ofType: "json") else{
                completionHandler(nil, nil)
                return
            }
            let url = URL(fileURLWithPath: path)
            var data : T?
            AF.request(url).validate().responseDecodable(of: T.self){ (response) in
                guard let result = response.value else{
                    completionHandler(nil, response.error)
                    return
                }
                data = result
                completionHandler(data, nil)

            }
        }
        
    }
    
    
}
