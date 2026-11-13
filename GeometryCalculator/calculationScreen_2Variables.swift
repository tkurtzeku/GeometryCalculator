//
//  calculationScreen_2Variables.swift
//  GeometryCalculator
//
//  Created by Kurtz, Timothy J. on 11/12/26.
//

import UIKit

class calculationScreen_2Variables: UIViewController {
    
    var formulaName: String = ""
    var shapeName: String = ""
    var shapeImageName: String = ""
    var shapeColor: UIColor = .systemRed
    
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
    
    @IBAction func returnButtonPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        formulaNameLabel.text = formulaName
        
        shapeImage.image = UIImage(named: shapeImageName)
        
        calcButtonColor.backgroundColor = shapeColor
        returnButtonColor.backgroundColor = shapeColor
        
        resultsLabel.text = ""
        
        calcButtonColor.setTitleColor(.white, for: .normal)
        returnButtonColor.setTitleColor(.white, for: .normal)
    }
}
