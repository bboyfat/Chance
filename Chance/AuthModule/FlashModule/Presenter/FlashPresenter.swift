//
//  FlashPresenter.swift
//  Chance
//
//  Created by Andrey Petrovskiy on 25.11.2020.
//

import Foundation

protocol Presenter {
    init(_ router: Router?, output: StatableView?)
}

protocol FlashPresenterProtocol: Presenter {
    func signUp()
}

class FlashPresenter: FlashPresenterProtocol {
    private var router: AuthRouter?
    private var output: StatableView?
    
    func signUp() {
        router?.push(vc: .auth(.signUp))
        output?.updateState(s: .loading)
    }
    
    required init(_ router: Router?, output: StatableView?) {
        self.router = router as? AuthRouter
        self.output = output
    }
}
