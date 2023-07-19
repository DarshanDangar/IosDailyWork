//
//  JobModelViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 31/05/23.
//

import UIKit

class JobModelViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var onTapSwitch: UISwitch!
    @IBOutlet weak var tblJobList: UITableView!
    @IBOutlet weak var searchBarComapnyName: UISearchBar!
    
    // MARK: Variables
    private var jobArray = JobModel.arrayJobModel
    var searchedJob: [JobModel] = []
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
        onTapSwitch.isOn = false
        searchBarFunctionality()
    }
    
    // MARK: iniitialSetUp
    private func initialSetUp() {
        tblJobList.delegate = self
        tblJobList.dataSource = self
        tblJobList.register(UINib(nibName: Constant.TblCell.jobViewModelTableViewCell, bundle: nil), forCellReuseIdentifier: Constant.TblCell.jobViewModelTableViewCell)
    }
    
    // MARK: Action tapSwitch
    @IBAction func onTapSwitch(_ sender: Any) {
        if onTapSwitch.isOn {
            tblJobList.allowsMultipleSelection = true
        } else {
            jobArray.forEach{ job in
                job.isSelected = false
            }
            tblJobList.allowsMultipleSelection = false
            tblJobList.allowsSelection = true
            tblJobList.reloadData()
        }
    }
    
    // MARK: Action RadioButton
    @IBAction func btnAddRowInTableView(_ sender: UIButton) {
        let model: [JobModel] = [JobModel(Constant.Images.image6, Constant.Title.simform),
                                 JobModel(Constant.Images.image6, Constant.Title.simform),
                                 JobModel(Constant.Images.image6, Constant.Title.simform)]
        jobArray.append(contentsOf: model)
        tblJobList.reloadData()
    }
    
    // MARK: searchbar method
    private func searchBarFunctionality() {
        searchBarComapnyName.delegate = self
    }
    
}

// MARK: UITableView DataSource
extension JobModelViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let jobDeatilsCell = tblJobList.dequeueReusableCell(withIdentifier: Constant.TblCell.jobViewModelTableViewCell)  as? JobViewModelTableViewCell else {
            return UITableViewCell()
        }
        
        let indexData = jobArray[indexPath.row]
        jobDeatilsCell.configCell(data: indexData)
        jobDeatilsCell.closure = {
            jobDeatilsCell.btnSelector.isSelected.toggle()
            print(indexPath.row)
        }
        
        return jobDeatilsCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.jobArray.remove(at: indexPath.row)
            self.tblJobList.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
}

// MARK: UITableView Delegates
extension JobModelViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let job = jobArray[indexPath.row]
        job.isSelected = true
        
        if let cell = tableView.cellForRow(at: indexPath) as? JobViewModelTableViewCell {
            cell.btnSelector.isSelected = true
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let job = jobArray[indexPath.row]
        job.isSelected = false
        
        if let cell = tableView.cellForRow(at: indexPath) as? JobViewModelTableViewCell {
            cell.btnSelector.isSelected = false
        }
    }
    
}

extension JobModelViewController: BtnActionDelegate {
    func jobViewModelTableViewCell(_ jobViewModelTableViewCell: JobViewModelTableViewCell) {
        print("Btn clicked for \(tblJobList.visibleCells)")
    }
}

extension JobModelViewController: UISearchBarDelegate {
    
    func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool {
        print("searchBarShouldEndEditing")
        return true
    }
    
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        print(#function)
        return true
    }
    
    // MARK: SearchBar Functionality
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText.isEmpty {
            jobArray = JobModel.arrayJobModel
        } else {
            jobArray = JobModel.arrayJobModel.filter {
                ($0.companyName?.lowercased().contains(searchText.lowercased()))!
            }
            
            if jobArray.isEmpty {
                showAlertAction(title: Constant.Title.item, message: Constant.Title.iteamNotFound)
            }
        }
        tblJobList.reloadData()
        
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        print(#function)
    }
    
    // MARK: Show AlertAction
    func showAlertAction(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: Constant.Title.ok, style: UIAlertAction.Style.default, handler: {(action:UIAlertAction!) in
            self.jobArray = JobModel.arrayJobModel
            self.searchBarComapnyName.text = nil
            self.tblJobList.reloadData()
        }))
        //        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
