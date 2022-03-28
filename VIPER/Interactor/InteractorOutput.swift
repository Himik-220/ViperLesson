//
//  InteractorOutput.swift
//  VIPER
//
//  Created by Leonid Shchipkov on 21.03.2022.
//

import Foundation

protocol InteractorOutput: AnyObject{
    func didFinishObtainFormattedString(_ string: String)
}
