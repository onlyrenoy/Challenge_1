//
//  DescriptionViewController.swift
//  Challenge3
//
//  Created by Renoy Chowdhury on 18/10/2019.
//  Copyright © 2019 Renoy Chowdhury. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    var countryName: String?
    /*
     TO DO:
        Aggiungere funzionamento pulsante per condivisione
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonTapped))
        
        flagImageView.image = UIImage(named: countryName ?? "")
        flagImageView.layer.borderColor = UIColor.gray.cgColor
        flagImageView.layer.borderWidth = 1
        countryLabel.text = countryName?.uppercased()
    }
    
    @objc
    func doneButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func shareButtonTapped(_ sender: Any) {
        let activityView = UIActivityViewController(activityItems: [flagImageView.image], applicationActivities: [])
        present(activityView, animated: true)
        
    }
    
}
