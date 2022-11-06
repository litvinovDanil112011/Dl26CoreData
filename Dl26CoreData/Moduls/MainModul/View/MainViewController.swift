//
//  MainViewController.swift
//  Dl26CoreData
//
//  Created by Daniil Litvinov on 06.11.2022.
//

import UIKit

class MainScreenViewConroller: UIViewController {
    
    var data = DataUsers()
    
    private lazy var searchTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .systemGray6
        textField.placeholder = "Name"
        textField.layer.cornerRadius = 8
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 10)
        textField.returnKeyType = .default
        return textField
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.setTitle("Press", for: .normal)
        button.layer.cornerRadius = 8
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private lazy var table: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(TableCell.self, forCellReuseIdentifier: TableCell.id)
        table.dataSource = self
        table.delegate = self
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Users"
        view.backgroundColor = .white
        data.addPersons()
        setupLayout()
        setupView()
    }
    
    private func setupLayout() {
        view.addSubview(searchTextField)
        view.addSubview(button)
        view.addSubview(table)
    }
    
    private func setupView() {
        NSLayoutConstraint.activate([
            searchTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: Metric.topSearchTextField),
            searchTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Metric.indentFromEdge),
            searchTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Metric.indentFromEdge),
            searchTextField.heightAnchor.constraint(equalToConstant: Metric.heightView)
        ])
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: searchTextField.bottomAnchor, constant: Metric.indentFromEdge),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Metric.indentFromEdge),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Metric.indentFromEdge),
            button.heightAnchor.constraint(equalToConstant: Metric.heightView)
        ])
        
        NSLayoutConstraint.activate([
            table.topAnchor.constraint(equalTo: button.bottomAnchor, constant: Metric.indentFromEdge),
            table.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            table.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            table.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
}

extension MainScreenViewConroller: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = table.dequeueReusableCell(withIdentifier: TableCell.id, for: indexPath) as? TableCell else { return UITableViewCell() }
        cell.nameLabel.text = data.array[indexPath.row].season
        cell.typeLabel.text = data.array[indexPath.row].data
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let infoViewController = InfoScreenViewController()
        
        tableView.deselectRow(at: indexPath, animated: true)
        navigationController?.pushViewController(infoViewController, animated: true)
    }
    
}
