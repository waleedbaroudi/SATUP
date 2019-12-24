//
//  WritingViewController.swift
//  SATUP
//
//  Created by user on 15.12.2019.
//  Copyright © 2019 wab. All rights reserved.
//

import UIKit

extension WritingViewController: WritingDataSourceDelegate {
    func writingListLoaded(writingList: [Writing]) {
        self.writingList = writingList
        self.writingTableView.reloadData()
    }
}

extension WritingViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return writingList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "writingCell") as! WritingCell
            cell.writingSelectionLabel.text = writingList[indexPath.row].subject
        return cell
    }
}

class WritingViewController: UIViewController {
    @IBOutlet weak var writingTableView: UITableView!
    var writingList: [Writing] = []
    var writingSelection = [String] ()
    
    let writingDataSource = WritingDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        writingDataSource.delegate = self
        setColors()
            }
    
    override func viewWillAppear(_ animated: Bool) {
        writingDataSource.loadWriting()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toInfoView"{
        let destination = segue.destination as! SectionDetailViewController
            destination.sectionTitle = "Writing"
            destination.info = infoData.getWritingInfo()
        } else {
            let cell = sender as! WritingCell
            if let indexPath = writingTableView.indexPath(for: cell){
            let destination = segue.destination as! WritingItemViewController
                let writing = writingList[indexPath.row]
                destination.videoLink = writing.videoLink
                destination.text = writing.content
                destination.subject = writing.subject
            }
        }
    }
    func setColors() {
        view.backgroundColor = Colors.primaryColor()
        writingTableView.backgroundColor = Colors.primaryColor()
    }

}
