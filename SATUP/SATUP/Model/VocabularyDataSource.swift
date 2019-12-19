//
//  VocabularyDataSource.swift
//  SATUP
//
//  Created by user on 14.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation

protocol VocabularyDataSourceDelegate {
    func vocabLoaded(vocabList: [Vocab])
}

extension VocabularyDataSource: BookmarksDataSourceDelegate{
    func BookmarksLoaded(BookmarksList: [Vocab]) {
        bookmarks = BookmarksList
    }
    
    
}

class VocabularyDataSource{
    var bookmarks: [Vocab] = []
    var bookMarkDataSource = BookmarksDataSource()
    var delegate: VocabularyDataSourceDelegate?
    func loadVocabulary(){
        bookMarkDataSource.delegate = self
        bookMarkDataSource.loadBookmarks()
        if let vocabURL = URL(string: Network.VOCAB_URL){
            var request = URLRequest(url: vocabURL)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = Network.session.dataTask(with: request) { (data, response, error) in
                var vocabList: [Vocab] = []
                do {vocabList = try Network.decoder.decode([Vocab].self, from: data!)} catch{}//TODO: HANDLE THIS
                DispatchQueue.main.async {
                    self.delegate?.vocabLoaded(vocabList: vocabList)
                }
            }
            dataTask.resume()
        }
    }
    
    func isBookmarked(vocab: Vocab) -> Bool {
        for voc in bookmarks{
            if vocab.word == voc.word{
//                print("YESSS")
                return true}
        }
//        print("NOOOO")
        return false
    }
}
