//
//  Router.swift
//  Chance
//
//  Created by Andrey Petrovskiy on 25.11.2020.
//

import UIKit

protocol Router {
    init (_ nav: UINavigationController?, assembly: Assembly?)
}

protocol AuthRouterProtocol: Router {
    func push(vc: C)
    func pop()
    func popToRoot()
}

class AuthRouter: AuthRouterProtocol {
    private var nav: UINavigationController?
    private var assembly: Assembly?
    
    func push(vc: C) {
        if let nav = nav {
            guard let c = assembly?.build(vc: vc, self) else {return}
            nav.pushViewController(c, animated: true)
        }
    }
    
    func pop() {
        if let nav = nav {
            nav.popViewController(animated: true)
        }
    }
    
    func popToRoot() {
        if let nav = nav {
            nav.popToRootViewController(animated: true)
        }
    }
    
    required init(_ nav: UINavigationController?, assembly: Assembly?) {
        self.nav = nav
        self.assembly = assembly
    }
    
    
}
