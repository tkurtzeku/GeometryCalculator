//
//  calculationScreen_3Variables.swift
//  GeometryCalculator
//
//  Created by Kurtz, Timothy J. on 11/12/26.
//

import UIKit

class calculationScreen_3Variables: UIViewController {
    
    var formulaName: String = ""
    var shapeName: String = ""
    var shapeImageName: String = ""
    var input1Placeholder: String = ""
    var input2Placeholder: String = ""
    var input3Placeholder: String = ""
    var shapeColor: UIColor = .black
    
    @IBOutlet weak var input1TextField: UITextField!
    @IBOutlet weak var input2TextField: UITextField!
    @IBOutlet weak var input3TextField: UITextField!
    @IBOutlet weak var formulaNameLabel: UILabel!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var shapeImage: UIImageView!
    // TIM: these variables are only for setting colors on the buttons:
    @IBOutlet weak var calcButtonColor: UIButton!
    @IBOutlet weak var returnButtonColor: UIButton!
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        // TIM: Not only should this call a formula calculation function based on the formula selected before entering this screen, but this should also play an animation of the image getting slightly bigger and returning to its original size.
        
    }
    
    @IBAction func returnButtonPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        formulaNameLabel.text = formulaName
        formulaNameLabel.textColor = shapeColor
        
        input1TextField.placeholder = input1Placeholder
        input2TextField.placeholder = input2Placeholder
        input3TextField.placeholder = input3Placeholder
        
        shapeImage.image = UIImage(named: shapeImageName)
        
        calcButtonColor.configuration?.baseBackgroundColor = shapeColor
        returnButtonColor.configuration?.baseBackgroundColor = shapeColor
        
        resultsLabel.text = "..."
        resultsLabel.textColor = shapeColor
        
        calcButtonColor.setTitleColor(.white, for: .normal)
        returnButtonColor.setTitleColor(.white, for: .normal)
    }
}
