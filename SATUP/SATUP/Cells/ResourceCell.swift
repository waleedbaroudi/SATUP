//
//  ResourceCell.swift
//  SATUP
//
//  Created by user on 24.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class ResourceCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
         super.awakeFromNib()
         setColors()
     }
    
    func setColors() {
        
        self.backgroundColor = Colors.primaryColor()
        nameLabel.textColor = Colors.textColor()
    }
}
