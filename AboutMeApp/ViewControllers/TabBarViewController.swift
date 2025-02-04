//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Vladimir Maksymchuk on 04.02.2025.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    var profileTabTitle: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
        self.viewControllers?[1].tabBarItem.title = profileTabTitle ?? "Profile Name"
    }
}

extension TabBarViewController {
    private func setupTabBar() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
}
