//
//  ProfileViewController.swift
//  Spotify
//
//  Created by Thais Souza on 03/02/25.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let tableView: UITableView = {
       let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        fetchProfile()
        view.backgroundColor = .systemBackground
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
    }
    
    private func fetchProfile() {
        APICaller.shared.getCurrentUserProfile { [weak self] result in
            DispatchQueue.main.async {
                self?.failedToGetProfile()
            }
        }
    }
    
    private func updateUI(with model: UserProfile) {
        tableView.isHidden = false
        // configure table models
        tableView.reloadData()
    }
    
    private func failedToGetProfile() {
        let label = UILabel(frame: .zero)
        label.text = "Failed to load profile :("
        label.sizeToFit()
        label.textColor = .secondaryLabel
        view.addSubview(label)
        label.center = view.center
    }
    
    // MARK: Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Foo"
        cell.selectionStyle = .none
        return cell
    }
}
