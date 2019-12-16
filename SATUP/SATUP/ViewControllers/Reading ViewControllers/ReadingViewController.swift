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
        cell.L1.text = "\(reading.excercises.count)"
        cell.L2.text = "\(reading.answersExcercise2.count)"
        cell.L3.text = "\(reading.correctAnswers.count)"
        return cell
    }
    
    
}

class ReadingViewController: UIViewController {
    let dataSource = ReadingDataSource()
    var readingsList: [Reading] = []
    @IBOutlet weak var readingsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource.delegate=self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        dataSource.loadReadings()
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
