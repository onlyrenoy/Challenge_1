//
//  ViewController.swift
//  Challenge3
//
//  Created by Renoy Chowdhury on 17/10/2019.
//  Copyright © 2019 Renoy Chowdhury. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var countries = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = countries[indexPath.row].uppercased()

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = storyboard?.instantiateViewController(identifier: "Description") as? DescriptionViewController
        viewController?.countryName = countries[indexPath.row]
        if let vc = viewController {
        navigationController?.pushViewController(vc, animated: true)
        }
        
        
    }
}
