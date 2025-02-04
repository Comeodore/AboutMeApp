//
//  UserInfoViewController.swift
//  AboutMeApp
//
//  Created by Vladimir Maksymchuk on 04.02.2025.
//

import UIKit

class ProfileViewController: GradientViewController {
    
    var user: User!

    @IBOutlet weak var personNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        personNameLabel.text = user.person.name
        navigationItem.title = "\(user.person.name) \(user.person.surname)"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.tintColor = .yellow
    }

}
