//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Vladimir Maksymchuk on 04.02.2025.
//

import UIKit

class BioViewController: GradientViewController {
    
    var user: User!

    @IBOutlet var bioTextLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(user.person.name) \(user.person.surname) Bio"
        bioTextLabel.text = user.person.bio
        bioTextLabel.numberOfLines = 0
    }
}
