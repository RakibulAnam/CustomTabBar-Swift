//
//  TableViewCell.swift
//  UI Tests
//
//  Created by Jotno on 9/4/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        myView.layer.cornerRadius = 20
        myView.clipsToBounds = true
//        myView.layer.borderWidth = 1.0 // Border width
//        myView.layer.borderColor = UIColor.gray.cgColor // Border color
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
