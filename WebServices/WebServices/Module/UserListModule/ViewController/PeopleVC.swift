//
//  PeopleVC.swift
//  WebServices
//
//  Created by Darshan Dangar on 06/07/23.
//

import UIKit

class PeopleVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tblPeople: UITableView!
    
    // MARK: Variables
    private var listOfPeople: [Datum] = []
    let peopleVm  = PeoopleVm()
    let refreshControl = UIRefreshControl()
    var coordinator: ButtonCoordinator?
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    // MARK: Private Method
    private func initialSetup() {
        tblPeople.delegate = self
        tblPeople.dataSource = self
        refreshControld()
        bindVM()
        peopleVm.getDatafromServer()
        tblPeople.register(UINib(nibName: Constants.TblCell.tblCellUserList, bundle: nil), forCellReuseIdentifier: Constants.TblCell.tblCellUserList)
    }
    
    private func refreshControld() {
        refreshControl.addTarget(self, action: #selector(loadData), for: .valueChanged)
        tblPeople.refreshControl = refreshControl
    }
    
    @objc private func loadData() {
        peopleVm.currentPage.value = 0
        peopleVm.getDatafromServer()
        refreshControl.endRefreshing()
        peopleVm.userList.value = []
    }
    
    private func bindVM() {
        peopleVm.userList.bind { user in
            DispatchQueue.main.async {
                self.tblPeople.reloadData()
            }
        }
    }

}

// MARK: UITableView Delegates
extension PeopleVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == peopleVm.userList.value.count - 1, peopleVm.currentPage.value < peopleVm.totalPage.value {
            peopleVm.getDatafromServer()
        }
    }
    
}

// MARK: UITableView DataSource
extension PeopleVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleVm.userList.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.TblCell.tblCellUserList, for: indexPath) as? TblCellUserList else {
            return UITableViewCell()
        }
        let dataForParticularIndex = peopleVm.userList.value[indexPath.row]
        cell.configCell(data: dataForParticularIndex)
        return cell
    }
    
}



