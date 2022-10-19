//
//  Coordinator.swift
//  Event-App
//
//  Created by Burak AKCAN on 18.10.2022.
//

//public private(set) => this mean is getter is public but setter is private
// private(set) => this mean is lower acces level its works like public getter and private setter

import UIKit


protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] {get}
    func start()
}

final class AppCoordinator: Coordinator {
   private(set) var childCoordinators: [Coordinator] = []
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        
        let eventListCoordinator = EventListCoordinator(navigationController: navigationController)
        childCoordinators.append(eventListCoordinator)
        
        eventListCoordinator.start()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    
}
