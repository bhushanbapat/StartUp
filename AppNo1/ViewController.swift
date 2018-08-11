//
//  ViewController.swift
//  AppNo1
//
//  Created by Bhushan Bapat on 09/08/18.
//  Copyright © 2018 Bhushan Bapat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let uname1 : UITextField = {
        let uname = UITextField()
        uname.widthAnchor.constraint(equalToConstant: 300).isActive = true
        uname.heightAnchor.constraint(equalToConstant: 40).isActive = true
        uname.backgroundColor = .white
        uname.placeholder = "Username"
        uname.borderStyle = UITextBorderStyle.bezel
        return uname
        }()
    let pass : UITextField = {
        let pass = UITextField()
        pass.widthAnchor.constraint(equalToConstant: 300).isActive = true
        pass.heightAnchor.constraint(equalToConstant: 40).isActive = true
        pass.backgroundColor = .white
        pass.placeholder = "Password"
        pass.isSecureTextEntry = true
        pass.borderStyle = UITextBorderStyle.bezel
        return pass
        }()
    
    let submit : UIButton = {
        let submit = UIButton()
        submit.backgroundColor = .white
        submit.setTitle("Submit", for: UIControlState.normal)
        submit.setTitleColor(.black, for: UIControlState.normal)
        submit.backgroundColor = .red
        submit.addTarget(self, action: #selector(changeColor), for: UIControlEvents.touchUpInside)
        return submit
        }()
    
    let inputContainerView : UIView = {
        let iC = UIView()
        iC.backgroundColor = .white
        iC.translatesAutoresizingMaskIntoConstraints = false
        iC.layer.cornerRadius = 10
        iC.layer.masksToBounds = true
        return iC
    }()
    
    let back : UIImageView = {
        let b = UIImageView()
        b.image = UIImage(named: "back")
        b.contentMode = .scaleAspectFill
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    @objc func changeColor(sender : UIButton!){
        //let newViewController = NavViewController()
        present(UINavigationController(rootViewController: ViewController1()), animated: true, completion: nil)
        
//        back.image = UIImage(named: "background1")
//        back.contentMode = .scaleAspectFill
//        back.translatesAutoresizingMaskIntoConstraints = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(back)
        view.addSubview(inputContainerView)
        back.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        back.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -30).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        
        let stackView = UIStackView(arrangedSubviews: [uname1, pass, submit])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.translatesAutoresizingMaskIntoConstraints = false
        inputContainerView.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo : inputContainerView.topAnchor).isActive=true
        stackView.centerXAnchor.constraint(equalTo: inputContainerView.centerXAnchor).isActive = true
        
        uname1.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        uname1.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        pass.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        pass.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        
        
        submit.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        submit.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

