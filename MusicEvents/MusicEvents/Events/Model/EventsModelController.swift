//
//  EventsModelController.swift
//  MusicEvents
//
//  Created by Pavel Palancica on 11/16/19.
//  Copyright © 2019 I Dev TV. All rights reserved.
//

import UIKit

final class EventsModelController {
    
    public private(set) var events: [Event]
    
    init() {
        events = []
        events.append(Event(name: "Event 1", location: "Location 1", date: Date()))
        events.append(Event(name: "Event 2", location: "Location 2", date: Date()))
        events.append(Event(name: "Event 3", location: "Location 3", date: Date()))
        events.append(Event(name: "Event 4", location: "Location 4", date: Date()))
        events.append(Event(name: "Event 5", location: "Location 5", date: Date()))
        events.append(Event(name: "Event 6", location: "Location 6", date: Date()))
        events.append(Event(name: "Event 7", location: "Location 7", date: Date()))
        events.append(Event(name: "Event 8", location: "Location 8", date: Date()))
        events.append(Event(name: "Event 9", location: "Location 9", date: Date()))
        events.append(Event(name: "Event 10", location: "Location 10", date: Date()))
    }
    
    var eventsCount: Int {
        return events.count
    }
    
    func event(at index: Int) -> Event {
        return events[index]
    }
}
