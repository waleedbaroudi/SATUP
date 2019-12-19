//
//  AlgebraViewController.swift
//  SATUP
//
//  Created by user on 18.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

extension AlgebraViewController: MathDataSourceDelegate{
    func mathLoaded(mathList: [Math]) {
        algebraList = mathList
    }
    
    
}

extension AlgebraViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return algebraList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlgebraCell") as! MathCell
        let algebra = algebraList[indexPath.row]
        cell.subjectLabel.text = algebra.subject
        return cell
    }
    
    
}

class AlgebraViewController: UIViewController {
    var mathSource = MathDataSource()
    var algebraList: [Math] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        mathSource.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mathSource.loadMath(type: 0) //loading algebra filtered math data
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
