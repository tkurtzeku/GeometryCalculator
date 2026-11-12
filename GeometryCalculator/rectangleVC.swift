//
//  rectangleVC.swift
//  GeometryCalculator
//
//  Created by Kurtz, Timothy J. on 11/12/26.
//

import UIKit

class rectangleVC: UIViewController {
    let formulas = ["Perimeter", "Area", "Volume (of a Prism)"]
    
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
        
        // Selecting the type of formula screen to use.
        switch indexPath.row {
        case 0:
            print("Selected RectPerimeter - 2 Variable Formula")
        case 1:
            print("Selected RectArea - 2 Variable Formula")
        case 2:
            print("Selected RectVolume - 3 Variable Formula")
        default:
            print("Unknown!!")
        }
    }
}
