//
//  ViewController1.swift
//  AppNo1
//
//  Created by Bhushan Bapat on 10/08/18.
//  Copyright © 2018 Bhushan Bapat. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    let tableView : UITableView = {
        let tableView = UITableView()
        tableView.contentMode = .scaleAspectFill
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    let textView: UITextView = {
       let textView = UITextView()
        textView.text = "Hello World"
        textView.font = UIFont.boldSystemFont(ofSize: 30)
        textView.contentMode = .scaleAspectFill
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
        
    }()
    
    let leftView : UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let rightView : UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let slider : UISlider = {
        let slider = UISlider()
        slider.backgroundColor = .cyan
        slider.contentMode = .scaleAspectFill
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.setValue(0.5, animated: true)
        slider.addTarget(self, action: #selector(changeSize), for: .valueChanged)
        return slider
    }()
    var leftConst = NSLayoutConstraint()
    var rightConst = NSLayoutConstraint()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(goBack))
        
        view.backgroundColor = .white
        view.addSubview(leftView)
        view .addSubview(rightView)
        leftView.addSubview(tableView)
        rightView.addSubview(textView)
        
        tableView.topAnchor.constraint(equalTo: leftView.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: leftView.leftAnchor).isActive = true
        tableView.widthAnchor.constraint(equalTo: leftView.widthAnchor).isActive = true
        tableView.heightAnchor.constraint(equalTo: leftView.heightAnchor).isActive = true
        
        textView.topAnchor.constraint(equalTo: rightView.topAnchor).isActive = true
        textView.leftAnchor.constraint(equalTo: rightView.leftAnchor).isActive = true
        textView.widthAnchor.constraint(equalTo: rightView.widthAnchor).isActive = true
        textView.heightAnchor.constraint(equalTo: rightView.heightAnchor).isActive = true
        
        
        view.addSubview(slider)
        
        slider.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        slider.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        slider.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        
        leftView.topAnchor.constraint(equalTo: slider.bottomAnchor).isActive = true
        leftView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        leftView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        leftConst = leftView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2)
        leftConst.isActive = true;
        

        rightView.topAnchor.constraint(equalTo: slider.bottomAnchor).isActive = true
        rightView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        rightView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        rightConst = rightView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/2)
        rightConst.isActive = true
        
        
        // Do any additional setup after loading the view.
    }
    
    @objc func changeSize(_ sender: UISlider!){
        let x = slider.value
        let y = 1 - x
        leftConst.isActive = false
       // rightView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: CGFloat(y)).isActive = true
        leftConst = leftView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: CGFloat(x))
        leftConst.isActive = true
        
        rightConst.isActive = false
        rightConst = rightView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: CGFloat(y))
            rightConst.isActive = true
    }
    
    @objc func goBack(){
        let vc = ViewController()
        present(vc, animated: true, completion: nil)
    }

}
