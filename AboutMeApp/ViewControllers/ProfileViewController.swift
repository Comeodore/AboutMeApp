//
//  UserInfoViewController.swift
//  AboutMeApp
//
//  Created by Vladimir Maksymchuk on 04.02.2025.
//

import UIKit

final class ProfileViewController: GradientViewController {
    
    var user: User!
    
    @IBOutlet weak var personNameValueLabel: UILabel!
    @IBOutlet weak var personSurnameValueLabel: UILabel!
    @IBOutlet weak var personCompanyValueLabel: UILabel!
    @IBOutlet weak var personDepartmentValueLabel: UILabel!
    @IBOutlet weak var personJobTitleValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.title = "\(user.person.name) \(user.person.surname)"
        setupNavigationBar()
        setupPersonInfo()
        setupPersonInfoLabelColor()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.user = user
    }
}

extension ProfileViewController {
    func setupNavigationBar() {
        navigationItem.rightBarButtonItem?.title = "Bio"
        navigationItem.title = "\(user.person.name) \(user.person.surname)"
        navigationItem.rightBarButtonItem?.tintColor = .white
        
        navigationItem.backBarButtonItem?.title = "\(user.person.name) \(user.person.surname)"
        navigationItem.backBarButtonItem?.tintColor = .white
    }
    
    func setupPersonInfo() {
        personNameValueLabel.text = user.person.name
        personSurnameValueLabel.text = user.person.surname
        personCompanyValueLabel.text = user.person.company
        personDepartmentValueLabel.text = user.person.departament
        personJobTitleValueLabel.text = user.person.jobTitle
    }
    
    func setupPersonInfoLabelColor() {
        personNameValueLabel.textColor = .white
        personSurnameValueLabel.textColor = .white
        personCompanyValueLabel.textColor = .white
        personDepartmentValueLabel.textColor = .white
        personJobTitleValueLabel.textColor = .white
    }
}
