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
    
    var workouts = Workout.fetchAll()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "workoutTableViewCell", bundle: nil), forCellReuseIdentifier: "workoutCell")

        bottomView.layer.cornerRadius = 40
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        tableView.reloadData()
    }

}

extension WorkoutsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if workouts.count == 0 {
            let rect = CGRect(x: 0, y: 0, width: self.tableView.bounds.width, height: self.tableView.bounds.height)
            let label = UILabel(frame: rect)
            label.text = K.workoutsTableViewLabel
            label.textColor = .white
            label.textAlignment = .center
            tableView.backgroundView = label
            return 0
        } else {
            self.tableView.backgroundView = nil
            return workouts.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "workoutCell", for: indexPath) as? workoutTableViewCell else { return UITableViewCell() }
        cell.workout = workouts[indexPath.row]
        return cell
    }
    
    
}

extension WorkoutsViewController: UITableViewDelegate {
    
}
