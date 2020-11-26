//
//  RegisterPresenter.swift
//  Chance
//
//  Created by Ваге Базикян on 25.11.2020.
//

import Foundation

protocol RegistrationPresenterProtocol: Presenter {
    func nextUser()
    func back()
}

class RegistrationPresenter: RegistrationPresenterProtocol {
    private var router: AuthRouter?
    private var output:  StatableView?
    
    func nextUser() {
        router?.push(vc: .auth(.nextUser))
    }
    
    func back() {
        router?.pop()
    }
    
    required init(_ router: Router?, output: StatableView?) {
        self.router = router as? AuthRouter
        self.output = output
    }
}
