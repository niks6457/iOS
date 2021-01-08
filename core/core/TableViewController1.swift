//
//  TableViewController1.swift
//  core
//
//  Created by akash mac mini on 30/11/20.
//

import UIKit
import CoreData

class TableViewController1: UITableViewController,UITableViewDelegate,UITableViewDataSource {
    var studentarr : [Student] = []
    
    @IBOutlet weak var tv: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tv.delegate = self
        tv.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, nuberofRowsInSection section: Int) -> Int {
        return studentarr.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")
        let student = self.studentarr[indexPath.row]
        cell?.textLabel?.text = student.sname
        return cell!
    }
    override func viewWillAppear(_ animated: Bool) {
        getData()
        tv.reloadData()
    }
    func getData()
    
    {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do{
            studentarr = try context.fetch(Student.fetchRequest())
        }
        catch{
            print("Error in Fetch Data")
        }
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath){
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            if editingStyle == .delete{
                let student = self.studentarr[indexPath.row]
                context.delete(student)
                (UIApplication.shared.delegate as! AppDelegate).saveContext()
                do{
                    studentarr = try context.fetch(Student.fetchRequest())
                }catch{
                    
                }
                tv.reloadData()
            }
        }
    }
}
   
