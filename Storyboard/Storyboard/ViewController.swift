//
//  ViewController.swift
//  Storyboard
//
//  Created by Rohit Deshmukh on 12/23/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var userInput1: UITextField!
    @IBOutlet weak var Label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userInput1.becomeFirstResponder()
    }

    @IBAction func StartB(_ sender: Any) {
        Label1.text = ("Hello, \(userInput1.text!)!")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userInput1.resignFirstResponder()
    }
    
}

