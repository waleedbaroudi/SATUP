//
//  WritingCellTableViewCell.swift
//  SATUP
//
//  Created by user on 15.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class WritingCell: UITableViewCell {

    @IBOutlet weak var writingSelectionLabel: UILabel!
    @IBOutlet weak var cellBody: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Setting colors
        cellBody.backgroundColor = Colors.primaryColor()
        writingSelectionLabel.textColor = Colors.textColor()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
