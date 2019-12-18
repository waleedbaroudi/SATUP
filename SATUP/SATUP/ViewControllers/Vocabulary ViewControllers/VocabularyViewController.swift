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
            cell.word.text = vocabList[indexPath.row].word
            cell.type.text = vocabList[indexPath.row].type
        return cell
    }
    
}

class VocabularyViewController: UIViewController {
    var vocabList: [Vocab] = []
    @IBOutlet weak var vocabTableView: UITableView!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    let vocabDataSource = VocabularyDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vocabDataSource.delegate = self
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        vocabTableView.backgroundColor = Colors.borderColor()
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
                destination.example = vocab.example}
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
