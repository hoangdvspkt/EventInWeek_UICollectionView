//
//  HeaderView.swift
//  EventInWeek_UICollectionView
//
//  Created by hoangdv on 5/2/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    @IBOutlet weak var dayName: UILabel!
    
    func didSet(dayEvent: DayEvent) {
        dayName.text = dayEvent.dayImageName
    }
}
