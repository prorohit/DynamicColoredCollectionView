//
//  FilterFamilyColorCollectionViewCell.swift
//  DynamicCollectionView
//
//  Created by Rohit Singh on 3/1/19.
//  Copyright © 2019 iOSBuilder. All rights reserved.
//

import UIKit

class FilterFamilyColorCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = getRandomColor()
    }
    
    func getRandomColor() -> UIColor {
        let randomRed: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let randomGreen: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        let randomBlue: CGFloat = CGFloat(arc4random()) / CGFloat(UInt32.max)
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }

}
