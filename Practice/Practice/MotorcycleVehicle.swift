//
//  MotorcycleVehicle.swift
//  Practice
//
//  Created by Chichek on 21.12.24.
//

import Foundation

class MotorcycleVehicle: Vehicle,DisplayDetails{
    
    var numberOfDoors = Int()
    
    init(numberOfDoors: Int = Int()) {
        self.numberOfDoors = numberOfDoors
        super.init(make: "Harley-Davidson", model: "X440", year: 1994)
    }
    
    override func vehicleInfo() -> String {
        return "\(super.vehicleInfo()),number of doors = \(numberOfDoors)"
    }
    
    func displayDetails() -> String {
        return vehicleInfo()
    }
    
    
}
