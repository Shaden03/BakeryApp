//
//  BakeTableViewCell.swift
//  Bake
//
//  Created by Shaden on 25/08/1444 AH.
//

import UIKit

class BakeTableViewCell: UITableViewCell {

    @IBOutlet weak var Images: UIImageView!
    @IBOutlet weak var CourseName: UILabel!
    @IBOutlet weak var Level: UILabel!
    @IBOutlet weak var Coursetime: UILabel!
   

    override func awakeFromNib() {
        super.awakeFromNib()

        
    }


    
    
    
    
    
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
