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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAddButton()
    }
    
    private func setUpAddButton() {
        addWorkoutButton.layer.shadowOffset = CGSize(width: 10, height: 10)
        addWorkoutButton.layer.shadowRadius = 10.0
        addWorkoutButton.layer.shadowColor = CGColor(srgbRed: 0/255, green: 0/255, blue: 0/255, alpha: 1.0)
        addWorkoutButton.layer.cornerRadius = 20.0
    }


}
