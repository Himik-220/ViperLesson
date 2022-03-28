//
//  ViperPresenter.swift
//  VIPER
//
//  Created by Leonid Shchipkov on 21.03.2022.
//

import Foundation

class Presenter: ViperViewOutput, InteractorOutput {
    
    weak var view: ViperViewInput!
    var interactor: InteractorInput!
    var router: RouterInput!
    
    
    func didPressedAction() {
        interactor.obtainFormattedString()
    }
    
    func didFinishObtainFormattedString(_ string: String) {
        view.showFormattedString(string)
        router.showOkAlert()
    }
}
