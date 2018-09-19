//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by De MicheliStefano on 19.09.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import UIKit

public class LoadingViewController: UIViewController {

    // MARK: - Properties
    
    public let frame: CGRect!
    
    private let indeterminateLoadingView: IndeterminateLoadingView!
    
    // MARK: - Init
    
    public init(frame: CGRect?) {
        self.frame = frame ?? CGRect.zero
        self.indeterminateLoadingView = IndeterminateLoadingView(frame: self.frame)
        super.init(nibName: nil, bundle: nil)
        
        self.setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private
    
    public func startAnimating() {
        indeterminateLoadingView.startAnimating()
    }
    
    public func stopAnimating() {
        indeterminateLoadingView.stopAnimating()
    }
    
    // MARK: - Private
    
    private func setupView() {
        view.addSubview(indeterminateLoadingView)
    }

}
