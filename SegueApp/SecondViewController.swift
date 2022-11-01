//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Gizem Nur Bozkurt on 24.09.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = myName

        // Do any additional setup after loading the view.
    }
    

    

}
