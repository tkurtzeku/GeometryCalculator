//
//  ShapeDisplay.swift
//  GeometryCalculator
//
//  Created by Kurtz, Timothy J. on 11/12/26.
//

import Foundation
import UIKit

enum ShapeDisplay: String {
    case rectangle = "Rectangle"
    case circle = "Circle"
    case triangle = "Triangle"
    
    /*
     TIM: not sure how this should work exactly. We want a way to update the 2-and-3 variable calculation screens with background colors, correct UIImages, correct UILabels, and placeholder text in UITextFields.
     However, I don't even know if an enum is the best solution to do this. If you can think of a better way, please change everything here. This is all temporary.
     */
    func setShapeOnScreen() {
        switch self {
        case .rectangle:
            print("Rectangle Selected")
        case .circle:
            print("Circle Selected")
        case .triangle:
            print("Triangle Selected")
        }
    }
}
