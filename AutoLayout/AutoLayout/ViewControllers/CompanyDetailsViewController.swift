//
//  CompanyDetailsViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 02/06/23.
//

import UIKit

class CompanyDetailsViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tblCompanyDetails: UITableView!
    
    private var arrCompanyDetails = CompanyDeatilsModel.deatilsOfCompany
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    private func initialSetUp() {
        tblCompanyDetails.delegate = self
        tblCompanyDetails.dataSource = self
        tblCompanyDetails.register(UINib(nibName: Constant.TblCell.expandTableViewCell, bundle: nil), forCellReuseIdentifier: Constant.TblCell.expandTableViewCell)
    }
    
}

// MARK: UITableView DataSource
extension CompanyDetailsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCompanyDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let details = tblCompanyDetails.dequeueReusableCell(withIdentifier: Constant.TblCell.expandTableViewCell) as? ExpandTableViewCell else { return UITableViewCell()
        }
        let indexData = arrCompanyDetails[indexPath.row]
        details.configcell(data: indexData)
        return details
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

// MARK: UITableView Delegates
extension CompanyDetailsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) as? ExpandTableViewCell {
            if cell.lblDiscription.numberOfLines == 1 {
                let detailsCompany = arrCompanyDetails[indexPath.row]
                detailsCompany.isTaped = true
            } else {
                let detailsCompany = arrCompanyDetails[indexPath.row]
                detailsCompany.isTaped = false
            }
            tblCompanyDetails.reloadRows(at: [indexPath], with: .none)
        }
    }
    
}
