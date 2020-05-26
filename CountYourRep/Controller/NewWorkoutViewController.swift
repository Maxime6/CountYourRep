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
    @IBOutlet weak var bottomStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAddButton()
        topView.layer.cornerRadius = 40
        topView.frame = CGRect(x: 0.0, y: view.frame.height / 2, width: view.frame.width, height: view.frame.height / 2)
    }
    
    private func setUpAddButton() {
        addWorkoutButton.layer.cornerRadius = 20
        addWorkoutButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        addWorkoutButton.layer.shadowColor = UIColor(ciColor: .black).cgColor
        addWorkoutButton.layer.shadowRadius = 3
        addWorkoutButton.layer.shadowOpacity = 0.3
    }
    
    private func createWorkout() {
        guard let workoutName = nameTextField.text else { return }
        guard let numberOfRep = repeatTextField.text?.transformToInt else { return }
        guard let numberOfSeries = seriesTextField.text?.transformToInt else { return }
        Workout.createWorkout(name: workoutName, numberOfRep: numberOfRep, numberOfSeries: numberOfSeries)
    }
    
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        nameTextField.resignFirstResponder()
        repeatTextField.resignFirstResponder()
        seriesTextField.resignFirstResponder()
    }
    
    @IBAction func addWorkoutButtonTapped(_ sender: Any) {
        if nameTextField.text == "" || repeatTextField.text == "" || seriesTextField.text == "" {
            displayAlert(title: "", message: "Please enter a name, number of rep and series to create your workout", preferredStyle: .alert)
        } else {
            createWorkout()
        }
    }
    
}

extension NewWorkoutViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        repeatTextField.resignFirstResponder()
        seriesTextField.resignFirstResponder()
        return true
    }
}
