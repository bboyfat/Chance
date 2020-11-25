//
//  BaseController.swift
//  Chance
//
//  Created by Andrey Petrovskiy on 25.11.2020.
//

import UIKit

class M <T> {
    var value: T
    init(v: T) {
        self.value = v
    }
}

enum ViewState {
    typealias T = M
    case loading
    case didLoad
    case succsess(T<Any>?)
    case failure(String?)
}

protocol  StatableView {
    func updateState(s: ViewState)
}

class BaseViewController: UIViewController, StatableView {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.config()
    }
    
    func configWithSpecials<T>(configs: T?) {
        self.view.config(configs: configs)
    }
    
    func updateState(s: ViewState) {
        
    }
}

