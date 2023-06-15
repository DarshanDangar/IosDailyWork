//
//  AssignedParkingLot.swift
//  ComponentKt
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

class AssignedParkingLotVC: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var assignedParkingLotTableView: UITableView!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    func initialSetUp() {
        assignedParkingLotTableView.delegate = self
        assignedParkingLotTableView.dataSource = self
        assignedParkingLotTableView.register(UINib(nibName: "AssignedParkingLotTableViewCell", bundle: nil), forCellReuseIdentifier: "AssignedParkingLotTableViewCell")
    }
    
}

// MARK: UITableView Delegates
extension AssignedParkingLotVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ParkingLotDetailsVC") as! ParkingLotDetailsVC
        vc.currentIndex = indexPath.row
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
