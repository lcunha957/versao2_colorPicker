//
//  ViewController.swift
//  Color/Users/u21106/Documents/GitHub_Lunara/XCode_originals/versao2_rgbColorPicker/versao2_colorPicker/ColorPicker/ColorPicker/ViewController.swiftPicker
//
//  Created by LUNARA MORENA CUNHA on 11/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackground(_ sender: Any) {
        // Initializing Color Picker
        let picker = UIColorPickerViewController()

        // Setting the Initial Color of the Picker
        picker.selectedColor = self.view.backgroundColor!

        // Setting Delegate
        picker.delegate = self

        // Presenting the Color Picker
        self.present(picker, animated: true, completion: nil)
    }
    
    extension ViewController: UIColorPickerViewControllerDelegate {
        
        //  Called once you have finished picking the color.
        func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
            self.view.backgroundColor = viewController.selectedColor
            
        }
        
        //  Called on every color selection done in the picker.
        func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
                self.view.backgroundColor = viewController.selectedColor
        }
        
    }

}

