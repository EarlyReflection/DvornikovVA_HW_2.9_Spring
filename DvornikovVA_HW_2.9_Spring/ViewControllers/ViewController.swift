//
//  ViewController.swift
//  DvornikovVA_HW_2.9_Spring
//
//  Created by Vladimir Dvornikov on 10.10.2022.
//

import Spring

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!

    // MARK: - Private properties
    private var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
    }
    
    // MARK: - IB Actions
    @IBAction func startButtonPressed(_ sender: SpringButton) {
        animationLabel.text = animation.description
 
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle(animation.name, for: .normal)
    }
}

