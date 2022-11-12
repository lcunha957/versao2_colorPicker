//
//  ViewController.swift
//  Color/Users/u21106/Documents/GitHub_Lunara/XCode_originals/versao2_rgbColorPicker/versao2_colorPicker/ColorPicker/ColorPicker/ViewController.swiftPicker
//
//  Created by LUNARA MORENA CUNHA on 11/11/22.
//

import UIKit

class ViewController: UIViewController, UIColorPickerViewControllerDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(frame:CGRect(x:0, y:0, width: 200, height: 50))
        view.addSubview(button)
        button.backgroundColor = .systemGreen
        button.setTitle("Selecione a Cor", for: .normal)
        
        button.center = view.center
        button.addTarget(self, action: #selector(didTapSelectColor), for: .touchUpInside)
    }

    @objc private func didTapSelectColor(){
        let colorPickerVC = UIColorPickerViewController()
        colorPickerVC.delegate = self
        present(colorPickerVC, animated: true)
        
    }
    
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        let color = viewController.selectedColor
    }
    
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        let color = viewController.selectedColor
    }

    
}

