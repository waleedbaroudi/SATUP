//
//  VocabPopupViewController.swift
//  SATUP
//
//  Created by user on 15.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit
import AVFoundation

protocol VocabPopupDelegate{
    func updateBookmarks()
}

class VocabPopupViewController: UIViewController {
    @IBOutlet weak var bookmarksButton: UIButton!
    @IBOutlet weak var audioButton: UIButton!
    @IBOutlet weak var dismissCard: UIButton!
    var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLabel.text = word
        typeLabel.text = type
        meaningLabel.text = meaning
        exampleLabel.text = example
        bookmarkButton.setImage(bookmarkIcon, for: .normal)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: word?.lowercased(), ofType: "mp3")!))} catch{print("COULD NOT LOAD AUDIO, REASON: \(error)")
                audioPlayer.prepareToPlay()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setColors()
    }
    
    @IBOutlet weak var bookmarkButton: UIButton!
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var meaningLabel: UILabel!
    @IBOutlet weak var exampleLabel: UILabel!
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var meaningHeaderLabel: UILabel!
    @IBOutlet weak var exampleHeaderLabel: UILabel!
    
    var bookmarked: Bool = false
    var word: String?
    var type: String?
    var meaning: String?
    var example: String?
    var bookmarkIcon: UIImage?
    @IBAction func dismissButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    func setColors(){
        //Setting colors

        typeLabel.textColor = Colors.tertiaryColor()
        meaningLabel.textColor = Colors.textColor()
        card.backgroundColor = Colors.primaryColor()

        exampleLabel.textColor = Colors.textColor()
        meaningLabel.textColor = Colors.textColor()
        
        audioButton.tintColor = Colors.textColor()
        dismissCard.tintColor = Colors.textColor()
        bookmarksButton.tintColor = Colors.textColor()
        
        divider.alpha = 0.35
    }
    @IBAction func bookmark(_ sender: Any) {
        if bookmarked {
            bookmarkButton.setImage(UIImage(systemName: "bookmark"), for: .normal)
            BookmarksDataSource.deleteBookmark(word: word!)
            BookmarksDataSource.loadBookmarks()
        }
        else {
            bookmarkButton.setImage(UIImage(systemName: "bookmark.fill"), for: .normal)
            BookmarksDataSource.addBookmark(vocab: Vocab(word: word!, type: type!, example: example!, meaning: meaning!))
            BookmarksDataSource.loadBookmarks()
        }
        
        bookmarked = !bookmarked
    }
    
    @IBAction func audioPlay(_ sender: Any) {
        audioPlayer.play()
    }

    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
