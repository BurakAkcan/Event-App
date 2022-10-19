//
//  AddEventViewModel.swift
//  Event-App
//
//  Created by Burak AKCAN on 18.10.2022.
//

import Foundation

final class AddEventViewModel {
    var coordinator: AddEventCoordinator?
    func viewDidDisAppear() {
        coordinator?.didFinishAddEvent()
    }
    
    deinit {
        print("addView model deinit")
    }
}
