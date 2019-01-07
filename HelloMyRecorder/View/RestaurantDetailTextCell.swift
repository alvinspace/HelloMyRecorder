//
//  RestaurantDetailTextCell.swift
//  HelloMyRecorder
//
//  Created by 林欣鼎 on 2019/1/6.
//  Copyright © 2019年 林欣鼎. All rights reserved.
//

import UIKit

class RestaurantDetailTextCell: UITableViewCell {
    
    @IBOutlet var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.numberOfLines = 0 
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
