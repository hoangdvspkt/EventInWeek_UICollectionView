//
//  DayEvent.swift
//  EventInWeek_UICollectionView
//
//  Created by hoangdv on 5/2/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import Foundation

class DayEvent {
    
    var dayImageName: String
    var events: [Event]
    
    init(day: String, events: [Event]) {
        self.dayImageName = day
        self.events = events
    }
    
    class func dayEvents() -> [DayEvent] {
        return [self.sunday(), self.monday(), self.tuesday(), self.wednesday(), self.thursday(), self.friday(), self.saturday()]
    }
    
    private class func sunday() -> DayEvent {
        var events = [Event]()
        
        events.append(Event(title: "06h00-07h00", content: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(title: "07h00-10h30", content: "Học ở trường."))
        events.append(Event(title: "10h30-10h45", content: "Về nhà."))
        events.append(Event(title: "10h45-12h30", content: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(title: "12h30-16h00", content: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(title: "16h00-17h00", content: "Đi chơi."))
        events.append(Event(title: "17h00-17h30", content: "Giải trí: Chơi guitar."))
        events.append(Event(title: "17h30-18h30", content: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(title: "18h30-19h00", content: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(title: "19h00-23h30", content: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(title: "23h30-06h00", content: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        return DayEvent(day: "Sunday", events: events)
    }
    
    private class func monday() -> DayEvent {
        
        var events = [Event]()
        
        events.append(Event(title: "06h00-07h00", content: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(title: "07h00-10h30", content: "Học ở trường."))
        events.append(Event(title: "10h30-10h45", content: "Về nhà."))
        events.append(Event(title: "10h45-12h30", content: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(title: "12h30-16h00", content: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(title: "16h00-17h00", content: "Đi chơi."))
        events.append(Event(title: "17h00-17h30", content: "Giải trí: Chơi guitar."))
        events.append(Event(title: "17h30-18h30", content: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(title: "18h30-19h00", content: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(title: "19h00-23h30", content: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(title: "23h30-06h00", content: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        return DayEvent(day: "Monday", events: events)
    }
    
    private class func tuesday() -> DayEvent {
        var events = [Event]()
        
        events.append(Event(title: "06h00-07h00", content: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(title: "07h00-10h30", content: "Học ở trường."))
        events.append(Event(title: "10h30-10h45", content: "Về nhà."))
        events.append(Event(title: "10h45-12h00", content: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(title: "12h30-16h00", content: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(title: "16h00-17h00", content: "Đi chơi."))
        events.append(Event(title: "17h00-17h30", content: "Giải trí: Chơi guitar."))
        events.append(Event(title: "17h30-18h30", content: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(title: "18h30-19h00", content: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(title: "19h00-23h30", content: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(title: "23h30-06h00", content: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        return DayEvent(day: "Tuesday", events: events)
    }
    private class func wednesday() -> DayEvent {
        var events = [Event]()
        
        events.append(Event(title: "06h00-07h00", content: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(title: "07h00-10h30", content: "Học ở trường."))
        events.append(Event(title: "10h30-10h45", content: "Về nhà."))
        events.append(Event(title: "10h45-12h30", content: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(title: "12h30-16h00", content: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(title: "16h00-17h00", content: "Đi chơi."))
        events.append(Event(title: "17h00-17h30", content: "Giải trí: Chơi guitar."))
        events.append(Event(title: "17h30-18h30", content: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(title: "18h30-19h00", content: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(title: "19h00-23h30", content: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(title: "23h30-06h00", content: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        return DayEvent(day: "Wednesday", events: events)
    }
    private class func thursday() -> DayEvent {
        var events = [Event]()
        
        events.append(Event(title: "06h00-07h00", content: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(title: "07h00-10h30", content: "Học ở trường."))
        events.append(Event(title: "10h30-10h45", content: "Về nhà."))
        events.append(Event(title: "10h45-12h30", content: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(title: "12h30-16h00", content: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(title: "16h00-17h00", content: "Đi chơi."))
        events.append(Event(title: "17h00-17h30", content: "Giải trí: Chơi guitar."))
        events.append(Event(title: "17h30-18h30", content: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(title: "18h30-19h00", content: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(title: "19h00-23h30", content: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(title: "23h30-06h00", content: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        return DayEvent(day: "Thursday", events: events)
    }
    private class func friday() -> DayEvent {
        var events = [Event]()
        
        events.append(Event(title: "06h00-07h00", content: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(title: "07h00-10h30", content: "Học ở trường."))
        events.append(Event(title: "10h30-10h45", content: "Về nhà."))
        events.append(Event(title: "10h45-12h30", content: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(title: "12h30-16h00", content: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(title: "16h00-17h00", content: "Đi chơi."))
        events.append(Event(title: "17h00-17h30", content: "Giải trí: Chơi guitar."))
        events.append(Event(title: "17h30-18h30", content: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(title: "18h30-19h00", content: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(title: "19h00-23h30", content: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(title: "23h30-06h00", content: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        return DayEvent(day: "Friday", events: events)
    }
    private class func saturday() -> DayEvent {
        var events = [Event]()
        
        events.append(Event(title: "06h00-07h00", content: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(title: "07h00-10h30", content: "Học ở trường."))
        events.append(Event(title: "10h30-10h45", content: "Về nhà."))
        events.append(Event(title: "10h45-12h30", content: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(title: "12h30-16h00", content: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(title: "16h00-17h00", content: "Đi chơi."))
        events.append(Event(title: "17h00-17h30", content: "Giải trí: Chơi guitar."))
        events.append(Event(title: "17h30-18h30", content: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(title: "18h30-19h00", content: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(title: "19h00-23h30", content: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(title: "23h30-06h00", content: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        return DayEvent(day: "Saturday", events: events)
    }
}
