//
//  CarVehicle.swift
//  Practice
//
//  Created by Chichek on 18.12.24.
//

import Foundation

class CarVehicle: Vehicle , DisplayDetails {
    
    var numberOfDoors = Int()
    
    init(numberOfDoors: Int = Int()) {
        self.numberOfDoors = 4
        super.init(make: "Toyota",model: "CHR",year: 1994)
    }
    
    override func vehicleInfo() -> String {
        return ("\(super.vehicleInfo()), number of doors = \(numberOfDoors)")
    }
    
    func displayDetails() -> String {
        return vehicleInfo()
    }
    
}
