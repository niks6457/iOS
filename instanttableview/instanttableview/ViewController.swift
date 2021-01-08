//
//  ViewController.swift
//  instanttableview
//
//  Created by AkashSir.com on 02/12/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var arr = [String]()
    var name = String()
    
    @IBOutlet weak var textname: UITextField!
    @IBOutlet weak var tableview: UITableView!
    @IBAction func btnact(_ sender: Any) {
        name = textname.text!
        arr.append(name)
        tableview.reloadData()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.delegate = self
        self.tableview.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl1.text = arr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            let alert = UIAlertController(title: "Do you want record delete" , message: "Confirm", preferredStyle: .alert)
            let Yes = UIAlertAction(title: "Yes", style: .default){_ in
                DispatchQueue.main.async {
                    
                    let alert1 = UIAlertController(title: "Record" , message: "Record Delete", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alert1.addAction(ok)
                    self.present(alert1, animated: true, completion: nil)
                    self.arr.remove(at: indexPath.row)
                    self.tableview.deleteRows(at: [indexPath], with: .fade)
                    
                }
            }
            let No = UIAlertAction(title: "No", style: .default, handler: nil)
            alert.addAction(Yes)
            alert.addAction(No)
            
            
            self.present(alert, animated: true, completion: nil)
            
            
        }
        
    }
}
        
        
    

        
    
    

