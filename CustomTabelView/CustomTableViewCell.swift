//
//  CustomTableViewCell.swift
//  CustomTabelView
//
//  Created by Anon's MacBook Pro on 14/8/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var imagesOfFoods: UIImageView!
    @IBOutlet weak var foodsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
