//
//  MyTableVC.swift
//  tableViewController Exercise
//
//  Created by Jason McCoy on 7/12/16.
//  Copyright © 2016 Jason McCoy. All rights reserved.
//

import UIKit

class MyTableVC: UITableViewController {
    
    var cars = ["scionFRSRocketBunny", "mk5Gti", "blueGlowLambo", "redFerrari"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = cars[indexPath.row]
        cell.detailTextLabel?.text = "I like my ](cars[indexPath.row])"

        return cell
    }

}
