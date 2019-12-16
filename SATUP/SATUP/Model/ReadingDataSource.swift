//
//  ReadingDataSource.swift
//  SATUP
//
//  Created by user on 17.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation

protocol ReadingDataSourceDelegate {
    func readingsLoaded(readingsList: [Reading])
}

class ReadingDataSource{
    var delegate: ReadingDataSourceDelegate?
    
    func loadReadings() {
        if let readingURL = URL(string: Network.ReadingURL){
            var request = URLRequest(url: readingURL)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = Network.session.dataTask(with: request) { (data, response, error) in
                var readings: [Reading] = []
                do{readings = try Network.decoder.decode([Reading].self, from: data!)}catch {}
                DispatchQueue.main.async {
                    self.delegate?.readingsLoaded(readingsList: readings)
                }
            }
            dataTask.resume()
        }
    }
}
