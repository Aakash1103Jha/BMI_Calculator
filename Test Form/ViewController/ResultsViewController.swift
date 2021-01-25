//
//  ResultsViewController.swift
//  Test Form
//
//  Created by Aakash Jha on 22/01/21.
//

import UIKit

class ResultsViewController: UIViewController {


    @IBOutlet weak var resultValueLabel: UILabel!
    @IBOutlet weak var resultTitleLabel: UILabel!
    
    var bmiValue : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultValueLabel.text = bmiValue
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
