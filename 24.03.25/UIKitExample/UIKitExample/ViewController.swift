//
//  ViewController.swift
//  UIKitExample
//
//  Created by Yeonju on 3/24/24.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Button 선언
    var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Hello UIKit!", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .preferredFont(forTextStyle: .largeTitle)
        button.backgroundColor = .orange
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Button Action 할당
        button.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        
        // MARK: - 화면 내에 Button 추가
        self.view.addSubview(button)
        
        // MARK: - Button Layout 설정
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    // MARK: - Button Action func 구현
    @objc func buttonAction(_ sender: UIButton) {
        print("Clicked UIKit Button!")
    }

}

#Preview {
    ViewController()
}
