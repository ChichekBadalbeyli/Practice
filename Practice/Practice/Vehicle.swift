//
//  Vehicle.swift
//  Practice
//
//  Created by Chichek on 18.12.24.
//

import Foundation

class Vehicle {
    
    var make = String()
    var model = String()
    var year = Int()
    
    init(make: String = String(), model: String = String(), year: Int = Int()) {
        self.make = make
        self.model = model
        self.year = year
    }
    func vehicleInfo () -> String {
        return "\(make),\(model),\(year)"
    }
    
}

