//
//  ViewController.swift
//  circularProgressBar
//
//  Created by Flo on 26/11/18.
//  Copyright © 2019 Flo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet weak var progressBar: CircularProgressBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
    
    @objc func handleTap() {
        progressBar.labelSize = 60
        progressBar.safePercent = 100
        progressBar.setProgress(to: 1, withAnimation: true)
    }
}

