//
//  ParkingLotDetailsVC.swift
//  KtScreen
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

class ParkingLotDetailsVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak private var detailsOfParkingLotTableView: UITableView!
    
    // MARK: Variables
    var currentId: AssignedParkingLotModel?
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.title = Constants.NavigationTitle.parkingLotDetails
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        guard let headerView = detailsOfParkingLotTableView.tableHeaderView else {
//            return
//        }
//        let size = headerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
//
//        if headerView.frame.size.height != size.height {
//            headerView.frame.size.height = size.height
//            detailsOfParkingLotTableView.tableHeaderView = headerView
//            detailsOfParkingLotTableView.layoutIfNeeded()
//        }
//    }

    
    // MARK: iniitialSetUp
    private func initialSetUp() {
        detailsOfParkingLotTableView.delegate = self
        detailsOfParkingLotTableView.dataSource = self
        detailsOfParkingLotTableView.estimatedRowHeight = 120
        detailsOfParkingLotTableView.sectionHeaderTopPadding = 0
        navigationItem.setLeftBarButton(UIBarButtonItem(image: UIImage(named: Constants.Image.btnBack), style: .plain, target: self, action: #selector(self.onTapBack)), animated: true)
        navigationItem.leftBarButtonItem?.tintColor = UIColor.white
        registerCell()
    }
    
    // MARK: Action Back Button
    @objc private func onTapBack() {
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: register cell
    private func registerCell() {
        detailsOfParkingLotTableView.register(UINib(nibName: Constants.Cell.headerViewTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.Cell.headerViewTableViewCell)
        detailsOfParkingLotTableView.register(UINib(nibName: Constants.Cell.contactsDetailsTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.Cell.contactsDetailsTableViewCell)
        detailsOfParkingLotTableView.register(UINib(nibName: Constants.Cell.contactsDetailsTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.Cell.contactsDetailsTableViewCell)
        detailsOfParkingLotTableView.register(UINib(nibName: Constants.Cell.stepToRedeemTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.Cell.stepToRedeemTableViewCell)
        detailsOfParkingLotTableView.register(UINib(nibName: Constants.Cell.termsAndConditionTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.Cell.termsAndConditionTableViewCell)
        detailsOfParkingLotTableView.register(UINib(nibName: Constants.Cell.sectionHeaderCell, bundle: nil), forCellReuseIdentifier: Constants.Cell.sectionHeaderCell)
        let header = UINib(nibName: Constants.Cell.headerViewTableViewCell, bundle: nil).instantiate(withOwner: nil).first as? HeaderViewTableViewCell
        let dataOfCurrentIndex = AssignedParkingLotModel.parkingLotList.first
        header?.configCell(data: currentId ??  AssignedParkingLotModel(imgParkingLot: Constants.String.emptyString, parkingId: Constants.String.emptyString, parkingLotName: Constants.String.emptyString, parkingLotAddress: Constants.String.emptyString, oeratingHour: Constants.String.emptyString, locationId: Constants.String.emptyString, locationPhoneNo: Constants.String.emptyString))
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
        case .zero:
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
        case .zero:
            return nil
        case 1:
            view.topConstraintsofHeaderName.constant = 20
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
            view.topConstraintsofHeaderName.constant = 15
            return view
        default:
            return UIView()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case .zero:
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
            case .zero:
                cell.topConstraintOfStackView.constant = 14
            case 1:
                cell.topConstraintOfStackView.constant = 18
            case 2:
                cell.topConstraintOfStackView.constant = 11
                cell.stackView.alignment = .center
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
