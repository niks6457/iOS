//
//  ViewController.swift
//  plist
//
//  Created by akash mac mini on 22/10/20.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableplist: UITableView!

    var arr = ["","","","",""]

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell")
        let path = Bundle.main.path(forResource: "myplist", ofType: "plist")!
        let dict = NSDictionary(contentsOfFile: path)
        
        arr = dict!.object(forKey:"programing") as! [String]
        //print(arr)
        cell?.textLabel?.text = arr[indexPath.row]
        return cell!
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.tableplist.dataSource = self
        self.tableplist.delegate = self
    
        // Do any additional setup after loading the view.
    }


}

