//
//  ParkingLotDetailsVC.swift
//  KtScreen
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

class ParkingLotDetailsVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var detailsOfParkingLotTableView: UITableView!
    
    // MARK: Variables
    var currentIndex = 0
    
     // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    private func initialSetUp() {
        detailsOfParkingLotTableView.delegate = self
        detailsOfParkingLotTableView.dataSource = self
        detailsOfParkingLotTableView.estimatedRowHeight = 120
        let header =  UINib(nibName: "HeaderViewTableViewCell", bundle: nil).instantiate(withOwner: nil).first as? HeaderViewTableViewCell
        header?.configCell(data: AssignedParkingLotModel.arrParkingLotInfo[currentIndex])
        detailsOfParkingLotTableView.tableHeaderView = header
        navigationController?.navigationBar.backItem?.title = ""
        detailsOfParkingLotTableView.sectionHeaderTopPadding = 5
        registerCell()
    }
    
    // MARK: register cell
    private func registerCell() {
        detailsOfParkingLotTableView.register(UINib(nibName: "HeaderViewTableViewCell", bundle: nil), forCellReuseIdentifier: "HeaderViewTableViewCell")
        detailsOfParkingLotTableView.register(UINib(nibName: "ContactsDetailsTableViewCell", bundle: nil), forCellReuseIdentifier: "ContactsDetailsTableViewCell")
        detailsOfParkingLotTableView.register(UINib(nibName: "ContactsDetailsTableViewCell", bundle: nil), forCellReuseIdentifier: "ContactsDetailsTableViewCell")
        detailsOfParkingLotTableView.register(UINib(nibName: "StepToRedeemTableViewCell", bundle: nil), forCellReuseIdentifier: "StepToRedeemTableViewCell")
        detailsOfParkingLotTableView.register(UINib(nibName: "TermsAndConditionTableViewCell", bundle: nil), forCellReuseIdentifier: "TermsAndConditionTableViewCell")
        detailsOfParkingLotTableView.register(UINib(nibName: "SectionHeaderCell", bundle: nil), forCellReuseIdentifier: "SectionHeaderCell")
    }
    
}

// MARK: UITableView Delegates
extension ParkingLotDetailsVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        } else {
            return UITableView.automaticDimension
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return UITableView.automaticDimension
    }
    
}

// MARK: UITableView DataSource
extension ParkingLotDetailsVC: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return Sections.arrSections.count
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
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let view = tableView.dequeueReusableCell(withIdentifier: "SectionHeaderCell") as? SectionHeaderCell else {return UIView()}
        switch section {
        case 0:
            return nil
        case 1:
            view.configCell(data: Sections.SuperVisiorDetails.rawValue)
            return view
        case 2:
            view.configCell(data: Sections.MaintenanceDetails.rawValue)
            return view
        case 3:
            view.configCell(data: Sections.SteptoRedeem.rawValue)
            return view
        case 4:
            view.configCell(data: Sections.TermsConditions.rawValue)
            return view
        default:
            return UIView()
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
            cell.botomCon.constant = 14
            cell.configCell(data: dataForParticularIndex)
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactsDetailsTableViewCell", for: indexPath) as? ContactsDetailsTableViewCell else {return UITableViewCell()}
            let dataForParticularIndex = ContectsModel.MaintenanceDetails[indexPath.row]
            cell.configCell(data: dataForParticularIndex)
            cell.botomCon.constant = 14
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
