//
//  UserInfoPresenter.swift
//  Chance
//
//  Created by Ваге Базикян on 26.11.2020.
//

import Foundation
    
protocol UserPresenterProtocol: Presenter {
    func back()
}
    
class UserPresenter: UserPresenterProtocol {
    private var router: AuthRouter?
    private var output: StatableView?
    
    func back() {
        router?.pop()
    }

    required init(_ router: Router?, output: StatableView?) {
        self.router = router as? AuthRouter
        self.output = output
    }
}
