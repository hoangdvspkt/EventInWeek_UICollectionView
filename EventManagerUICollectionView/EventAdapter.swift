//
//  EventAdapter.swift
//  EventManagerUICollectionView
//
//  Created by hoangdv on 5/2/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import Foundation

class EventAdapter {
    // MARK: - Data Source
    var dayEvents : [DayEvent] = {
        return DayEvent.dayEvents()
    }()
}
