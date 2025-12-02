//
//  Observable.swift
//  SportsApp_new
//
//  Created by mohamed awadin7 on 30/11/2025.
//

import Foundation

class Observable<T> {
    
    var value : T?{
        didSet {
            DispatchQueue.main.async {
                self.listener?(self.value)
            }
        }
    }
    private var listener : ((T?)-> Void)?

    init(value: T? = nil) {
        self.value = value
    }
    
    func bind(_ listener : @escaping ((T?)-> Void)){
        listener(value)
        self.listener = listener
    }
}
