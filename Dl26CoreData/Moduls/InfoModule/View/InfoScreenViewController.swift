//
//  InfoScreenViewController.swift
//  Dl26CoreData
//
//  Created by Daniil Litvinov on 06.11.2022.
//

import Foundation
import UIKit

class InfoScreenViewController: UIViewController {
    
    var data: DataUsers? {
        didSet {
            
        }
    }
        
    private let imagePerson: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let namePersonLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let typePersonLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setupView()
        view.backgroundColor = .white
    }
    
    private func setupLayout() {
        view.addSubview(imagePerson)
        view.addSubview(namePersonLabel)
        view.addSubview(typePersonLabel)
    }
    
    private func setupView() {
        NSLayoutConstraint.activate([
            imagePerson.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            imagePerson.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            imagePerson.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            imagePerson.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            namePersonLabel.topAnchor.constraint(equalTo: imagePerson.bottomAnchor, constant: 50),
            namePersonLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            namePersonLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            namePersonLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            typePersonLabel.topAnchor.constraint(equalTo: namePersonLabel.bottomAnchor, constant: 50),
            typePersonLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            typePersonLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            typePersonLabel.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}

