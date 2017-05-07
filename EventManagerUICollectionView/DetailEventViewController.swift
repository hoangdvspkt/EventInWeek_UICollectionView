//
//  DetailEventViewController.swift
//  EventManagerUICollectionView
//
//  Created by hoangdv on 5/2/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import UIKit

class DetailEventViewController: UIViewController {
    
    @IBOutlet weak var dayImage: UIImageView!
    @IBOutlet weak var dayNameLabel: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    var dayEvent: DayEvent?
    var event: Event?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.title = "Event"
        didSet()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButtonAction(_ sender: Any) {
        if titleTextField.text != "" && contentTextView.text != "" {
            //set value
            event?.content = contentTextView.text
            event?.title = titleTextField.text!
            //alert
            let alert = UIAlertController(title: "Notification", message: "Saved!", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(alertAction)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func setAdapter(dayEvent: DayEvent, event: Event) {
        self.event = event
        self.dayEvent = dayEvent
    }
    
    func didSet() {
        titleTextField.text = event?.title
        contentTextView.text = event?.content
        dayImage.image = UIImage(named: (dayEvent?.dayImageName)!)
        dayNameLabel.text = dayEvent?.dayImageName
    }

}
