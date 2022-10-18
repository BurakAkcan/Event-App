//
//  EventListCoordinator.swift
//  Event-App
//
//  Created by Burak AKCAN on 18.10.2022.
//

import UIKit

final class EventListCoordinator: Coordinator {
   private(set) var childCoordinator: [Coordinator] = []
    private let navigationController: UINavigationController?
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let eventListVC = EventListVC.instantiate()
        navigationController?.setViewControllers([eventListVC], animated: false)
    }
    
    
}
