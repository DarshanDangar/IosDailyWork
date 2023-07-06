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
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    private func initialSetup() {
        tblPeople.delegate = self
        tblPeople.dataSource = self
        let vm  = PeoopleVm()
//        vm.onApiSucess.bind({ datum in
//            listOfPeople = datum
//        })
        tblPeople.register(UINib(nibName: Constants.TbblCell.tblCellUserList, bundle: nil), forCellReuseIdentifier: Constants.TbblCell.tblCellUserList)
    }

}

// MARK: UITableView Delegates
extension PeopleVC: UITableViewDelegate {
    
}

// MARK: UITableView DataSource
extension PeopleVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfPeople.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}



