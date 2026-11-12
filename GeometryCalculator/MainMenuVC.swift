//
//  ViewController.swift
//  GeometryCalculator
//
//  Created by Kurtz, Timothy J. on 11/10/26.
//

import UIKit

class MainMenuVC: UIViewController {
    let shapes = ["Rectangle / Prism", "Circle / Sphere", "Triangle / Cone"]
    let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    @IBAction func unwindToMain(_ unwindSegue: UIStoryboardSegue) {
        if let sourceVC = unwindSegue.source as? rectangleVC {
            print("Unwinding to main from rectangleVC")
        }
        else if let sourceVC = unwindSegue.source as? circleVC {
            print("Unwinding to main from circleVC")
        }
        else if let sourceVC = unwindSegue.source as? triangleVC {
            print("Unwinding to main from triangleVC")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension MainMenuVC: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("#1", #function, section)
        return shapes.count
    }
    // can be called many times when the TableView needs a cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("#2", #function, indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = shapes[indexPath.row]
        return cell
    }
}

extension MainMenuVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Selecting the
        switch indexPath.row {
        case 0:
            print("Selected Rectangle/Prism")
            guard let rectViewController = mainStoryboard.instantiateViewController(withIdentifier: "rectangleVC") as? rectangleVC else {
                return
            }
            present(rectViewController, animated: true)
        case 1:
            print("Selected Circle/Sphere")
            guard let circleViewController = mainStoryboard.instantiateViewController(withIdentifier: "circleVC") as? circleVC else {
                return
            }
            present(circleViewController, animated: true)
        case 2:
            print("Selected Triangle/Cone")
            guard let triViewController = mainStoryboard.instantiateViewController(withIdentifier: "triangleVC") as? triangleVC else {
                return
            }
            present(triViewController, animated: true)
        default:
            print("Unknown!!")
        }
    }
}
