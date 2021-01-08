//
//  ViewController.swift
//  tableviewdynamic
//
//  Created by akash mac mini on 13/10/20.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var arr = Array(1...100)
    var arr1 = Array(repeating: "a", count: 100)
    @IBOutlet weak var tblview: UITableView!
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
        return arr1.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tblview.dequeueReusableCell(withIdentifier: "mycell")
        cell?.textLabel?.text = String(Int(arr[indexPath.row]))
        cell?.detailTextLabel?.text = String(Int(arr[indexPath.row]))
        cell?.imageView?.image = UIImage (named: arr1[indexPath.row])
        
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    

    
    override func viewDidLoad() {
        self.tblview.delegate = self
        self.tblview.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

