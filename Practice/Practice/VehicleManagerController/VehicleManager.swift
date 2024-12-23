//
//  VehicleManager.swift
//  Practice
//
//  Created by Chichek on 18.12.24.
//

import UIKit

class VehicleManager: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var vehicleName = String()
    private var carDetail = CarVehicle()
    private var truckDetail = TrucksVehicle()
    private var motorDetail = MotorcycleVehicle()
    private var vehicles = ["car", "trucks", "motorcycle"]
    private var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configureTableView()
    }
    
    private func configureTableView() {
        tableView = UITableView(frame: view.bounds)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(VehicleManagerViewCell.self, forCellReuseIdentifier: "VehicleManagerViewCell")
        view.addSubview(tableView)
    }
    
    private func newVehicle(name : String) {
        vehicleName = name
        vehicles.append(vehicleName)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vehicles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VehicleManagerViewCell", for: indexPath) as! VehicleManagerViewCell
        let vehicleName = vehicles[indexPath.row]
        cell.vehicleLabel.text = vehicleName
        switch vehicleName {
        case "car":
            cell.detailLabel.text = carDetail.displayDetails()
        case "trucks":
            cell.detailLabel.text = truckDetail.displayDetails()
        case "motorcycle":
            cell.detailLabel.text = motorDetail.displayDetails()
        default:
            cell.detailLabel.text = ""
        }
        return cell
    }
    
}
