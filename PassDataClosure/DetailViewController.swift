//
//  InputVC.swift
//  PassDataClosure
//
//  Created by LuyenBG on 1/29/18.
//  Copyright © 2018 LuyenBG. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var inputTextField: UITextField!
    
    
    var onCompletion: ((_ data: String) -> ())?
    var recieveData: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let data = recieveData {
            inputTextField.text = data
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
        guard let sendData = inputTextField.text  else { return}
        onCompletion?(sendData)
        navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
