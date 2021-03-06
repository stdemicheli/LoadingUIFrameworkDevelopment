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
    var imageView: UIImageView!
    private var frame: CGRect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frame = CGRect(x: view.frame.midX - 100,
               y: view.frame.midY - 100,
               width: 200,
               height: 200)
        
        loadingVC = LoadingViewController(frame: frame)
        setupLoadingView()
        loadingVC.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.loadingVC.stopAnimating()
            self.loadingVC.view.removeFromSuperview()
            self.setupImageView()
            //self.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    private func setupLoadingView() {
        view.addSubview(loadingVC.view)
    }
    
    private func setupImageView() {
        frame = CGRect(x: 0,
                       y: 0,
                       width: view.frame.width,
                       height: view.frame.height)
        imageView = UIImageView(frame: frame)
        view.addSubview(imageView)
        imageView.image = UIImage(named: "zombie")
    }
    
}
