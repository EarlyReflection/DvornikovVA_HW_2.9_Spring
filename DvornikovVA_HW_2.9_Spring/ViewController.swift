//
//  ViewController.swift
//  DvornikovVA_HW_2.9_Spring
//
//  Created by Vladimir Dvornikov on 10.10.2022.
//

import Spring

class ViewController: UIViewController {
    
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonPressed(_ sender: SpringButton) {
        
        let animation = Animation.getAnimation()
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.animate()
        
        animationLabel.text = """
preset: \(animation.name)
curve: \(animation.curve)
force: \(animation.force)
duration: \(animation.duration)
"""
        startButton.setTitle(animation.name, for: .normal)
    }
}

