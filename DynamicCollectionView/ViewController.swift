//
//  ViewController.swift
//  DynamicCollectionView
//
//  Created by Rohit Singh on 3/1/19.
//  Copyright © 2019 iOSBuilder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadViewFromBundleAndAddAsSubView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    fileprivate func loadViewFromBundleAndAddAsSubView() {
        guard let viewLoaded = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as? CustomView else {
            return
        }
        viewLoaded.setUpCellWith(items: 10.0)
        viewLoaded.frame = CGRect(x: 0, y: 50, width: view.frame.width, height: 50)
        self.view.addSubview(viewLoaded)
    }

}

