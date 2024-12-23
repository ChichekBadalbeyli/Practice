//
//  VehicleManagerViewCell.swift
//  Practice
//
//  Created by Chichek on 20.12.24.
//

import UIKit

class VehicleManagerViewCell: UITableViewCell {
    
    var vehicleLabel = UILabel()
    var detailLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: "VehicleManagerViewCell")
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureUI()
    }
    
    func configureUI() {
        vehicleLabel.translatesAutoresizingMaskIntoConstraints = false
        detailLabel.translatesAutoresizingMaskIntoConstraints = false
        
        vehicleLabel.textColor = .black
        vehicleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        vehicleLabel.numberOfLines = 0
        
        detailLabel.textColor = .darkGray
        detailLabel.font = UIFont.systemFont(ofSize: 15)
        detailLabel.numberOfLines = 0
        
        contentView.addSubview(vehicleLabel)
        contentView.addSubview(detailLabel)
        
        NSLayoutConstraint.activate([
            vehicleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            vehicleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            vehicleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 5),
            
            detailLabel.topAnchor.constraint(equalTo: vehicleLabel.bottomAnchor, constant: 10),
            detailLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            detailLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 5),
            detailLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)])
    }
    
}
