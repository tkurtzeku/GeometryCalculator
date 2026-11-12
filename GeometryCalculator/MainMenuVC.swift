//
//  ViewController.swift
//  GeometryCalculator
//
//  Created by Kurtz, Timothy J. on 11/10/26.
//

import UIKit

class MainMenuVC: UIViewController {
    let shapes = ["Rectangle / Prism", "Circle / Sphere", "Triangle / Cone"]

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
