//
//  RestaurantDetailIconTextCell.swift
//  HelloMyRecorder
//
//  Created by 林欣鼎 on 2019/1/6.
//  Copyright © 2019年 林欣鼎. All rights reserved.
//

import UIKit

class RestaurantDetailIconTextCell: UITableViewCell {

    @IBOutlet var iconImageView : UIImageView!
    @IBOutlet var shortTextLabel :UILabel! {
        didSet {
            shortTextLabel.numberOfLines = 0
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
