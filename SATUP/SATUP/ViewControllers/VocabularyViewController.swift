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
            cell.word.text = vocabList[indexPath.row].word
        return cell
    }
    
    
    
    
}

class VocabularyViewController: UIViewController {
    var vocabList: [Vocab] = []
    var vocabSections = [String]()
    var vocabDictionary = [String:[Vocab]]()
    @IBOutlet weak var vocabTableView: UITableView!
    let vocabDataSource = VocabularyDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateVocabDictionary()
        vocabDataSource.delegate = self
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        vocabDataSource.loadVocabulary()
    }
    
    func generateVocabDictionary(){
        for vocab in vocabList{
            let word = vocab.word
            let letter = "\(word[word.startIndex])"
            if var letterVocabs = vocabDictionary[letter]{
                letterVocabs.append(vocab)
                vocabDictionary[letter] = letterVocabs
            }
            else {
                vocabDictionary[letter] = [vocab]
            }
        }
        vocabSections = [String](vocabDictionary.keys).sorted()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as! VocabCell
        if let indexPath = vocabTableView.indexPath(for: cell){
            let vocab = vocabList[indexPath.row]
            let destination = segue.destination as! VocabPopupViewController
            destination.word = vocab.word
//            destination.word.text = vocab.word
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
