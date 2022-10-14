//
//  ViewController.swift
//  DvornikovVA_HW_2.9_Spring
//
//  Created by Vladimir Dvornikov on 10.10.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonPressed(_ sender: SpringButton) {
    }
    
    
}

