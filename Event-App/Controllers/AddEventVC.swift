//
//  AddEventVC.swift
//  Event-App
//
//  Created by Burak AKCAN on 18.10.2022.
//

import UIKit

class AddEventVC: UIViewController {
    
    var addEventViewModel: AddEventViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEventViewModel.viewDidDisAppear()
    }

    deinit {
        print("add viewController deinit")
    }
    

}
