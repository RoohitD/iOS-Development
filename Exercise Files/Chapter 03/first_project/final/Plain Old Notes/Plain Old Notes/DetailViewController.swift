//
//  DetailViewController.swift
//  Plain Old Notes
//
//  Created by Rohit Deshmukh on 1/6/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var text: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = "New Note"
        // Do any additional setup after loading the view.
    }
    
    
    func setText(t: String){
        text = t
        if isViewLoaded {
            textView.text = t
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
