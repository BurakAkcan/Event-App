//
//  EventListVC.swift
//  Event-App
//
//  Created by Burak AKCAN on 18.10.2022.
//

import UIKit
import CoreData

class EventListVC: UIViewController {
    
    
    
    static func instantiate()-> EventListVC {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(withIdentifier: "EventListVC") as! EventListVC
        return controller
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        
    }
    
    private func setUpView() {
        let image = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: #selector(addButtonClick))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = "Events"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension EventListVC {
    @objc private func addButtonClick() {
        print("tapped bar button")
    }
}
