//
//  PostPresenter.swift
//  Navigation
//
//  Created by Stanislav Leontyev on 02.02.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class PostPresenter: NSObject, FeedViewOutput {
    
    var navigationController: UINavigationController?
    
    func showPost() {
        let postVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "PostVC") as? PostViewController
        navigationController?.pushViewController(postVC!, animated: true)
    }

}
