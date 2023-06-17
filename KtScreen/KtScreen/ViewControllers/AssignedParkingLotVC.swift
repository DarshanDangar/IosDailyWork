//
//  AssignedParkingLot.swift
//  ComponentKt
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

class AssignedParkingLotVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak private var btnMessage: UIButton!
    @IBOutlet weak private var tblAssignedParkingLot: UITableView!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.topItem?.setRightBarButton(UIBarButtonItem(image: UIImage(named: Constants.Image.notification), style: .plain, target: storyboard, action: nil), animated: true)
        navigationController?.navigationBar.topItem?.setLeftBarButton(UIBarButtonItem(image: UIImage(named: Constants.Image.hamBurger), style: .plain, target: storyboard, action: nil), animated: true)
        title = Constants.NavigationTitle.assignedParkingLot
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.foregroundColor : UIColor.white ]
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        navigationController?.navigationBar.topItem?.titleView?.tintColor = .white
    }
    
    // MARK: iniitialSetUp
    func initialSetUp() {
        tblAssignedParkingLot.delegate = self
        tblAssignedParkingLot.dataSource = self
        tblAssignedParkingLot.estimatedRowHeight = 100
        tblAssignedParkingLot.register(UINib(nibName: Constants.Cell.assignedParkingLotTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.Cell.assignedParkingLotTableViewCell)
        navigationController?.navigationBar.backgroundColor = UIColor(named: Constants.Color.navigationBarBG)
        navigationController?.navigationBar.tintColor = .white
        btnMessage.layer.cornerRadius = btnMessage.frame.height / 2
    }
    
}

// MARK: UITableView DataSource
extension AssignedParkingLotVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AssignedParkingLotModel.parkingLotList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.Cell.assignedParkingLotTableViewCell, for: indexPath) as? AssignedParkingLotTableViewCell else {return UITableViewCell()}
        let dataForParticularIndex = AssignedParkingLotModel.parkingLotList[indexPath.row]
        cell.configCell(data: dataForParticularIndex)
        return cell
    }
    
}

// MARK: UITableView Delegates
extension AssignedParkingLotVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: Constants.ViewControllerList.parkingLotDetailsVC) as? ParkingLotDetailsVC else {return}
        vc.currentIndex = indexPath.row
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
