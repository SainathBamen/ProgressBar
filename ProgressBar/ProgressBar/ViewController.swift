//
//  ViewController.swift
//  ProgressBar
//
//  Created by sainath bamen on 05/02/23.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()

    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
    }

    @IBAction func buttonAction(_ sender: Any) {
        
        var progress:Float = 0.0
        progressBar.progress = progress
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { timer in
            progress += 0.01
            self.progressBar.progress = progress
            
            if self.progressBar.progress == 1.0{
                self.progressBar.progress = 0.0
                
            }
        })
    }
    
}

