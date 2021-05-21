//
//  ViewController.swift
//  progscrol
//
//  Created by Thisura Dodangoda on 2021-05-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var outerScroll: OuterScroll!
    @IBOutlet private weak var innerScroll: InnerScroll!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Red border in nested scrollview
        innerScroll.layer.borderWidth = 2.0
        innerScroll.layer.borderColor = UIColor.red.cgColor
        innerScroll.layer.cornerRadius = 3.0
        
        // Set references
        OuterScroll.Reference.iScroll = innerScroll
    }
}

