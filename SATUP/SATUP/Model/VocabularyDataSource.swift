//
//  VocabularyDataSource.swift
//  SATUP
//
//  Created by user on 14.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation

protocol VocabularyDataSourceDelegate {
    func vocabLoaded(vocabList: [Vocab : Bool], to: Int)
}

class VocabularyDataSource{
    var bookmarks: [Vocab] = []
    var delegate: VocabularyDataSourceDelegate?
    func loadVocabulary(from: Int) {
        if let vocabURL = URL(string: Network.VOCAB_URLS[from]!){
            var request = URLRequest(url: vocabURL)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = Network.session.dataTask(with: request) { (data, response, error) in
                var vocabList: [Vocab] = []
                do {vocabList = try Network.decoder.decode([Vocab].self, from: data!)} catch{}//TODO: HANDLE THIS
                if from == 1 {
                    self.bookmarks = vocabList
                } else{
                DispatchQueue.main.async {
                    self.delegate?.vocabLoaded(vocabList: self.associateBookmark(list: vocabList), to: from)
                    }}
            }
            dataTask.resume()
        }
    }
    
    func associateBookmark(list: [Vocab]) -> [Vocab : Bool]{
        var associated: [Vocab : Bool] = [:]
        for vocab in list{
            if bookmarks.contains(vocab){
                associated[vocab] = true
            } else {
                associated[vocab] = false
            }
        }
        return associated
    }
}
