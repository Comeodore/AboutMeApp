//
//  FirstPageViewController.swift
//  LoginApp
//
//  Created by Vladimir Maksymchuk on 03.02.2025.
//

import UIKit

final class HomeViewController: GradientViewController {
    
    var username: String!
    var personFullName: String!

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupWelcomeButton()

        emojiLabel.text = "👋"
        emojiLabel.font = .systemFont(ofSize: 36, weight: .thin)
        
        logoutButton.setTitle("Log Out", for: .normal)
        logoutButton.setTitleColor(.white, for: .normal)
    }
}

extension HomeViewController {
    private func getSafeValue(_ value: String?) -> String {
        value ?? "Unknown"
    }
    
    private func setupWelcomeButton() {
        welcomeLabel.numberOfLines = 2
        welcomeLabel.text = "Welcome, \(getSafeValue(username))!\nMy name is \(getSafeValue(personFullName))"
        welcomeLabel.font = .systemFont(ofSize: 24, weight: .medium)
        welcomeLabel.textColor = .white
        welcomeLabel.textAlignment = .center
        welcomeLabel.adjustsFontSizeToFitWidth = true
    }
}
