//
//  TrucksVehicle.swift
//  Practice
//
//  Created by Chichek on 20.12.24.
//

import Foundation
class TrucksVehicle: Vehicle, DisplayDetails {
    
    private  var numberOfDoors = Int()
    
    init(numberOfDoors: Int = Int()) {
        self.numberOfDoors = 2
        super.init(make: "Track1",model: "Jumbo",year: 1994)
    }
    
    internal override func vehicleInfo() -> String {
        return "\(super.vehicleInfo()), number of doors = \(numberOfDoors)"
    }
    
    public  func displayDetails() -> String {
        return vehicleInfo()
    }
    
}
