//
//  ContainerView.swift
//  Navigation
//
//  Created by Stanislav Leontyev on 01.02.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ContainerView: UIView {
    
    var onTap: (()->Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureView()
    }
    
    lazy var openPostButton: UIButton = {
        let button: UIButton = UIButton()
        button.setTitle("Open post", for: .normal)
        button.backgroundColor = .systemBlue
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.toAutoLayout()
        button.addTarget(self, action: #selector(openPostButtonTapped), for: .touchUpInside)
        return button
    }()

    func configureView() {
        
        addSubview(openPostButton)
        
        NSLayoutConstraint.activate([
            
            openPostButton.topAnchor.constraint(equalTo: topAnchor),
            openPostButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            openPostButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            openPostButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            
        ])
    }
    
    @objc private func openPostButtonTapped() {
        onTap!()
    }
    
}
