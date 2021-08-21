//
//  ViewController.swift
//  Homework_2_ChangingColors
//
//  Created by Arcani on 21.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Color Box Outlet
    @IBOutlet var colorBox: UIView!
    
    // MARK: Red Color Stack Outlets
    @IBOutlet var redColorValue: UILabel!
    @IBOutlet var redSlider: UISlider!
    
    // MARK: Green Color Stack Outlets
    @IBOutlet var greenColorValue: UILabel!
    @IBOutlet var greenSlider: UISlider!
    
    // MARK: Blue Color Stack Outlets
    @IBOutlet var blueColorValue: UILabel!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Default Slider Positions
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        
        // MARK: Default Shown Slider Values
        redColorValue.text = String(format: "%.2f", redSlider.value)
        greenColorValue.text = String(format: "%.2f", greenSlider.value)
        blueColorValue.text = String(format: "%.2f", blueSlider.value)
    }
    // MARK: Making the color box look neat and changing the color of the Color Box
    override func viewDidLayoutSubviews() {
        colorBox.layer.cornerRadius = 10
        colorBox.backgroundColor = changeColorBoxColor()
    }
    
    // MARK: Methods that change the shown values of RGB
    @IBAction func changeShownRedSliderValue() {
        redColorValue.text = String(format: "%.2f", redSlider.value)
    }
    
    @IBAction func changeShownGreenSliderValue() {
        greenColorValue.text = String(format: "%.2f", greenSlider.value)
    }
    
    @IBAction func changeShownBlueSliderValue() {
        blueColorValue.text = String(format: "%.2f", blueSlider.value)
    }
    
    // MARK: Method that changes the color of the Color Box
    func changeColorBoxColor() -> UIColor {
    UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
}


