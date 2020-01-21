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

class VocabularyDataSource{
    var bookmarks: [Vocab] = BookmarksDataSource.getBookmarks()
    var bookMarkDataSource = BookmarksDataSource()
    var delegate: VocabularyDataSourceDelegate?
    func loadVocabulary(){
        BookmarksDataSource.loadBookmarks()
        if let vocabURL = URL(string: Network.VOCAB_URL){
            var request = URLRequest(url: vocabURL)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = Network.session.dataTask(with: request) { (data, response, error) in
                var vocabList: [Vocab] = []
                do {vocabList = try Network.decoder.decode([Vocab].self, from: data!)
                    DispatchQueue.main.async {
                        self.delegate?.vocabLoaded(vocabList: vocabList)
                    }
                } catch{}//TODO: HANDLE THIS
            }
            dataTask.resume()
        }
    }
    
    func updateBookmarks() {
        BookmarksDataSource.loadBookmarks()
    }
}
