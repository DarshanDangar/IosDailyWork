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
    
    override func viewWillAppear(_ animated: Bool) {
//        navigationController?.navigationBar.topItem?.rightBarButtonItem?.title = ""
//        navigationController?.navigationBar.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        navigationItem.title = Constants.NavigationTitle.parkingLotDetails
    }
    
    
    
    // MARK: iniitialSetUp
    private func initialSetUp() {
        detailsOfParkingLotTableView.delegate = self
        detailsOfParkingLotTableView.dataSource = self
        detailsOfParkingLotTableView.estimatedRowHeight = 120
        detailsOfParkingLotTableView.sectionHeaderTopPadding = 5
        registerCell()
    }
    
    // MARK: register cell
    private func registerCell() {
        detailsOfParkingLotTableView.register(UINib(nibName: Constants.Cell.headerViewTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.Cell.headerViewTableViewCell)
        detailsOfParkingLotTableView.register(UINib(nibName: Constants.Cell.contactsDetailsTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.Cell.contactsDetailsTableViewCell)
        detailsOfParkingLotTableView.register(UINib(nibName: Constants.Cell.contactsDetailsTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.Cell.contactsDetailsTableViewCell)
        detailsOfParkingLotTableView.register(UINib(nibName: Constants.Cell.stepToRedeemTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.Cell.stepToRedeemTableViewCell)
        detailsOfParkingLotTableView.register(UINib(nibName: Constants.Cell.termsAndConditionTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.Cell.termsAndConditionTableViewCell)
        detailsOfParkingLotTableView.register(UINib(nibName: Constants.Cell.sectionHeaderCell, bundle: nil), forCellReuseIdentifier: Constants.Cell.sectionHeaderCell)
        let header =  UINib(nibName: Constants.Cell.headerViewTableViewCell, bundle: nil).instantiate(withOwner: nil).first as? HeaderViewTableViewCell
        header?.configCell(data: AssignedParkingLotModel.parkingLotList[currentIndex])
        detailsOfParkingLotTableView.tableHeaderView = header
    }
    
}

// MARK: UITableView DataSource
extension ParkingLotDetailsVC: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return Sections.allCases.count
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
            return RedeemDetails.arrRedemStep.count
        case 4:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let view = tableView.dequeueReusableCell(withIdentifier: Constants.Cell.sectionHeaderCell) as? SectionHeaderCell else {return UIView()}
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
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Cell.contactsDetailsTableViewCell, for: indexPath) as? ContactsDetailsTableViewCell else {return UITableViewCell()}
                let dataForParticularIndex = ContectsModel.arrContactDetails[indexPath.row]
                cell.configCell(data: dataForParticularIndex)
                return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Cell.contactsDetailsTableViewCell, for: indexPath) as? ContactsDetailsTableViewCell else {return UITableViewCell()}
            let dataForParticularIndex = ContectsModel.superViserDetails[indexPath.row]
            cell.botomCon.constant = 14
            cell.configCell(data: dataForParticularIndex)
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Cell.contactsDetailsTableViewCell, for: indexPath) as? ContactsDetailsTableViewCell else {return UITableViewCell()}
            let dataForParticularIndex = ContectsModel.MaintenanceDetails[indexPath.row]
            cell.configCell(data: dataForParticularIndex)
            cell.botomCon.constant = 14
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Cell.stepToRedeemTableViewCell, for: indexPath) as? StepToRedeemTableViewCell else {return UITableViewCell()}
            switch indexPath.row {
            case 0:
                cell.topConstraintOfStackView.constant = 14
            case 1:
                cell.topConstraintOfStackView.constant = 18
            case 2:
                cell.topConstraintOfStackView.constant = 11
            default:
                break
            }
            let dataForParticularIndex = RedeemDetails.arrRedemStep[indexPath.row]
            cell.configCell(data: dataForParticularIndex)
            return cell
        case 4:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Cell.termsAndConditionTableViewCell, for: indexPath) as? TermsAndConditionTableViewCell else {return UITableViewCell()}
            return cell
        default:
            break
        }
        return UITableViewCell()
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

