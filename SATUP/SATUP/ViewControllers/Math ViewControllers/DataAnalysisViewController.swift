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
        setColors()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mathSource.loadMath(type: 2) //loading dataAnalysis filtered math data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as! MathCell
        if let indexPath = DataAnalysisTable.indexPath(for: cell){
            let destination = segue.destination as! MathItemViewController
            let dataAnalysis = dataAnalysisList[indexPath.row]
            if dataAnalysis.subject == "Scatterplots"{
                let image = UIImage(named: "dat-Scatterplots")
                destination.image = image
            }
            destination.subject = dataAnalysis.subject
            destination.subjectDescription = dataAnalysis.description
            destination.example = dataAnalysis.example
        }
    }
    
    func setColors() {
        self.view.backgroundColor = Colors.primaryColor()
        DataAnalysisTable.backgroundColor = Colors.primaryColor()
    }

}
