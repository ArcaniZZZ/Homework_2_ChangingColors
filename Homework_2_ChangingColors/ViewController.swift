//
//  ViewController.swift
//  Homework_2_ChangingColors
//
//  Created by Arcani on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // Color Box Labels
    @IBOutlet var colorBox: UIView!
    
    // Red Color Stack Outlets
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var redSlider: UISlider!
    
    // Green Color Stack Outlets
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var greenSlider: UISlider!
    
    // Blue Color Stack Outlets
    @IBOutlet var blueColorValue: UILabel!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Default Slider Positions
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        
        // Default Shown Slider Values
        redColorValue.text = String(format: "%.2f", redSlider.value)
        greenColorValue.text = String(format: "%.2f", greenSlider.value)
        blueColorValue.text = String(format: "%.2f", blueSlider.value)
    }

    override func viewDidLayoutSubviews() {
        colorBox.layer.cornerRadius = 10
    }
    
    @IBAction func changeShownRedSliderValue() {
        redColorValue.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func changeShownGreenSliderValue() {
        greenColorValue.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func changeShownBlueSliderValue() {
        blueColorValue.text = String(format: "%.2f", blueSlider.value)
    }
}

