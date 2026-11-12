//
//  calculationScreen_2Variables.swift
//  GeometryCalculator
//
//  Created by Kurtz, Timothy J. on 11/12/26.
//

import UIKit

class calculationScreen_2Variables: UIViewController {
    
    @IBOutlet weak var input1TextField: UITextField!
    @IBOutlet weak var input2TextField: UITextField!
    @IBOutlet weak var formulaNameLabel: UILabel!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var shapeImage: UIImageView!
    // TIM: these variables are only for setting colors on the buttons:
    @IBOutlet weak var calcButtonColor: UIButton!
    @IBOutlet weak var returnButtonColor: UIButton!
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        // TIM: Not only should this call a formula calculation function based on the formula selected before entering this screen, but this should also play an animation of the image getting slightly bigger and returning to its original size.
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
