//
//  DataManager.swift
//  DvornikovVA_HW_2.9_Spring
//
//  Created by Vladimir Dvornikov on 14.10.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names =  [
        "shake",
        "pop",
        "morph",
        "squeeze",
        "wobble",
        "swing",
        "flipX",
        "flipY",
        "fall",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "fadeIn",
        "fadeOut",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "flash"
    ]
    
    let curves = [
        "spring",
        "linear",
        "easeIn",
        "easeOut",
        "easeInOut",
    ]
    
    private init () {}
    
}
