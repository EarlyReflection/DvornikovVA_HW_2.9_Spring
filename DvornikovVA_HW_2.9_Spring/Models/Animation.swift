//
//  Animation.swift
//  DvornikovVA_HW_2.9_Spring
//
//  Created by Vladimir Dvornikov on 14.10.2022.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let duration: Float
    let force: Float
    
    static func getAnimation() -> Animation {
        
        let dataManager = DataManager.shared
        
        let randomAnimation = Animation(
            name: dataManager.names.randomElement() ?? "shake",
            curve: dataManager.curves.randomElement() ?? "linear",
            duration: Float.random(in: 0.1 ... 3.0),
            force: Float.random(in: 0.5 ... 2.0))
        
        return randomAnimation
    }    
}
