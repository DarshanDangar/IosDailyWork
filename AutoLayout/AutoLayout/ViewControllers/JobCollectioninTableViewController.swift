//
//  JobCollectioninTableViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 05/06/23.
//

import UIKit

class JobCollectioninTableViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var btnFilter: UIButton!
    @IBOutlet weak var jobSearchBar: UISearchBar!
    @IBOutlet weak var btnProfile: UIButton!
    @IBOutlet weak var jobTypeTableView: UITableView!
    
    // MARK: Variables
    let dictJobDeatils = JobModelforTableView.dictJobData
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    private func initialSetUp() {
        jobTypeTableView.delegate = self
        jobTypeTableView.dataSource = self
        jobTypeTableView.register(UINib(nibName: Constant.TblCell.jobTypeTableViewCell, bundle: nil), forCellReuseIdentifier: Constant.TblCell.jobTypeTableViewCell)
        jobTypeTableView.register(UINib(nibName: Constant.TblCell.jobTypeCollectionInTableViewCell, bundle: nil), forCellReuseIdentifier: Constant.TblCell.jobTypeCollectionInTableViewCell)
        jobTypeTableView.register(UINib(nibName: Constant.TblCell.tableViewHeader, bundle: nil), forCellReuseIdentifier: Constant.TblCell.tableViewHeader)
        jobTypeTableView.register(UINib(nibName: Constant.TblCell.tableViewFooterCell, bundle: nil), forCellReuseIdentifier: Constant.TblCell.tableViewFooterCell)
    }
    
}

// MARK: UITableView DataSource
extension JobCollectioninTableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(dictJobDeatils.values.count)
        if section == 0 {
            return 1
            
        } else {
            return (dictJobDeatils["Popular Job"]?.count ?? 0)
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            guard let jobDeatilsCell = jobTypeTableView.dequeueReusableCell(withIdentifier: Constant.TblCell.jobTypeCollectionInTableViewCell)  as? JobTypeCollectionInTableViewCell else {
                return UITableViewCell()
            }
            return jobDeatilsCell
        } else {
            guard let jobDeatilsCell = jobTypeTableView.dequeueReusableCell(withIdentifier: Constant.TblCell.jobTypeTableViewCell, for: indexPath) as? JobTypeTableViewCell else {return UITableViewCell()}
            if let dict = dictJobDeatils["Popular Job"] {
                let index = dict[indexPath.row]
                jobDeatilsCell.configCell(data: index)
            }
            return jobDeatilsCell
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            guard let header = jobTypeTableView.dequeueReusableCell(withIdentifier: Constant.TblCell.tableViewHeader) as? TableViewHeader else {return UITableViewCell()}
            header.lblJobCategories.text = Constant.Title.featuredJob
            return header
        } else {
            guard let header = jobTypeTableView.dequeueReusableCell(withIdentifier: Constant.TblCell.tableViewHeader) as? TableViewHeader else {return UITableViewCell()}
            header.lblJobCategories.text = Constant.Title.popularJob
            return header
        }
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 0 {
            guard let footer = jobTypeTableView.dequeueReusableCell(withIdentifier: Constant.TblCell.tableViewFooterCell) else {return UITableViewCell()}
            return footer
        }
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 25
    }
    
}

// MARK: UITableView Delegate
extension JobCollectioninTableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 160
        } else {
            return 100
        }
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 0 {
            return UITableView.automaticDimension
        } else {
            return 0
        }
    }
    
}
