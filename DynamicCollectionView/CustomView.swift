//
//  View.swift
//  DynamicCollectionView
//
//  Created by Rohit Singh on 3/1/19.
//  Copyright © 2019 iOSBuilder. All rights reserved.
//

import UIKit

class CustomView: UIView {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var colorCollectionView: UICollectionView!
    var items = 0.0
    let distanceAmongCells = 5.0
    
    override func awakeFromNib() {
//        colorCollectionView.backgroundColor = .red
        registerCollectionViewCell()
    }
    
    func setUpCellWith(items: Double) {
        self.items = items
    }
    
    fileprivate func registerCollectionViewCell() {
        let colorNib = UINib(nibName: "FilterFamilyColorCollectionViewCell", bundle: nil)
        colorCollectionView.register(colorNib, forCellWithReuseIdentifier: "FilterFamilyColorCollectionViewCell")
        
        colorCollectionView.delegate = self
        colorCollectionView.dataSource = self
        colorCollectionView.transform = CGAffineTransform(scaleX: -1, y: 1)
    }
}

extension CustomView: UICollectionViewDelegate, UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Int(self.items)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = colorCollectionView.dequeueReusableCell(withReuseIdentifier: "FilterFamilyColorCollectionViewCell", for: indexPath) as? FilterFamilyColorCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let widthDouble = Double(colorCollectionView.frame.size.width)
        let widthAvailable = (widthDouble - ((items * distanceAmongCells) + distanceAmongCells))
        let val = Double((widthAvailable / items))
        let width = (items <= 7) ?  15.0 : val
        return CGSize(width: width, height: 4)
    }
    
}
