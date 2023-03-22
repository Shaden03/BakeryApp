//
//  UpcomingTableViewCell.swift
//  Bake
//
//  Created by Shaden on 26/08/1444 AH.
//

import UIKit

class UpcomingTableViewCell: UITableViewCell {

    @IBOutlet weak var Month: UILabel!
    @IBOutlet weak var Date: UILabel!
    @IBOutlet weak var PCName: UILabel!
    @IBOutlet weak var Location: UILabel!
    @IBOutlet weak var CTime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func Upcomingsell(month : String, date: String, PName : String, location : String, ctime: String ){
        Month.text = month
        Date.text = date
        PCName.text = PName
        Location.text = location
        CTime.text = ctime
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
