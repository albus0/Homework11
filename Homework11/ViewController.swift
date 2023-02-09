//
//  ViewController.swift
//  Homework11
//
//  Created by Альбина on 08.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    
    // MARK: - Outlets
    
    private lazy var imageView: UIImageView = {
            let image = UIImage(named: "backgroundImage")
            let imageView = UIImageView(image: image)
            imageView.contentMode = .scaleAspectFill
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.clipsToBounds = true
            imageView.layer.cornerRadius = 20
            return imageView
        }()
    
    private lazy var label: UILabel = {
           let label = UILabel()
           label.text = "Login"
           label.textAlignment = .center
           label.font = UIFont.boldSystemFont(ofSize: 30)
           label.textColor = .white
           label.translatesAutoresizingMaskIntoConstraints = false
           return label
       }()
    
    private lazy var textFieldForName: UITextField = {
           let textFieldForName = UITextField()
           textFieldForName.placeholder = "username"
           textFieldForName.borderStyle = .roundedRect
           textFieldForName.font = UIFont.systemFont(ofSize: 15)
           textFieldForName.clipsToBounds = true
           textFieldForName.layer.cornerRadius = 25.0
           textFieldForName.backgroundColor = .white
           textFieldForName.textColor = .black
           textFieldForName.setLeftIcon()
           textFieldForName.setRightIcon()
           textFieldForName.translatesAutoresizingMaskIntoConstraints = false
           return textFieldForName
       }()
       
       private lazy var textFieldForPassword: UITextField = {
           let textFieldForPassword = UITextField()
           textFieldForPassword.placeholder = "password"
           textFieldForPassword.borderStyle = .roundedRect
           textFieldForPassword.font = UIFont.systemFont(ofSize: 15)
           textFieldForPassword.clipsToBounds = true
           textFieldForPassword.layer.cornerRadius = 25.0
           textFieldForPassword.backgroundColor = .white
           textFieldForPassword.textColor = .black
           textFieldForPassword.setSecondLeftIcon()
           textFieldForPassword.translatesAutoresizingMaskIntoConstraints = false
           return textFieldForPassword
       }()
       
       private lazy var button: UIButton = {
           let button = UIButton(type: .roundedRect)
           button.backgroundColor = .systemIndigo
           button.setTitle("Login", for: .normal)
           button.setTitleColor(UIColor.white, for: .normal)
           button.layer.cornerRadius = 25.0
           button.layer.shadowColor = UIColor.blue.cgColor
           button.layer.shadowOpacity = 0.3
           button.layer.shadowOffset = .zero
           button.layer.shadowRadius = 10
           button.layer.shouldRasterize = true
           button.layer.rasterizationScale = UIScreen.main.scale
           button.translatesAutoresizingMaskIntoConstraints = false
           return button
       }()
       
       private lazy var secondButton: UIButton = {
           let secondButton = UIButton(type: .system)
           secondButton.backgroundColor = .clear
           secondButton.setTitle("Forgot your password?", for: .normal)
           secondButton.setTitleColor(UIColor.black, for: .normal)
           secondButton.translatesAutoresizingMaskIntoConstraints = false
           return secondButton
       }()
       
       let separatorView: UIView = {
           let view = UIView()
           view.backgroundColor = .black
           view.translatesAutoresizingMaskIntoConstraints = false
           return view
       }()
       
       private lazy var secondLabel: UILabel = {
           let label = UILabel()
           label.text = "or connect with"
           label.textAlignment = .center
           label.font = UIFont.boldSystemFont(ofSize: 11)
           label.textColor = .black
           label.translatesAutoresizingMaskIntoConstraints = false
           return label
       }()
       
       let separatorSecondView: UIView = {
           let view = UIView()
           view.backgroundColor = .black
           view.translatesAutoresizingMaskIntoConstraints = false
           return view
       }()
       
       private lazy var stack: UIStackView = {
           let stackView = UIStackView()
           stackView.axis = .horizontal
           stackView.distribution = .fill
           stackView.alignment = .center
           stackView.spacing = 5
           stackView.translatesAutoresizingMaskIntoConstraints = false
           return stackView
       }()
       
       private lazy var buttonFacebook: UIButton = {
           let button = UIButton(type: .roundedRect)
           button.backgroundColor = .systemBlue
           button.setTitle("Facebook", for: .normal)
           button.setTitleColor(UIColor.white, for: .normal)
           button.layer.cornerRadius = 20.0
           button.layer.shadowColor = UIColor.blue.cgColor
           button.layer.shadowOpacity = 0.3
           button.layer.shadowOffset = .zero
           button.layer.shadowRadius = 10
           button.layer.shouldRasterize = true
           button.layer.rasterizationScale = UIScreen.main.scale
           button.translatesAutoresizingMaskIntoConstraints = false
           return button
       }()
       
       private lazy var buttonTwitter: UIButton = {
           let button = UIButton(type: .roundedRect)
           button.backgroundColor = .systemIndigo
           button.setTitle("Twitter", for: .normal)
           button.setTitleColor(UIColor.white, for: .normal)
           button.layer.cornerRadius = 20.0
           button.layer.shadowColor = UIColor.blue.cgColor
           button.layer.shadowOpacity = 0.3
           button.layer.shadowOffset = .zero
           button.layer.shadowRadius = 10
           button.layer.shouldRasterize = true
           button.layer.rasterizationScale = UIScreen.main.scale
           button.translatesAutoresizingMaskIntoConstraints = false
           return button
       }()
       
       private lazy var lowerLabel: UILabel = {
           let label = UILabel()
           label.text = "Dont have account?"
           label.textAlignment = .center
           label.font = UIFont.boldSystemFont(ofSize: 13)
           label.textColor = .black
           label.translatesAutoresizingMaskIntoConstraints = false
           return label
       }()
       
       private lazy var lowerButton: UIButton = {
           let button = UIButton(type: .system)
           button.backgroundColor = .clear
           button.setTitle("Sign up", for: .normal)
           button.setTitleColor(UIColor.systemIndigo, for: .normal)
           button.translatesAutoresizingMaskIntoConstraints = false
           return button
       }()

    
    //MARK: -Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
       
       private func setupHierarchy() {
           view.addSubview(imageView)
           view.addSubview(label)
           view.addSubview(textFieldForName)
           view.addSubview(textFieldForPassword)
           view.addSubview(button)
           view.addSubview(secondButton)
           view.addSubview(stack)
           stack.addArrangedSubview(separatorView)
           stack.addArrangedSubview(secondLabel)
           stack.addArrangedSubview(separatorSecondView)
           view.addSubview(buttonFacebook)
           view.addSubview(buttonTwitter)
           view.addSubview(lowerLabel)
           view.addSubview(lowerButton)
       }

       private func setupLayout() {
           imageView.snp.makeConstraints { make in
               make.center.equalTo(view)
               make.left.equalTo(view)
               make.right.equalTo(view)
               
           }
           
           label.snp.makeConstraints { make in
               make.centerX.equalTo(view)
               make.height.equalTo(240)
           }
           
           textFieldForName.snp.makeConstraints { make in
               make.centerX.equalTo(view)
               make.height.equalTo(50)
               make.left.equalTo(view).offset(50)
               make.right.equalTo(view).offset(-50)
               make.top.equalTo(label.snp.bottom).offset(-50)
           }
           
           textFieldForPassword.snp.makeConstraints { make in
               make.centerX.equalTo(view)
               make.height.equalTo(50)
               make.left.equalTo(view).offset(50)
               make.right.equalTo(view).offset(-50)
               make.top.equalTo(textFieldForName.snp.bottom).offset(20)
           }
           
           button.snp.makeConstraints { make in
               make.centerX.equalTo(view)
               make.height.equalTo(50)
               make.left.equalTo(view).offset(50)
               make.right.equalTo(view).offset(-50)
               make.top.equalTo(textFieldForPassword.snp.bottom).offset(60)
           }
           
           secondButton.snp.makeConstraints { make in
               make.centerX.equalTo(view)
               make.height.equalTo(30)
               make.left.equalTo(50)
               make.right.equalTo(-50)
               make.top.equalTo(button.snp.bottom).offset(10)
           }
           
           separatorView.snp.makeConstraints { make in
               make.centerX.equalTo(view)
               make.left.equalTo(view).offset(30)
               make.right.equalTo(view).offset(-270)
               make.height.equalTo(1)
           }
           
           separatorSecondView.snp.makeConstraints { make in
               make.centerX.equalTo(view)
               make.left.equalTo(view).offset(270)
               make.right.equalTo(view).offset(-30)
               make.height.equalTo(1)
           }
           
           stack.snp.makeConstraints { make in
               make.centerX.equalTo(view)
               make.top.equalTo(secondButton.snp.bottom).offset(100)
               make.left.equalTo(view).offset(20)
               make.right.equalTo(view).offset(20)
           }
           
           buttonFacebook.snp.makeConstraints { make in
               make.centerX.equalTo(view)
               make.left.equalTo(view).offset(15)
               make.right.equalTo(view).offset(-220)
               make.height.equalTo(40)
               make.top.equalTo(stack.snp.bottom).offset(35)
           }

           buttonTwitter.snp.makeConstraints { make in
               make.centerX.equalTo(view)
               make.left.equalTo(view).offset(220)
               make.right.equalTo(view).offset(-15)
               make.height.equalTo(40)
               make.top.equalTo(stack.snp.bottom).offset(35)
           }
           
           lowerLabel.snp.makeConstraints { make in
               make.centerX.equalTo(view)
               make.left.equalTo(view).offset(50)
               make.right.equalTo(view).offset(-180)
               make.height.equalTo(20)
               make.top.equalTo(buttonTwitter.snp.bottom).offset(30)
           }
           
           lowerButton.snp.makeConstraints { make in
               make.centerX.equalTo(view)
               make.left.equalTo(view).offset(-55)
               make.right.equalTo(view).offset(190)
               make.height.equalTo(15)
               make.top.equalTo(buttonTwitter.snp.bottom).offset(32)
           }
       }
}

