//
//  NetworkReachabilityHandlerTests.swift
//  SportsAppTests
//  Created by mohamed awadin7 on 30/11/2025.


import XCTest
@testable import SportsApp
final class NetworkReachabilityHandlerTests: XCTestCase {
    let reachability : NetworkReachabilityProtocol = NetworkReachabilityHandler()
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testStartNetworkMonitoringReachable(){
        
        let expectation = expectation(description: "Test Reachable")
        
        reachability.startNetworkMonitoring()

        if reachability.getReachable(){
            XCTAssertTrue(reachability.getReachable())
            expectation.fulfill()
        }else{
            XCTAssertFalse(reachability.getReachable())
            expectation.fulfill()
        }
        
        self.waitForExpectations(timeout: 5)

    }
    
    
}
