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
        default:
            return UIViewController()
        }
    }
    
    
    private func registration(_ router: Router?) -> UIViewController {
        let vc = RegistrationController()
        return vc
    }
}
