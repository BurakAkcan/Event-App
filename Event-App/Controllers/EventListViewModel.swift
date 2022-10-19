//
//  EventListViewModel.swift
//  Event-App
//
//  Created by Burak AKCAN on 18.10.2022.
//

import Foundation

final class EventListviewModel {
    
    var coordinator: EventListCoordinator?
    public let title: String = "Events"
    func tappedAddEvent() {
        print("tapped add")
        coordinator?.startAddEvent()    
    }
}
