//
//  ViperAssembly.swift
//  VIPER
//
//  Created by Leonid Shchipkov on 21.03.2022.
//

import UIKit

class ViperAssembly: NSObject{
    @IBOutlet weak var viewController: UIViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        guard let view = viewController as? ViperViewController else { return }
        
        let presenter = Presenter()
        let interactor = Interactor()
        let router = Router()
        let dataMager = DataManagerImplementation()
        
        view.output = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.dataManager = dataMager
        interactor.output = presenter
        router.view = view
    }
}
