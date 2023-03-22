//
//  CoursesViewController.swift
//  Bake
//
//  Created by Shaden on 28/08/1444 AH.
//

import UIKit

class CoursesViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    let searchController = UISearchController()
    @IBOutlet weak var CourseTableView: UITableView!
    var Coursett: [Courset] = [
    Courset(img: UIImage(named: "Babka")!, CourseName: "Babka dough", Clvl: "Intermediate", CTime: "2h"),
    Courset(img: UIImage(named: "Rolls")!, CourseName: "Cinnamon rolls", Clvl: "Beginner", CTime: "2h"),
    Courset(img: UIImage(named: "JBread")!, CourseName: "Japanese bread", Clvl: "Advanced", CTime: "2h"),
    Courset(img: UIImage(named: "Bbread")!, CourseName: "Banana bread", Clvl: "Intermediate", CTime: "2h"),
    Courset(img: UIImage(named: "Babka")!, CourseName: "Babka dough", Clvl: "Intermediate", CTime: "2h"),
    Courset(img: UIImage(named: "Rolls")!, CourseName: "Cinnamon rolls", Clvl: "Beginner", CTime: "2h"),
    Courset(img: UIImage(named: "JBread")!, CourseName: "Japanese bread", Clvl: "Advanced", CTime: "2h")
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = " Courses"
        navigationItem.searchController = searchController
        CourseTableView.dataSource = self
        CourseTableView.delegate = self
        // Do any additional setup after loading the view.
        
    }
    
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return Coursett.count
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Coursett.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ccell = tableView.dequeueReusableCell(withIdentifier: "CourseCell", for: indexPath) as!CoursesTableViewCell

        
        ccell.Cimg.image = Coursett[indexPath.row].img
        ccell.CourseName.text = Coursett[indexPath.row].CourseName
        ccell.CourseLevel.text = Coursett[indexPath.row].Clvl
        ccell.CourseTime.text = Coursett[indexPath.row].CTime
//        ccell.CourseDate.text = Coursett[indexPath.row].
        
        ccell.CourseLevel.layer.masksToBounds = true
        ccell.CourseLevel.layer.cornerRadius = ccell.CourseLevel.frame.height/2
        
        if ccell.CourseLevel.text == "Intermediate"{
            ccell.CourseLevel.textColor = UIColor(named: "Beginner")
            ccell.CourseLevel.backgroundColor = UIColor(named: "Intermediate")
        } else if ccell.CourseLevel.text == "Beginner" {
            ccell.CourseLevel.textColor = UIColor(named: "wh")
            ccell.CourseLevel.backgroundColor = UIColor(named: "Beginner")
        } else {
            ccell.CourseLevel.textColor = UIColor(named: "wh")
            ccell.CourseLevel.backgroundColor = UIColor(named: "Advanced")
        }
        
        return ccell
    }
  

}

struct Courset{
    let img : UIImage
    let CourseName : String
    let Clvl : String
    let CTime : String
//    let CDate : String
}
