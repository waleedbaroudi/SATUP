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
    var delegate: VocabularyDataSourceDelegate?
    func loadVocabulary(){
        let session = URLSession.shared
        if let vocabURL = URL(string: Network.URL){
            var request = URLRequest(url: vocabURL)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-type")
            let dataTask = session.dataTask(with: vocabURL) { (data, response, error) in
                var vocabList: [Vocab] = []
                do {vocabList = try Network.decoder.decode([Vocab].self, from: data!)} catch{}//TODO: HANDLE THIS
                DispatchQueue.main.async {
                    self.delegate?.vocabLoaded(vocabList: vocabList)
                }
            }
            dataTask.resume()
        }
    }
}
