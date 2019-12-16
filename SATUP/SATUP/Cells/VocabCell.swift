//
//  VocabCell.swift
//  SATUP
//
//  Created by user on 14.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class VocabCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = Colors.primaryColor()
        word.textColor = Colors.secondaryColor()
        type.textColor = Colors.tertiaryColor()
        // Initialization code
    }
    @IBOutlet weak var word: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var bookmarkButton: UIButton!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    @IBAction func bookMark(_ sender: Any) {

    }
    
    

}
