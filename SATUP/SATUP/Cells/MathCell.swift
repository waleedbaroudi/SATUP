//
//  MathCell.swift
//  SATUP
//
//  Created by user on 18.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class MathCell: UITableViewCell {


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setColors()
    }

    @IBOutlet weak var subjectLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setColors() {
        self.backgroundColor = Colors.primaryColor()
        subjectLabel.textColor = Colors.textColor()
    }

}
