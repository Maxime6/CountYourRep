//
//  StatsViewController.swift
//  CountYourRep
//
//  Created by Maxime on 25/05/2020.
//  Copyright © 2020 MaximeTanter. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {

    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        segmentedControl.setTitleTextAttributes(titleTextAttributes, for: .selected)
        segmentedControl.setTitleTextAttributes(titleTextAttributes, for: .normal)
        
        bottomView.layer.cornerRadius = 40
    }


}
