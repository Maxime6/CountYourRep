//
//  String.swift
//  CountYourRep
//
//  Created by Maxime on 26/05/2020.
//  Copyright © 2020 MaximeTanter. All rights reserved.
//

import Foundation


extension String {
    
    var transformToInt: Int {
        guard let intResult = Int(self) else { return 0 }
        return intResult
    }
}
