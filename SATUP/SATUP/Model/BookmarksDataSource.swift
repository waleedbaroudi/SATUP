//
//  BookmarksDataSource.swift
//  SATUP
//
//  Created by user on 19.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation



class BookmarksDataSource{
    private static var bookmarks: [Vocab] = []
    static func loadBookmarks(){
        if let BookmarksURL = URL(string: Network.BOOKMARKED_VOCAB_URL){
            var request = URLRequest(url: BookmarksURL)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = Network.session.dataTask(with: request) { (data, response, error) in
                var BookmarksList: [Vocab] = []
                do {BookmarksList = try Network.decoder.decode([Vocab].self, from: data!)} catch{}//TODO: HANDLE THIS
                DispatchQueue.main.async {
                    bookmarks = BookmarksList
//                    self.delegate?.bookmarksLoaded(bookmarksList: BookmarksList)
                }
            }
            dataTask.resume()
        }
    }
    
    static func deleteBookmark(word: String){
        if let deleteURL = URL(string: "\(Network.BOOKMARKED_VOCAB_URL)/\(word)"){
            print(deleteURL)
            var request = URLRequest(url: deleteURL)
            request.httpMethod = "DELETE"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = Network.session.dataTask(with: request) { (data, response, error) in
                print("ENTRY DELETED")
                loadBookmarks()
            }
            
            dataTask.resume()
        }
    }
    
    static func addBookmark(vocab: Vocab){
        if let bookmarkURL = URL(string: Network.BOOKMARKED_VOCAB_URL) {
            var request = URLRequest(url: bookmarkURL)
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let encoder = JSONEncoder()
            let uploadData = try! encoder.encode(vocab)
            let uploadTask = Network.session.uploadTask(with: request, from: uploadData) { (data, response, error) in
                print("ADDED")
                loadBookmarks()
            }
            uploadTask.resume()
        }
    }
    
    static func getBookmarks() -> [Vocab]{
        return bookmarks
    }
    
    static func isBookmarked(vocab: Vocab) -> Bool {
        for voc in bookmarks{
            if vocab.word == voc.word{
                return true}
        }
        return false
    }
}
