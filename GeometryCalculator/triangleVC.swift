//
//  triangleVC.swift
//  GeometryCalculator
//
//  Created by Kurtz, Timothy J. on 11/12/26.
//

import UIKit

class triangleVC: UIViewController {
    let formulas = ["Perimeter", "Area", "Volume (of a Cone)"]
    
    
    @IBAction func returnButtonPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension triangleVC: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("#1", #function, section)
        return formulas.count
    }
    // can be called many times when the TableView needs a cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("#2", #function, indexPath)
        let triCell = tableView.dequeueReusableCell(withIdentifier: "triCell", for: indexPath)
        triCell.textLabel?.text = formulas[indexPath.row]
        return triCell
    }
}

extension triangleVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.row {
        case 0:
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "calculationScreen_3Variables") as? calculationScreen_3Variables else {
                return
            }
            vc.formulaName = "Triangle Perimeter"
            vc.shapeName = "Triangle"
            vc.shapeImageName = "shapeIcon_triangle"
            vc.shapeColor = UIColor(red: 245/255.0, green: 186/255.0, blue: 92/255.0, alpha: 1.0)
            
            vc.input1Placeholder = "Side A"
            vc.input2Placeholder = "Side B"
            vc.input3Placeholder = "Side C"
            
            navigationController?.pushViewController(vc, animated: true)
        case 1:
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "calculationScreen_2Variables") as? calculationScreen_2Variables else {
                return
            }
            vc.formulaName = "Triangle Area"
            vc.shapeName = "Triangle"
            vc.shapeImageName = "shapeIcon_triangle"
            vc.shapeColor = UIColor(red: 245/255.0, green: 186/255.0, blue: 92/255.0, alpha: 1.0)
            
            vc.input1Placeholder = "Base"
            vc.input2Placeholder = "Height"
            
            navigationController?.pushViewController(vc, animated: true)
        case 2:
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "calculationScreen_2Variables") as? calculationScreen_2Variables else {
                return
            }
            vc.formulaName = "Cone Volume"
            vc.shapeName = "Cone"
            vc.shapeImageName = "shapeIcon_triangle"
            vc.shapeColor = UIColor(red: 245/255.0, green: 186/255.0, blue: 92/255.0, alpha: 1.0)
            
            vc.input1Placeholder = "Radius"
            vc.input2Placeholder = "Height"
            
            navigationController?.pushViewController(vc, animated: true)
        default:
            break
        }
    }
}

