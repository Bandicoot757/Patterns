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
    private let presenter: PostPresenter
    
    init(output: FeedViewOutput, pr: PostPresenter) {
        self.output = output
        self.presenter = pr
        super.init(nibName:nil, bundle:.main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
