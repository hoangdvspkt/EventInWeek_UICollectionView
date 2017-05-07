//
//  EventCell.swift
//  EventInWeek_UICollectionView
//
//  Created by hoangdv on 5/2/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import UIKit

class EventCell: UICollectionViewCell {
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    func didSet(event: Event) {
        contentLabel.text = event.content
        titleLabel.text = event.title
    }
}
