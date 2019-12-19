//
//  VocabularyViewController.swift
//  SATUP
//
//  Created by user on 14.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

extension VocabularyViewController: VocabularyDataSourceDelegate{
    func vocabLoaded(vocabList: [Vocab]) {
        self.vocabList = vocabList
        loadingIndicator.stopAnimating()
        toFlashCardsButton.isEnabled = true
        vocabTableView.isHidden = false
        UIView.transition(with: vocabTableView, duration: 0.3, options: .transitionCrossDissolve, animations: nil, completion: nil)
        
        vocabTableView.reloadData()
    }
}

extension VocabularyViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "vocabCell") as! VocabCell
        let vocab = vocabList[indexPath.row]
        cell.word.text = vocab.word
        cell.type.text = vocab.type
        return cell
    }
    
}

class VocabularyViewController: UIViewController {
    var vocabList: [Vocab] = []
    @IBOutlet weak var vocabTableView: UITableView!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var toFlashCardsButton: UIBarButtonItem!
    let vocabDataSource = VocabularyDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vocabDataSource.delegate = self
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        toFlashCardsButton.isEnabled = false
        vocabTableView.backgroundColor = Colors.primaryColor()
        self.view.backgroundColor = Colors.borderColor()
        vocabDataSource.loadVocabulary()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toVocabCard"){
            let cell = sender as! VocabCell
            if let indexPath = vocabTableView.indexPath(for: cell){
                let vocab = vocabList[indexPath.row]
                let destination = segue.destination as! VocabPopupViewController
                destination.word = vocab.word
                destination.type = vocab.type
                destination.meaning = vocab.meaning
                destination.example = vocab.example
                if vocabDataSource.isBookmarked(vocab: vocab) {
                   destination.bookmarked = true
                   destination.bookmarkIcon = UIImage(systemName: "bookmark.fill")
                }else{
                    destination.bookmarked = false
                    destination.bookmarkIcon = UIImage(systemName: "bookmark")
                }
            }
        }
        else if(segue.identifier == "toFlashCard"){
            let destination = segue.destination as! FlashCardViewController
            destination.word = vocabList[Int.random(in: 0...(vocabList.count-1))]
            destination.vocabList = vocabList
        }
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
