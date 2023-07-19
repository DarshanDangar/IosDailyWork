//
//  DynamicCollectionViewInTableViewViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 08/06/23.
//

import UIKit

class NestedCollectionViewInTableViewViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tableViewForNestedCollectionView: UITableView!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    private func initialSetUp() {
        tableViewForNestedCollectionView.delegate = self
        tableViewForNestedCollectionView.dataSource = self
        tableViewForNestedCollectionView.register(UINib(nibName: Constant.TblCell.nestedCollectionInTableViewCell, bundle: nil), forCellReuseIdentifier: Constant.TblCell.nestedCollectionInTableViewCell)
    }
    
}

// MARK: UITableView Delegates
extension NestedCollectionViewInTableViewViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //        return UITableView.automaticDimension
        return 100
    }
}

// MARK: UITableView DataSource
extension NestedCollectionViewInTableViewViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return OpeningJobModel.arrOpeningJob.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let data = tableViewForNestedCollectionView.dequeueReusableCell(withIdentifier: Constant.TblCell.nestedCollectionInTableViewCell, for: indexPath) as? NestedCollectionInTableViewCell else {return UITableViewCell()}
        // let dataJob = OpeningJobModel.arrOpeningJob[indexPath.row]
        return data
    }
    
}
