//
//  ViewController.swift
//  onlineapi
//
//  Created by akash mac mini on 10/12/20.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    var arraitem = [[String:Any]]()
    
    @IBOutlet weak var datatable: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraitem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! TableViewCell
        if arraitem.count > indexPath.row{
            let objDetail = arraitem[indexPath.row]
            if let lname = objDetail["userId"] as? String  {
                cell.lblid.text = lname
            }
            if let lname = objDetail["id"] as? String {
                cell.lbltitel.text = lname
            }
            
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        getdata()
        
        // Do any additional setup after loading the view.
    }
    
    func getdata()
    {
        let url = "https://jsonplaceholder.typicode.com/posts"
        Alamofire.request(url , method:.get , encoding: JSONEncoding.prettyPrinted).responseJSON
        {
            response in
            switch response.result
            {
            case .success(let json):
                if let result = response.value {
                    let JSON = result
                   // print(JSON)
                    if let arr = JSON as? [[String:Any]]
                    {
                        self.arraitem = arr
                        self.datatable.reloadData()
                    }
                    
                    break
                }
                
            case .failure(let error):
                print(error)
            }
            
            
        }
    }
    
    
}
    


