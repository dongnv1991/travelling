//
//  DiscoverTableViewCell.swift
//  Travelling
//
//  Created by Dong Nguyen on 1/14/17.
//  Copyright © 2017 Minh Nhat. All rights reserved.
//

import UIKit

class DiscoverTableViewCell: UITableViewCell {

    
    @IBOutlet weak var artwork: UIImageView!
    
    @IBOutlet weak var lbName: UILabel!
    
    @IBOutlet weak var lbDes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
