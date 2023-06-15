//
//  ParkingLotDetailsVC.swift
//  KtScreen
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

class ParkingLotDetailsVC: UIViewController {
    
    var currentIndex = 0
    // MARK: Outlets
    @IBOutlet weak var detailsOfParkingLotTableView: UITableView!
    
     // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    private func initialSetUp() {
        detailsOfParkingLotTableView.delegate = self
        detailsOfParkingLotTableView.dataSource = self
        let header =  UINib(nibName: "HeaderViewTableViewCell", bundle: nil).instantiate(withOwner: nil).first as? HeaderViewTableViewCell
        header?.configCell(data: AssignedParkingLotModel.arrParkingLotInfo[currentIndex])
        detailsOfParkingLotTableView.tableHeaderView = header
        registerCell()
    }
    
    // MARK: register cell
    private func registerCell() {
        detailsOfParkingLotTableView.register(UINib(nibName: "HeaderViewTableViewCell", bundle: nil), forCellReuseIdentifier: "HeaderViewTableViewCell")
        detailsOfParkingLotTableView.register(UINib(nibName: "ContactsDetailsTableViewCell", bundle: nil), forCellReuseIdentifier: "ContactsDetailsTableViewCell")
        detailsOfParkingLotTableView.register(UINib(nibName: "ContactsDetailsTableViewCell", bundle: nil), forCellReuseIdentifier: "ContactsDetailsTableViewCell")
        detailsOfParkingLotTableView.register(UINib(nibName: "StepToRedeemTableViewCell", bundle: nil), forCellReuseIdentifier: "StepToRedeemTableViewCell")
        detailsOfParkingLotTableView.register(UINib(nibName: "TermsAndConditionTableViewCell", bundle: nil), forCellReuseIdentifier: "TermsAndConditionTableViewCell")
    }
    
}

// MARK: UITableView Delegates
extension ParkingLotDetailsVC: UITableViewDelegate {}

// MARK: UITableView DataSource
extension ParkingLotDetailsVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Sections.allCases.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 4 {
            return UITableView.automaticDimension
        } else {
            return UITableView.automaticDimension
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return ContectsModel.arrContactDetails.count
        case 1:
            return ContectsModel.superViserDetails.count
        case 2:
            return ContectsModel.MaintenanceDetails.count
        case 3:
            return RedeemStepCountModel.arrRedemStep.count
        case 4:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 1:
            return "Supervisor Details"
        case 2:
            return "Maintenance Details"
        case 3:
            return "Step to Redeem"
        case 4:
            return "Terms & Conditions"
        default:
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsDetailsTableViewCell", for: indexPath) as? ContactsDetailsTableViewCell else {return UITableViewCell()}
            let dataForParticularIndex = ContectsModel.arrContactDetails[indexPath.row]
            cell.configCell(data: dataForParticularIndex)
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsDetailsTableViewCell", for: indexPath) as? ContactsDetailsTableViewCell else {return UITableViewCell()}
            let dataForParticularIndex = ContectsModel.superViserDetails[indexPath.row]
            cell.configCell(data: dataForParticularIndex)
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsDetailsTableViewCell", for: indexPath) as? ContactsDetailsTableViewCell else {return UITableViewCell()}
            let dataForParticularIndex = ContectsModel.MaintenanceDetails[indexPath.row]
            cell.configCell(data: dataForParticularIndex)
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "StepToRedeemTableViewCell", for: indexPath) as? StepToRedeemTableViewCell else {return UITableViewCell()}
            let dataForParticularIndex = RedeemStepCountModel.arrRedemStep[indexPath.row]
            cell.configCell(data: dataForParticularIndex)
            return cell
        case 4:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "TermsAndConditionTableViewCell", for: indexPath) as? TermsAndConditionTableViewCell else {return UITableViewCell()}
            return cell
            
        default:
            break
        }
        return UITableViewCell()
    }
    
    
}
