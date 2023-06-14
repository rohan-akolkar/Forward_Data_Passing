//
//  StudentTableViewCell.swift
//  Forward_Data_Passing_Using_Object
//
//  Created by Mac on 13/06/23.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    @IBOutlet weak var rollNumberLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
