//
//  ViewController.swift
//  textboxpod
//
//  Created by akash mac mini on 03/11/20.
//

import UIKit
import ACTextField

class ViewController: UIViewController,ACTextFieldDelegate {

    @IBOutlet weak var textfield: ACTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
                textfield.setAutoCompleteWith(DataSet: ["Kevin","Rishit","Dilip","Dhaval","Nik","Akash"])
        textfield.ACDelegate = self
        textfield.suggestionTextColor = UIColor.brown
        // Do any additional setup after loading the view.
    }
    func ACTextField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
}

