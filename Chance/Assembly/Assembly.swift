//
//  Assembly.swift
//  Chance
//
//  Created by Andrey Petrovskiy on 25.11.2020.
//

import UIKit

enum C {
    case auth(C.AuthModule)
}

extension C {
    enum AuthModule {
        case flash
        case signIn
        case signUp
        case nextUser
    }
}

protocol Assembly {
    func build(vc: C, _ router: Router?) -> UIViewController
}

class AuthAssembly: Assembly {
    
    func build(vc: C, _ router: Router?) -> UIViewController {
        switch vc {
        case .auth(let authVcs):
            return subBuild(auth: authVcs, router)
        }
    }
    
    private func subBuild(auth: C.AuthModule, _ router: Router?) -> UIViewController {
        switch auth {
        case .signUp:
            return registration(router)
        case .signIn:
            return registration(router)
        case .flash:
            return flash(router)
        case .nextUser:
            return user(router)
        default:
            return UIViewController()
        }
    }
    
  

    private func flash(_ router: Router?) -> UIViewController {
        let vc = FlashController()
        let presenter = FlashPresenter(router, output: vc)
        vc.setPresenter(presenter)
        return vc
    }
    
    private func registration(_ router: Router?) -> UIViewController {
        let vc = RegistrationController()
        let presenter = RegistrationPresenter(router, output: vc)
        vc.setPresenter(presenter)
        return vc
    }
    private func user(_ router : Router?) -> UIViewController{
        let vc = UserInfoController()
        let presenter = UserPresenter(router, output: vc)
        vc.setPresenter(presenter)
        return vc
    }
}
