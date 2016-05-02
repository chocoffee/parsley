//
//  NewsTableViewCell.swift
//  Dr.Alea
//
//  Created by guest on 2016/04/25.
//  Copyright © 2016年 chocoffee. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var newsImg: UIImageView!
    @IBOutlet weak var newsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
