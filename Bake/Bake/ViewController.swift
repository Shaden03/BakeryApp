//
//  ViewController.swift
//  Bake
//
//  Created by Shaden on 24/08/1444 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    let SearchController = UISearchController()
    @IBOutlet weak var Roundedback: UIView!
    @IBOutlet weak var PopTableView: UITableView!
    
    
    var arrCourse: [Course] = [
        Course(photo: UIImage(named: "Babka")!, CName: "Babka dough", lvl: "Intermediate", Ctime: "2h"),
        Course(photo: UIImage(named: "Rolls")!, CName: "Cinnamon rolls", lvl: "Beginner", Ctime: "2h"),
        Course(photo: UIImage(named: "JBread")!, CName: "Japanese bread", lvl: "Advanced", Ctime: "2h"),
        Course(photo: UIImage(named: "Bbread")!, CName: "Banana bread", lvl: "Intermediate", Ctime: "2h"),
        Course(photo: UIImage(named: "Babka")!, CName: "Babka dough", lvl: "Intermediate", Ctime: "2h"),
        Course(photo: UIImage(named: "Rolls")!, CName: "Cinnamon rolls", lvl: "Beginner", Ctime: "2h"),
        Course(photo: UIImage(named: "JBread")!, CName: "Japanese bread", lvl: "Advanced", Ctime: "2h")
    ]
   //
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = "Bake"
        navigationItem.searchController = SearchController
        PopTableView.dataSource = self
        PopTableView.delegate = self
        
        
    }
    
        
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        Roundedback.layer.cornerRadius = Roundedback.frame.height/9
        Roundedback.translatesAutoresizingMaskIntoConstraints = true
        
        
    }
    
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCourse.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PopularCell", for: indexPath) as! BakeTableViewCell

        cell.Level.text = arrCourse[indexPath.row].lvl
        cell.Images.image = arrCourse[indexPath.row].photo
        cell.CourseName.text = arrCourse[indexPath.row].CName
        cell.Coursetime.text = arrCourse[indexPath.row].Ctime
        
        cell.Level.layer.masksToBounds = true
        cell.Level.layer.cornerRadius = cell.Level.frame.height/2
        
        if cell.Level.text == "Intermediate"{
            cell.Level.textColor = UIColor(named: "Beginner")
            cell.Level.backgroundColor = UIColor(named: "Intermediate")
        } else if cell.Level.text == "Beginner" {
            cell.Level.textColor = UIColor(named: "wh")
            cell.Level.backgroundColor = UIColor(named: "Beginner")
        } else {
            cell.Level.textColor = UIColor(named: "wh")
            cell.Level.backgroundColor = UIColor(named: "Advanced")
        }
//    CDate: Data.CDate)
        return cell
    }

    
}

struct Course{
    let photo : UIImage
    let CName : String
    let lvl : String
    let Ctime : String
//    let CDate : String
}
