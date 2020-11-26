//
//  AccountViewController.swift
//  Chance
//
//  Created by Ваге Базикян on 24.11.2020.
//

import UIKit

final class RegistrationController: BaseViewController {
    
    private var presenter: RegistrationPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    public func setPresenter(_ presenter: Presenter?){
        self.presenter = presenter as? RegistrationPresenterProtocol
    }
    
    @IBAction func nextBtnAction(_ sender: UIButton) {
        presenter?.nextUser()
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        presenter?.back()
    }
    
}
