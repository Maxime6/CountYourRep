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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        workoutView.layer.borderWidth = 0.5
        workoutView.layer.borderColor = UIColor(ciColor: .white).cgColor
        workoutView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
