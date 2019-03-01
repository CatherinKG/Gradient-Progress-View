//
//  ViewController.swift
//  ProgressView
//
//  Created by  Catherine on 01/03/19.
//  Copyright © 2019 Catherine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var progressValue = 0.0

    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.perform(#selector(updateProgress), with: nil, afterDelay: 0.2)
    }

    //MARK: Button Action
    @IBAction func resetTapped(_ sender: UIButton) {
        progressValue = 0.0
    }
    
    //MARK: Update UI
    @objc func updateProgress() {
        progressValue = progressValue + 0.01
        self.progressView.progress = Float(progressValue)
        if progressValue != 1.0 {
            self.perform(#selector(updateProgress), with: nil, afterDelay: 0.2)
        }
    }
    
}

