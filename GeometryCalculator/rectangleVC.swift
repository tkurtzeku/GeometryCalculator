//
//  rectangleVC.swift
//  GeometryCalculator
//
//  Created by Kurtz, Timothy J. on 11/12/26.
//

import UIKit

class rectangleVC: UIViewController {
    let formulas = ["Perimeter", "Area", "Volume (of a Prism)"]
    
    
    @IBAction func returnButtonPressed(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension rectangleVC: UITableViewDataSource {
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
        let rectCell = tableView.dequeueReusableCell(withIdentifier: "rectCell", for: indexPath)
        rectCell.textLabel?.text = formulas[indexPath.row]
        return rectCell
    }
}

extension rectangleVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.row{
            
        case 0, 1:
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "calculationScreen_2Variables") as? calculationScreen_2Variables else{
                return
            }
            
            if indexPath.row == 0{
                vc.formulaName = "Rectangle Perimeter"
            } else {
                vc.formulaName = "Rectangle Area"
            }
            
            vc.shapeName = "Rectangle"
            vc.shapeImageName = "shapeIcon_rectangle"
            vc.shapeColor = UIColor(red: 240/255.0, green: 89/255.0, blue: 89/255.0, alpha: 1.0)
            
            vc.input1Placeholder = "Length"
            vc.input2Placeholder = "Width"
            
            navigationController?.pushViewController(vc, animated: true)
        case 2:
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "calculationScreen_3Variables") as? calculationScreen_3Variables else{
                return
            }
            
            vc.formulaName = "Rectangle Volume"
            vc.shapeName = "Rectangle"
            vc.shapeImageName = "shapeIcon_rectangle"
            vc.shapeColor = UIColor(red: 240/255.0, green: 89/255.0, blue: 89/255.0, alpha: 1.0)

            
            vc.input1Placeholder = "Length"
            vc.input2Placeholder = "Width"
            vc.input3Placeholder = "Height"
            
            navigationController?.pushViewController(vc, animated: true)
        default:
            break
        }
    }
}
