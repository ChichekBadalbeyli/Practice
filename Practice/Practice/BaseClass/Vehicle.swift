//
//  Vehicle.swift
//  Practice
//
//  Created by Chichek on 18.12.24.
//

import Foundation

class Vehicle {
    
    private var make = String()
    private var model = String()
    private var year = Int()
    
    init(make: String = String(), model: String = String(), year: Int = Int()) {
        self.make = make
        self.model = model
        self.year = year
    }
    
    public func vehicleInfo () -> String {
        return "\(make),\(model),\(year)"
    }
}

