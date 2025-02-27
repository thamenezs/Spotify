//
//  PlaylistViewController.swift
//  Spotify
//
//  Created by Thais Souza on 03/02/25.
//

import UIKit

class CategoryViewController: UIViewController {

    private let category: Category
    
    init(category: Category) {
        self.category = category
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Category"
        view.backgroundColor = .systemBackground

    }


}
