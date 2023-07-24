//
//  ViewController.swift
//  ProjetoSimples
//
//  Created by Afonso Lucas on 29/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var screen: View!
    private var model: Model!
    
    private var data: String

    init() {
        self.model = Model()
        self.data = model.getData()
        super.init(nibName: nil, bundle: nil)
        self.model.delegate = self
    }
    
    override func loadView() {
        super.loadView()
        self.screen = View(frame: self.view.bounds)
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        screen.button.addTarget(nil,
                                action: #selector(updateText),
                                for: .touchUpInside)
        
        screen.field.addTarget(nil,
                               action: #selector(textFieldDidchange),
                               for: .editingChanged)
    }
    
    private func setupData() {
        screen.label.text = data
    }
    
    @objc
    private func updateText(_ button: UIButton) {
        screen.field.resignFirstResponder()
        model.changeDatabaseText(text: data)
    }
    
    @objc
    func textFieldDidchange(_ textField: UITextField) {
        guard let text = textField.text else { return }
        data = text.capitalized
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ViewController: ModelDelegate {
    
    func didChangeData(data: String) {
        screen.label.text = data
    }
}
