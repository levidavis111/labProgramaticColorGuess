//
//  Color.swift
//  lab-programatic-color-guess
//
//  Created by Levi Davis on 10/7/19.
//  Copyright © 2019 Levi Davis. All rights reserved.
//

import Foundation
import UIKit

class ColorGuessingModel {
    
    private var currentColor: UIColor
    private var currentDominantRGBColor: UIColor
        
    func getNewColor() -> UIColor {
        let randomColorTuple = ColorGuessingModel.randColor()
        currentColor = randomColorTuple.color
        currentDominantRGBColor = randomColorTuple.dominantColor
        
        return currentColor
    }
    
    func isDominant(guess: UIColor) -> Bool {
        return currentDominantRGBColor == guess
    }
        
    static private func randColor() -> (color: UIColor, dominantColor: UIColor) {
        let redValue = CGFloat(Float.random(in: 0...1))
        let greenValue = CGFloat(Float.random(in: 0...1))
        let blueValue = CGFloat(Float.random(in: 0...1))
        let color = UIColor(displayP3Red: redValue, green: greenValue, blue: blueValue, alpha: 1)
        let dominantColor: UIColor
        if max(redValue, greenValue, blueValue) == redValue {
            dominantColor = UIColor.red
        } else if max(redValue, greenValue, blueValue) == greenValue {
            dominantColor = UIColor.green
        } else {
            dominantColor = UIColor.blue
        }
        return (color, dominantColor)
        
    }
    
    init() {
        let randomColorTuple = ColorGuessingModel.randColor()
        let currentColor = randomColorTuple.color
        let currentDominantColor = randomColorTuple.dominantColor
        
        self.currentColor = currentColor
        self.currentDominantRGBColor = currentDominantColor
    }
}
