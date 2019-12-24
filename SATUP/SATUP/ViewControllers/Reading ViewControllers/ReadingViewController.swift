//
//  ReadingViewController.swift
//  SATUP
//
//  Created by user on 17.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

extension ReadingViewController: ReadingDataSourceDelegate{
    func readingsLoaded(readingsList: [Reading]) {
        self.readingsList = readingsList
        readingsTableView.reloadData()
    }
}

extension ReadingViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return readingsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReadingCell") as! ReadingCell
        let reading = readingsList[indexPath.row]
        cell.titleLabel.text = reading.title
        return cell
    }
    
}
class ReadingViewController: UIViewController {
    let dataSource = ReadingDataSource()
    var readingsList: [Reading] = []
    
    @IBOutlet weak var readingsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource.delegate = self
        setColors()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        dataSource.loadReadings()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let cell = sender as! ReadingCell
        let destination = segue.destination as! ReadingSubViewController
        if let indexPath = readingsTableView.indexPath(for: cell){
            let reading = readingsList[indexPath.row]
            destination.readingTitle = reading.title
            destination.passageText = reading.passage
        
            destination.correctAnswers = reading.correctAnswers
            
            destination.question1 = reading.excercises[0]
            destination.question2 = reading.excercises[1]
            destination.question3 = reading.excercises[2]
            
            destination.question1Choice1 = reading.answersExcercise1[0]
            destination.question1Choice2 = reading.answersExcercise1[1]
            destination.question1Choice3 = reading.answersExcercise1[2]
            destination.question1Choice4 = reading.answersExcercise1[3]
            destination.question1Choice5 = reading.answersExcercise1[4]
            
            destination.question2Choice1 = reading.answersExcercise2[0]
            destination.question2Choice2 = reading.answersExcercise2[1]
            destination.question2Choice3 = reading.answersExcercise2[2]
            destination.question2Choice4 = reading.answersExcercise2[3]
            destination.question2Choice5 = reading.answersExcercise2[4]
            
            destination.question3Choice1 = reading.answersExcercise3[0]
            destination.question3Choice2 = reading.answersExcercise3[1]
            destination.question3Choice3 = reading.answersExcercise3[2]
            destination.question3Choice4 = reading.answersExcercise3[3]
            destination.question3Choice5 = reading.answersExcercise3[4]
        }
    }
    
    func setColors() {
        self.view.backgroundColor = Colors.primaryColor()
        readingsTableView.backgroundColor = Colors.primaryColor()
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
