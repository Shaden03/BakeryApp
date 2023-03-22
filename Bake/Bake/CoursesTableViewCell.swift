//
//  CoursesTableViewCell.swift
//  Bake
//
//  Created by Shaden on 28/08/1444 AH.
//

import UIKit

class CoursesTableViewCell: UITableViewCell {

    @IBOutlet weak var Cimg: UIImageView!
    @IBOutlet weak var CourseName: UILabel!
    @IBOutlet weak var CourseLevel: UILabel!
    @IBOutlet weak var CourseTime: UILabel!
    @IBOutlet weak var CourseDate: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
//
//    func setupCourseCell(img: UIImage, Cnme: String, Clvl: String, CTime: String ) {
//        Cimg.image = img
//        CourseName.text = Cnme
//        CourseLevel.text = Clvl
//        CourseTime.text = CTime
//    }
//
//
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
