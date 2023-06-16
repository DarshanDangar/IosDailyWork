//
//  AssignedParkingLot.swift
//  ComponentKt
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

class AssignedParkingLotVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var btnMessage: UIButton!
    @IBOutlet weak var assignedParkingLotTableView: UITableView!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.topItem?.setRightBarButton(UIBarButtonItem(image: UIImage(named: "notification"), style: .plain, target: storyboard, action: nil), animated: true)
        navigationController?.navigationBar.topItem?.setLeftBarButton(UIBarButtonItem(image: UIImage(named: "Image"), style: .plain, target: storyboard, action: nil), animated: true)
        navigationController?.navigationBar.topItem?.title = "Assigned Parking Lot"
    }
    
    // MARK: iniitialSetUp
    func initialSetUp() {
        assignedParkingLotTableView.delegate = self
        assignedParkingLotTableView.dataSource = self
        assignedParkingLotTableView.estimatedRowHeight = 100
        assignedParkingLotTableView.register(UINib(nibName: "AssignedParkingLotTableViewCell", bundle: nil), forCellReuseIdentifier: "AssignedParkingLotTableViewCell")
        navigationController?.navigationBar.backgroundColor = UIColor(named: "navigationBarBG")
        navigationController?.navigationBar.tintColor = .white
        btnMessage.layer.cornerRadius = btnMessage.frame.height / 2
    }
    
}

// MARK: UITableView Delegates
extension AssignedParkingLotVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ParkingLotDetailsVC") as? ParkingLotDetailsVC else {return}
        vc.currentIndex = indexPath.row
        vc.navigationItem.title = "Parking Lot Details"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

// MARK: UITableView DataSource
extension AssignedParkingLotVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AssignedParkingLotModel.arrParkingLotInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AssignedParkingLotTableViewCell", for: indexPath) as? AssignedParkingLotTableViewCell else {return UITableViewCell()}
        let dataForParticularIndex = AssignedParkingLotModel.arrParkingLotInfo[indexPath.row]
        cell.configCell(data: dataForParticularIndex)
        return cell
    }
    
}
