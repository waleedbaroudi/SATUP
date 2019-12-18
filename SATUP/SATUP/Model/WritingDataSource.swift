//
//  WritingDataSource.swift
//  SATUP
//
//  Created by user on 15.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation

protocol WritingDataSourceDelegate{
    func writingListLoaded(writingList: [Writing])

}
class WritingDataSource {
    var delegate: WritingDataSourceDelegate?
    func loadWriting() {
        if let writingURL = URL(string: Network.WRITING_URL){
            var request = URLRequest(url: writingURL)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-type")
            let dataTask = Network.session.dataTask(with: writingURL) { (data, response, error) in
                var writingList: [Writing] = []
                do {writingList = try Network.decoder.decode([Writing].self, from: data!)} catch{}//TODO: HANDLE THIS
                DispatchQueue.main.async {
                    self.delegate?.writingListLoaded(writingList: writingList)
                }
            }
            dataTask.resume()
        }
    }
    
    
    
    
    
    
    
    
    
    
}

