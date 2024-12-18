//
//  VehicleManager.swift
//  Practice
//
//  Created by Chichek on 18.12.24.
//

import Foundation
class VehicleManager {
    var vehicleName = String()
    var vehicles = ["car", "trucks", "motorcycle"]
    
    func newVehicle() {
        vehicles.append(vehicleName)
        print (vehicles)
    }
    
}
