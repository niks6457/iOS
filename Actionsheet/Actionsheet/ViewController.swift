//
//  ViewController.swift
//  Actionsheet
//
//  Created by akash mac mini on 21/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func simple(_ sender: Any) {
        let simppleAction = UIAlertController(title: "Simple Action", message: "Your Message", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "ok", style: .default, handler: nil)
        simppleAction.addAction(ok)
        self.present(simppleAction, animated: true, completion: nil)
        
    }
    
    @IBAction func confirm(_ sender: Any) {
        let confirmAction = UIAlertController(title: "simple confirm", message: "Your Message", preferredStyle: .actionSheet)
        let confirm = UIAlertAction(title: "confirm", style: .default)
            {
            (alert)in }
        let cancel = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        confirmAction.addAction(confirm)
        confirmAction.addAction(cancel)
        self.present(confirmAction, animated: true, completion: nil)
    }
    
    @IBAction func Delete(_ sender: Any) {
        
        let deleteAction = UIAlertController(title: "simple Delete", message: "Your Message", preferredStyle: .actionSheet)
        let delete = UIAlertAction(title: "Delete", style:.default)
            {
            (alert)in
            let simpleAlert = UIAlertController(title: "delete", message: "Your Record Delete", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
            simpleAlert.addAction(okAction)
            self.present(simpleAlert, animated: true, completion: nil)
        }
        let cancel = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        deleteAction.addAction(delete)
        deleteAction.addAction(cancel)
        self.present(deleteAction, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

