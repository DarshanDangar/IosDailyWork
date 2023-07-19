//
//  TableViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 31/05/23.
//

import UIKit

class TableViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tblNameList: UITableView!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    func initialSetUp() {
        tblNameList.delegate = self
        tblNameList.dataSource = self
        tblNameList.register(UINib(nibName: Constant.TblCell.nameTableViewCell, bundle: nil), forCellReuseIdentifier: Constant.TblCell.nameTableViewCell)
    }
    
}

// MARK: UITableView DataSource
extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tblNameList.dequeueReusableCell(withIdentifier: Constant.TblCell.nameTableViewCell) else {return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

// MARK: UITableView Delegates
extension TableViewController: UITableViewDelegate {
    
}
