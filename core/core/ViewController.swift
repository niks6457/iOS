//
//  ViewController.swift
//  core
//
//  Created by akash mac mini on 30/11/20.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    
    @IBOutlet weak var addtext: UITextField!
    
    
    @IBAction func addaction(_ sender: Any)
    {
        let contextref = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let studentcontext = Student(context: contextref)
        studentcontext.sname = addtext.text!
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        addtext.text = ""
        print("Record Inserted")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

