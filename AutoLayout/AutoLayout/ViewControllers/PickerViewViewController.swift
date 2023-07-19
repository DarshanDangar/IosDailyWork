//
//  PickerViewViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 06/06/23.
//

import UIKit

class PickerViewViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var lblgetTime: UILabel!
    @IBOutlet weak var timePickerView: UIPickerView!
    
    // MARK: Variables
    let dateFormater = DateFormatter()
    let arrHourofDay = ["0","1","2","3","4","5","6","7","8","9","10","11","12"]
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    func initialSetUp() {
        timePickerView.delegate =  self
        timePickerView.dataSource = self
        dateFormater.dateFormat = "dd/MM/yyyy"
        lblgetTime.text = dateFormater.string(from: datePicker.date)
        datePicker.maximumDate = Date.now
        datePicker.minimumDate = Calendar.current.date(byAdding: .year, value: -10, to: .now)
    }
    
    // MARK: IbActions
    @IBAction func onTapdatePicker(_ sender: Any) {
        let str = dateFormater.string(from: datePicker.date)
        lblgetTime.text = str
    }
    
}

// MARK: PickerView DataSource
extension PickerViewViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        arrHourofDay.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return arrHourofDay[row]
        } else if component == 1 {
            return arrHourofDay[row]
        } else {
            return arrHourofDay[row]
        }
    }
    
}

// MARK: PickerView Delegate
extension PickerViewViewController: UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblgetTime.text = String(row)
    }
    
}
