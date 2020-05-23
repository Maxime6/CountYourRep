//
//  NewWorkoutViewController.swift
//  CountYourRep
//
//  Created by Maxime on 23/05/2020.
//  Copyright © 2020 MaximeTanter. All rights reserved.
//

import UIKit

class NewWorkoutViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var repeatTextField: UITextField!
    @IBOutlet weak var seriesTextField: UITextField!
    @IBOutlet weak var resumeLabel: UILabel!
    @IBOutlet weak var addWorkoutButton: UIButton!
    
    @IBOutlet weak var topView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAddButton()
        topView.layer.cornerRadius = 40
    }
    
    private func setUpAddButton() {
        addWorkoutButton.layer.cornerRadius = 20
        addWorkoutButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        addWorkoutButton.layer.shadowColor = UIColor(ciColor: .black).cgColor
        addWorkoutButton.layer.shadowRadius = 3
        addWorkoutButton.layer.shadowOpacity = 0.3
    }


}
