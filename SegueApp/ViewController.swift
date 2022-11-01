//
//  ViewController.swift
//  SegueApp
//
//  Created by Gizem Nur Bozkurt on 24.09.2022.
//

import UIKit

class ViewController: UIViewController {
    var userName = ""
 
    @IBOutlet weak var nameText: UITextField!
    
    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("did view load")
        //Lifecycle
    }
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
    }
// seconddaki name i buraya tasıma istiyoruz.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondVC" {
            // as! ile nereden alacagını belirtiyoruz
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
}

