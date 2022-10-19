//
//  AddEventCoordinator.swift
//  Event-App
//
//  Created by Burak AKCAN on 18.10.2022.
//

import Foundation
import UIKit

final class AddEventCoordinator: Coordinator {
    
   private let navigationController: UINavigationController!
    var parentcoordinator: EventListCoordinator?
    
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    
   private(set) var childCoordinators: [Coordinator] = []
    
    func start() {
        let addEventViewController: AddEventVC = .instantiate()
        let addEventViewModel = AddEventViewModel()
        addEventViewModel.coordinator = self
        addEventViewController.addEventViewModel = addEventViewModel
        navigationController.present(addEventViewController, animated: true)
    }
    
    func didFinishAddEvent() {
        parentcoordinator?.childDidFinish(self)
    }
    
    deinit {
        print("deinitiazition completed")
    }
    
    
}
