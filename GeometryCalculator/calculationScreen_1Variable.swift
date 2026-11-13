//
//  calculationScreen_1Variable.swift
//  GeometryCalculator
//
//  Created by Kurtz, Timothy J. on 11/12/26.
//

import UIKit

class calculationScreen_1Variable: UIViewController {
    // TIM: This screen has far less to change, since only the Circle formulas use 1 variable. The other two screens will have much more to keep track of.
    var formulaName: String = ""
    
    @IBOutlet weak var formulaNameLabel: UILabel!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        // TIM: Not only should this call a formula calculation function based on the formula selected before entering this screen, but this should also play an animation of the image getting slightly bigger and returning to its original size.
        
    }
    
    @IBAction func returnButtonPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        formulaNameLabel.text = formulaName
        
        resultsLabel.text = ""
    }
}
