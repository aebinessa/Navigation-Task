//
//  ViewController.swift
//  NavigationTask
//
//  Created by Abdullah Bin Essa on 3/3/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let showDetailsButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "First View"
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        navigationController?.navigationBar.scrollEdgeAppearance = appearance

        setupViews()
        setupUI()
        setupConstraints()
        
        showDetailsButton.addTarget(self, action: #selector(showDetailsButtonTapped), for: .touchUpInside)
    }
    
    @objc func showDetailsButtonTapped() {
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .fullScreen // Present full screen
        self.navigationController?.pushViewController(secondVC, animated: true)           }
    
    
    func setupViews(){
        view.addSubview(showDetailsButton)
        view.backgroundColor = .white
    }
    func setupUI(){
        showDetailsButton.setTitle("Show Details", for: .normal)
        showDetailsButton.setTitleColor(.white, for: .normal)
        showDetailsButton.backgroundColor = UIColor.blue
        showDetailsButton.layer.cornerRadius = 8
        
        
    }
    func setupConstraints(){
        showDetailsButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(100)
        }
        
    }
    
}






