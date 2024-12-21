//
//  TrucksVehicle.swift
//  Practice
//
//  Created by Chichek on 20.12.24.
//

import Foundation
class TrucksVehicle: Vehicle, DisplayDetails {
    
    var numberOfDoors = Int()
    
    override init(make: String = String(), model: String = String(), year: Int = Int()) {
        self.numberOfDoors = 2
        super.init(make:"Track1", model: "Jumbo", year: 1994)
    }
    
    override func vehicleInfo() -> String {
        return "\(super.vehicleInfo()), number of doors = \(numberOfDoors)"
    }
    
    func displayDetails() -> String {
        return vehicleInfo()
    }
    
}
