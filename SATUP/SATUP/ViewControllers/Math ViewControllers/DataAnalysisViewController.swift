//
//  DataAnalysisViewController.swift
//  SATUP
//
//  Created by user on 19.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//
import UIKit

extension DataAnalysisViewController: MathDataSourceDelegate{
    func mathLoaded(mathList: [Math]) {
        dataAnalysisList = mathList
        DataAnalysisTable.reloadData()
    }
    
    
}

extension DataAnalysisViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataAnalysisList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DataAnalysisCell") as! MathCell
        let dataAnalysis = dataAnalysisList[indexPath.row]
        cell.subjectLabel.text = dataAnalysis.subject
        return cell
    }
    
    
}

class DataAnalysisViewController: UIViewController {
    
    @IBOutlet weak var DataAnalysisTable: UITableView!
    var mathSource = MathDataSource()
    var dataAnalysisList: [Math] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        mathSource.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mathSource.loadMath(type: 2) //loading dataAnalysis filtered math data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as! MathCell
        if let indexPath = DataAnalysisTable.indexPath(for: cell){
            let destination = segue.destination as! MathItemViewController
            let dataAnalysis = dataAnalysisList[indexPath.row]
            destination.subject = dataAnalysis.subject
            destination.subjectDescription = dataAnalysis.description
            destination.example = dataAnalysis.example
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
