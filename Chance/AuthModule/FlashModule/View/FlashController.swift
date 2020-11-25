//
//  FlashController.swift
//  Chance
//
//  Created by Andrey Petrovskiy on 25.11.2020.
//

import UIKit


final class FlashController: BaseViewController {
    
    private var presenter: FlashPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    public func setPresenter(_ presenter: Presenter?) {
        self.presenter = presenter as? FlashPresenterProtocol
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    @IBAction func signUpBtnAction(_ sender: Any) {
        presenter?.signUp()
    }
    
    
    
}
