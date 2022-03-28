//
//  Interactor.swift
//  VIPER
//
//  Created by Leonid Shchipkov on 21.03.2022.
//

import Foundation

class Interactor: InteractorInput{
    
    weak var output: InteractorOutput!
    var dataManager: DataManager!
    
    func obtainFormattedString(){
        let numbers = dataManager.obtainNumbers()
        let numbersString = numbers.map({"\($0)"}).joined(separator: ",")
        output.didFinishObtainFormattedString(numbersString)
    }
}
