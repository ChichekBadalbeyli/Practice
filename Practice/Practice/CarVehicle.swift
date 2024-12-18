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
        self.numberOfDoors = numberOfDoors
        super.init(make: "Toyota",model: "CHR",year: 1994)
    }
    
    override func vehycleInfo() -> [String] {
        var carInfo = super.vehycleInfo()
        carInfo.append("number of doors \(numberOfDoors)")
        return carInfo
    }
    
    func displayDetails() -> String {
        let detailInfo = vehycleInfo().joined(separator: ",")
        return detailInfo
    }

}
