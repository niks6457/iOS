//
//  ViewController.swift
//  AlertControl
//
//  Created by akash mac mini on 21/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btn1(_ sender: Any) {
        let btn1 = UIAlertController(title: "Agree", message: "Are You Sure?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
        btn1.addAction(okAction)
        
        let cancel = UIAlertAction(title: "cancel", style: .default, handler: nil)
        btn1.addAction(cancel)
       
     
        self.present(btn1, animated: true, completion: nil)
        
    }
    @IBAction func simpleAlert(_ sender: Any) {
        let simpleAlert = UIAlertController(title: "Cancel", message: "Confirm?", preferredStyle: .alert)
        let confirm = UIAlertAction(title: "Confirm", style: .default)
            {
            (alert) in
        }
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        simpleAlert.addAction(confirm)
        simpleAlert.addAction(cancelAction)
        
        self.present(simpleAlert, animated: true, completion: nil)
    }
    
    @IBAction func del(_ sender: Any) {
        let confirmAlert = UIAlertController(title: "Delete", message: "Confirm Delete", preferredStyle: .alert)
        let delete = UIAlertAction(title: "Delete", style: .default)
            {
                (alert) in
        
            let simpleAction = UIAlertController(title: "Delete", message: "Record Deleted", preferredStyle: .alert)
            let ok = UIAlertAction(title: "ok", style:.default, handler: nil)
            
            simpleAction.addAction(ok)
            
            let can = UIAlertAction(title: "cancel", style:.default, handler: nil)
            
            simpleAction.addAction(ok)
            simpleAction.addAction(can)
            
            self.present(simpleAction, animated: true, completion: nil)
            
        }
            
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        confirmAlert.addAction(delete)
        confirmAlert.addAction(cancelAction)
        
        self.present(confirmAlert, animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

