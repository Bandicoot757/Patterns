//
//  ViewController.swift
//  Navigation
//
//  Created by Artem Novichkov on 12.09.2020.
//  Copyright © 2020 Artem Novichkov. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    
    private var output: FeedViewOutput
    
    init(output: FeedViewOutput) {
        self.output = output
        super.init(nibName: nil, bundle:.main)
    }
    
    required init?(coder: NSCoder) {
        self.output = PostPresenter()
        super.init(nibName: nil, bundle: .main)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        
        output.navigationController = self.navigationController
        
        view.addSubview(customView)
        
        NSLayoutConstraint.activate([
        customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 250),
        customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -250),
        customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
        customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
        ])
    }
    
    lazy var customView: ContainerView = {
        let view: ContainerView = ContainerView()
        view.toAutoLayout()
        view.onTap = {
            self.output.showPost()
        }
        return view
    }()
    
}
