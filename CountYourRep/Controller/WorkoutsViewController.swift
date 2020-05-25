//
//  WorkoutsViewController.swift
//  CountYourRep
//
//  Created by Maxime on 23/05/2020.
//  Copyright © 2020 MaximeTanter. All rights reserved.
//

import UIKit

class WorkoutsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bottomView: UIView!
    
    var workouts = [Workout]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "workoutTableViewCell", bundle: nil), forCellReuseIdentifier: "workoutCell")

        bottomView.layer.cornerRadius = 40
    }

}

extension WorkoutsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workouts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "workoutCell", for: indexPath) as? workoutTableViewCell else { return UITableViewCell() }
        return cell
    }
    
    
}

extension WorkoutsViewController: UITableViewDelegate {
    
}
