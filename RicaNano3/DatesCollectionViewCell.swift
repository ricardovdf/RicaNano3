//
//  DatesCollectionViewCell.swift
//  RicaNano3
//
//  Created by Ricardo V Del Frari on 18/11/2017.
//  Copyright © 2017 Ricardo V Del Frari. All rights reserved.
//

import UIKit

class DatesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    var event: String = ""
}
