//
//  AddEventViewController.swift
//  EventManagerUICollectionView
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
    var day = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    @IBAction func saveButtonAction(_ sender: Any) {
        if titleTextField.text != "" && contentTextView.text != "" {
            //add event
            let selectedIndex = dayPickerView.selectedRow(inComponent: 0)
            eventAdapter?.dayEvents[selectedIndex].events.append(Event(title: titleTextField.text!, content: contentTextView.text!))
            
            //alert
            let alert = UIAlertController(title: "Notification", message: "Save Success!", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(alertAction)
            self.present(alert, animated: true, completion: nil)
            
            //clear text
            titleTextField.text = ""
            contentTextView.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dayPickerView.selectRow(getDayOfWeek()! - 2, inComponent: 0, animated: false)
        //print(getDayOfWeek()!)
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

    func getDayOfWeek() -> Int? {
        let date = Date()
        let myCalendar = Calendar(identifier: .gregorian)
        let weekDay = myCalendar.component(.weekday, from: date)
        return weekDay
    }

}
