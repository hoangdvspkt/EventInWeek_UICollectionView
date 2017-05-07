//
//  AddEventViewController.swift
//  EventInWeek_UICollectionView
//
//  Created by hoangdv on 5/2/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var dayPickerView: UIPickerView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    
    var eventAdapter: EventAdapter?
    //Mảng các ngày trong tuần
    var day = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    @IBAction func saveButtonAction(_ sender: Any) {
        if (titleTextField.text!.isEmpty || contentTextView.text!.isEmpty) {
            //Thông báo yêu cầu nhập đầy đủ thông tin
            let alert = UIAlertController(title: "WARNING!!!", message: "Please enter full information!", preferredStyle: UIAlertControllerStyle.alert);
            //add an action
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil));
            //show alert
            self.present(alert, animated: true, completion: nil)
        }
            
        else {
            //Thêm event , nhấn nút save thì trở về màn hình danh sách các event
            let selectedIndex = dayPickerView.selectedRow(inComponent: 0)
            eventAdapter?.dayEvents[selectedIndex].events.append(Event(title: titleTextField.text!, content: contentTextView.text!))

            self.navigationController?.popViewController(animated: true)

        }
    }
    
    //Hàm chứa các ngày trong tuần, trả về ngày hiện tại
    func getDayOfWeek() -> Int? {
        let date = Date()
        let myCalendar = Calendar(identifier: .gregorian)
        let weekDay = myCalendar.component(.weekday, from: date)
        return weekDay
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dayPickerView.selectRow(getDayOfWeek()! - 2, inComponent: 0, animated: false)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setAdapter(eventAdapter: EventAdapter) {
        self.eventAdapter = eventAdapter
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return day.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return day[row]
    }

}
