//
//  workoutTableViewCell.swift
//  CountYourRep
//
//  Created by Maxime on 23/05/2020.
//  Copyright © 2020 MaximeTanter. All rights reserved.
//

import UIKit

class workoutTableViewCell: UITableViewCell {

    @IBOutlet weak var workoutNameLabel: UILabel!
    @IBOutlet weak var workoutView: UIView!
    @IBOutlet weak var numberOfRepLabel: UILabel!
    @IBOutlet weak var numberOfSeriesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        workoutView.layer.borderWidth = 0.3
        workoutView.layer.borderColor = UIColor(ciColor: .white).cgColor
        workoutView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var workout: Workout? {
        didSet {
            workoutNameLabel.text = workout?.name
            numberOfRepLabel.text = workout?.numberOfRep.description
            numberOfSeriesLabel.text = workout?.numberOfSeries.description
        }
    }
    
}
