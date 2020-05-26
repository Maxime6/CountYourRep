//
//  UIViewController.swift
//  CountYourRep
//
//  Created by Maxime on 26/05/2020.
//  Copyright © 2020 MaximeTanter. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func displayAlert(title: String, message: String, preferredStyle: UIAlertController.Style) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        alertVC.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alertVC, animated: true, completion: nil)
    }
}
