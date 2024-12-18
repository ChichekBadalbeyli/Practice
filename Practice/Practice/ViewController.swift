//
//  ViewController.swift
//  Practice
//
//  Created by Chichek on 18.12.24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var vehicleName = String()
    var vehacleType = CarVehicle()
    var vehicles = ["car", "trucks", "motorcycle"]
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configureTableView()
    }

    func configureTableView() {
        tableView = UITableView(frame: view.bounds)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        view.addSubview(tableView)
    }
    
    func newVehicle(name : String) {
        vehicleName = name
        vehicles.append(vehicleName)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        vehicles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if cell.contentView.subviews.isEmpty
        {         let titleLabel = UILabel(frame: CGRect(x: 15, y: 5, width: cell.contentView.frame.width - 30, height: 20))
            titleLabel.tag = 1 // Tag for title label
            cell.contentView.addSubview(titleLabel)
            
            let detailLabel = UILabel(frame: CGRect(x: 15, y: 30, width: cell.contentView.frame.width - 30, height: 20))
            detailLabel.font = UIFont.systemFont(ofSize: 12)
            detailLabel.textColor = .gray
            detailLabel.tag = 2 // Tag for detail label
            cell.contentView.addSubview(detailLabel)}
        let titleLabel = cell.contentView.viewWithTag(1) as! UILabel
                let detailLabel = cell.contentView.viewWithTag(2) as! UILabel
        
       titleLabel.text = vehicles[indexPath.row]
       detailLabel.text = vehacleType.displayDetails()
//        cell.tile
//        cell.text = vehicles[indexPath.row]
      //  cell.textLabel?.text = vehacleType.displayDetails()
        return cell
    }

}

