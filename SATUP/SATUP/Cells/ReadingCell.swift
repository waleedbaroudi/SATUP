//
//  ReadingCell.swift
//  SATUP
//
//  Created by user on 17.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class ReadingCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var cellBody: UIView!
    
    //TESTING ELEMENTS//
    @IBOutlet weak var L1: UILabel!
    @IBOutlet weak var L2: UILabel!
    @IBOutlet weak var L3: UILabel!
    
    //
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setColors()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setColors() {
        titleLabel.textColor = Colors.textColor()
        cellBody.backgroundColor = Colors.primaryColor()
    }

}
