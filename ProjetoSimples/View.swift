//
//  View.swift
//  ProjetoSimples
//
//  Created by Afonso Lucas on 29/05/23.
//

import UIKit

class View: UIView {
    
    lazy var label: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        label.textColor = .black
        label.textAlignment = .left
        label.numberOfLines = -1
        label.text = "fasdnfjkadshjfdjn fsad jmlkjams fj lksdf jsaj fjasdkjlfjsakl"
        return label
    }()
    
    lazy var button: UIButton = {
        let btn = UIButton()
        btn.setTitle("Press Me", for: .normal)
        btn.backgroundColor = .systemBlue
        return btn
    }()
    
    lazy var field: UITextField = {
        let field = UITextField()
        field.placeholder = "Enter text here"
        field.font = UIFont.systemFont(ofSize: 15)
        field.borderStyle = UITextField.BorderStyle.roundedRect
        field.autocorrectionType = UITextAutocorrectionType.no
        field.keyboardType = UIKeyboardType.default
        field.returnKeyType = UIReturnKeyType.done
        field.clearButtonMode = UITextField.ViewMode.whileEditing
        field.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        return field
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemGray
        
        addSubview(field)
        addSubview(label)
        addSubview(button)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        field.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            field.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            field.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            field.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            field.heightAnchor.constraint(equalToConstant: 60),
            
            button.topAnchor.constraint(equalTo: field.bottomAnchor, constant: 36),
            button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            button.heightAnchor.constraint(equalToConstant: 46),
            
            label.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 64),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            label.heightAnchor.constraint(equalToConstant: 128)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
