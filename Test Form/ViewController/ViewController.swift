//
//  ViewController.swift
//  Test Form
//
//  Created by Aakash Jha on 22/01/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightValueChanged: UILabel!
    @IBOutlet weak var weightValueChanged: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    var bmiValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    //height input slider
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f",sender.value) + " m"
        
        heightValueChanged.text = height
    }
    
    //weight input slider
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f",sender.value) + " kg"
        
        weightValueChanged.text = weight
    }
    
    //calculate button
    @IBAction func calculateBmiButton(_ sender: UIButton) {
        let heightInput = heightSlider.value
        let weightInput = weightSlider.value
        bmiValue = String(format:"%.1f", weightInput/pow(heightInput, 2))
        print(bmiValue)
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = bmiValue
        }
    
    } }
