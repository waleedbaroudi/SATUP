//
//  VocabCell.swift
//  SATUP
//
//  Created by user on 14.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

class VocabCell: UITableViewCell {
    
    @IBOutlet weak var cellBody: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Setting colors
        self.backgroundColor = Colors.primaryColor()
        word.textColor = Colors.textColor()
        type.textColor = Colors.tertiaryColor()
        cellBody.backgroundColor = Colors.primaryColor()
        
    }
    @IBOutlet weak var word: UILabel!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var bookmarkButton: UIButton!
    var vocab: Vocab?
    var bookmarked: Bool = false
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    @IBAction func bookMark(_ sender: Any) {
        if let voc = vocab {
            if bookmarked{
                bookmarkButton.setImage(UIImage(systemName: "bookmark"), for: .normal)
                BookmarksDataSource.deleteBookmark(word: voc.word)
            } else{
                bookmarkButton.setImage(UIImage(systemName: "bookmark.fill"), for: .normal)
                BookmarksDataSource.addBookmark(vocab: voc)
            }
            bookmarked = !bookmarked
        } else{
            bookmarkButton.isEnabled = false
        }
    }
    
    func setButton(){
        if let voc = vocab {
            if BookmarksDataSource.isBookmarked(vocab: voc){
                bookmarkButton.setImage(UIImage(systemName: "bookmark.fill"), for: .normal)
                bookmarked = true
            } else {
                bookmarkButton.setImage(UIImage(systemName: "bookmark"), for: .normal)
                bookmarked = false
            }
        }
        
    }
}
