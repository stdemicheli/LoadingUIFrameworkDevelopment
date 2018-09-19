//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by De MicheliStefano on 19.09.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import UIKit
import LoadingUI

class LoadingVC: UIViewController {

    var loadingVC: LoadingViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingVC = LoadingViewController(frame: CGRect(x: view.frame.midX - 100,
                                                        y: view.frame.midY - 100,
                                                        width: 200,
                                                        height: 200))
        setupLoadingView()
        loadingVC.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.loadingVC.stopAnimating()
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setupLoadingView() {
        view.addSubview(loadingVC.view)
    }
    
}
