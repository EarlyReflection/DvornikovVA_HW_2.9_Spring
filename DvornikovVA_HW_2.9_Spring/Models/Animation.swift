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
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.01f",force))
        duration: \(String(format: "%.01f",duration))
        """
    }
    
    static func getAnimation() -> Animation {
        
        let dataManager = DataManager.shared
        
        let animation = Animation(
            name: dataManager.names.randomElement() ?? "shake",
            curve: dataManager.curves.randomElement() ?? "linear",
            duration: Float.random(in: 0.5 ... 3.0),
            force: Float.random(in: 0.5 ... 2.0)
        )
        
        return animation
    }
}
