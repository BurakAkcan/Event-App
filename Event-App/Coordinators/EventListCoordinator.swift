//
//  EventListCoordinator.swift
//  Event-App
//
//  Created by Burak AKCAN on 18.10.2022.
//

import UIKit

final class EventListCoordinator: Coordinator {
   private(set) var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let eventListVC: EventListVC = .instantiate()
        let eventListViewModel = EventListviewModel()
        eventListViewModel.coordinator = self
        eventListVC.viewModel = eventListViewModel
        navigationController.setViewControllers([eventListVC], animated: false)
    }
    
    func startAddEvent() {
        let addEventCoordinator = AddEventCoordinator(navigationController: navigationController)
        childCoordinators.append(addEventCoordinator)
        addEventCoordinator.parentcoordinator = self
        addEventCoordinator.start()
    }
    
    func childDidFinish(_ childCoordinator: Coordinator) {
        if let index = childCoordinators.firstIndex(where: { coordinator in
            return childCoordinator === coordinator
        }){
            childCoordinators.remove(at: index)
        }
    }
    
}
