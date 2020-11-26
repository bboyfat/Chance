//
//  InformationViewController.swift
//  Chance
//
//  Created by Ваге Базикян on 24.11.2020.
//

import UIKit

final class UserInfoController: BaseViewController {
    
    private var presenter: UserPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    public func setPresenter(_ presenter: Presenter?) {
        self.presenter = presenter as? UserPresenterProtocol
    }
    
   
    @IBAction func backAction(_ sender: UIButton) {
        presenter?.back()
    }
    
}
