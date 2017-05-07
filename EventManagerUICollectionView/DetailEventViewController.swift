//
//  DetailEventViewController.swift
//  EventManagerUICollectionView
//
//  Created by hoangdv on 5/2/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import UIKit

class DetailEventViewController: UIViewController {
    
    @IBOutlet weak var dayNameLabel: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    
    var dayEvent: DayEvent?
    var event: Event?
    
    @IBAction func saveButtonAction(_ sender: Any) {
        if (titleTextField.text!.isEmpty || contentTextView.text!.isEmpty) {
            //Hiện thông báo yêu cầu nhập đầy đủ dữ liệu
            let alert = UIAlertController(title: "WARNING!!!", message: "Please enter full information!", preferredStyle: UIAlertControllerStyle.alert);
            //add an action
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil));
            
            self.present(alert, animated: true, completion: nil)
        }
        else if (titleTextField.text != "" && contentTextView.text != "") {
            //gán giá trị cho 2 ô text
            event?.content = contentTextView.text
            event?.title = titleTextField.text!
            //Trở về màn hình danh sách event sau khi nhấn nút save
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.title = "Event"
        didSet()
    }
    
    func setAdapter(dayEvent: DayEvent, event: Event) {
        self.event = event
        self.dayEvent = dayEvent
    }
    
    func didSet() {
        titleTextField.text = event?.title
        contentTextView.text = event?.content
        dayNameLabel.text = dayEvent?.dayImageName
    }

}
