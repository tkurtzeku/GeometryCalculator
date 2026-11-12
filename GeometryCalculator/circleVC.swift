//
//  circleVC.swift
//  GeometryCalculator
//
//  Created by Kurtz, Timothy J. on 11/12/26.
//

import UIKit

class circleVC: UIViewController {
    let formulas = ["Circumference", "Area", "Volume (of a Sphere)"]
    
    @IBAction func unwindToCircle(_ unwindSegue: UIStoryboardSegue) {
        if let sourceVC = unwindSegue.source as? calculationScreen_1Variable {
            print("Unwinding to circleVC from 1VariableCalcScreen")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension circleVC: UITableViewDataSource {
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
        let circleCell = tableView.dequeueReusableCell(withIdentifier: "circleCell", for: indexPath)
        circleCell.textLabel?.text = formulas[indexPath.row]
        return circleCell
    }
}

extension circleVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Selecting the type of formula screen to use.
        switch indexPath.row {
        case 0:
            print("Selected CircleCircumference - 1 Variable Formula")
            
        case 1:
            print("Selected CircleArea - 1 Variable Formula")
        case 2:
            print("Selected CircleVolume - 1 Variable Formula")
        default:
            print("Unknown!!")
        }
    }
}
