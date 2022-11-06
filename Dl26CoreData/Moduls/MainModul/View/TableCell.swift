//
//  TableCell.swift
//  Dl26CoreData
//
//  Created by Daniil Litvinov on 06.11.2022.
//

import Foundation
import UIKit

class TableCell: UITableViewCell {
    
    static let id = "TableCell"
    
     lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
     lazy var typeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .black
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayout()
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        accessoryType = .disclosureIndicator
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(typeLabel)
    }
    
    private func setupView() {
        NSLayoutConstraint.activate([
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            typeLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            typeLabel.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 20)
        ])
    }
}

