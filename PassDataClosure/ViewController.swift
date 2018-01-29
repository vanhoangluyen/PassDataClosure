//
//  ViewController.swift
//  PassDataClosure
//
//  Created by LuyenBG on 1/29/18.
//  Copyright © 2018 LuyenBG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? InputVC else { return  }
        destination.onCompletion = { [weak self] (data) in
            self?.labelText.text = data
        }
    }

}

