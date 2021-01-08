//
//  ViewController.swift
//  searchbar
//
//  Created by akash mac mini on 20/10/20.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate{
    
    @IBOutlet weak var searchbar: UISearchBar!
    @IBOutlet weak var tableview: UITableView!
    var arr = ["C","PHP","Android","IOS","Angular","python","Laravel","JAVA","J2ee","Javascript","Html","Swift","C#",".net","Asp.net","Ruby","SQl","SQlite","Oracle","MySQl","Objective - C"]
    var searcharr = [String]()
    var searching = false
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if searching
        {
            return searcharr.count
        }
        else
        {
            return arr.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "mycell")
            if searching
            {
                cell?.textLabel?.text = searcharr[indexPath.row]
            }
            else
            {
                cell?.textLabel?.text = arr[indexPath.row]
            }
            return cell!
    }
    func searchBar(_ searchbar: UISearchBar,textDidChange searchText: String)
    {
        searcharr  = arr.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        tableview.reloadData()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchbar.text = ""
        tableview.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.delegate = self
        self.tableview.dataSource = self
        self.searchbar.delegate = self
     
        // Do any additional setup after loading the view.
    }
}

