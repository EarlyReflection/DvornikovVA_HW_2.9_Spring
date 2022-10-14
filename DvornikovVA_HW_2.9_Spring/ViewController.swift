//
//  ViewController.swift
//  DvornikovVA_HW_2.9_Spring
//
//  Created by Vladimir Dvornikov on 10.10.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var startButton: SpringButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonPressed(_ sender: SpringButton) {
        animationView.animation = "shake"
        animationView.force = 0.5
        animationView.duration = 1
        animationView.curve = "linear"
        animationView.animate()
    }
}

