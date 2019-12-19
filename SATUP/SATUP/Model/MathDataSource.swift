//
//  MathDataSource.swift
//  SATUP
//
//  Created by user on 19.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import Foundation
protocol MathDataSourceDelegate {
    func mathLoaded(mathList: [Math])
    
}

class MathDataSource {
    var delegate: MathDataSourceDelegate?
    func loadMath(type: Int){
        if let mathURL = URL(string: Network.MATH_URL){
            var request = URLRequest(url: mathURL)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = Network.session.dataTask(with: request) { (data, response, error) in
                var mathList: [Math] = []
                do{mathList = try Network.decoder.decode([Math].self, from: data!)} catch{}
                mathList = self.typeList(list: mathList, type: type)
                DispatchQueue.main.async {
                    self.delegate?.mathLoaded(mathList: mathList)
                }
            }
            dataTask.resume()
        }
    }
    func typeList(list: [Math], type: Int) -> [Math]{ //filteres the math type (algebra, advanced, data analysis)
        var filtered: [Math] = []
        for math in list {
            if math.getType() == type {
                math.setProperName(forType: type)
                filtered.append(math)
            }
        }
        
        return filtered
    }

    
}
