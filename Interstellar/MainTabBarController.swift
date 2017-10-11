//
//  MainTabBarController.swift
//  Interstellar
//
//  Created by Harry on 12/10/2017.
//  Copyright © 2017 devconcept. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let collectionViewLayout = UICollectionViewFlowLayout()
        let userProfileController = UserProfileController(collectionViewLayout: collectionViewLayout)
        let navController = UINavigationController(rootViewController: userProfileController)
        
        navController.tabBarItem.image = #imageLiteral(resourceName: "profile_unselected")
        navController.tabBarItem.selectedImage = #imageLiteral(resourceName: "profile_selected")
        
        tabBar.tintColor = .black
        
        viewControllers = [navController]
        
    }
    
}
