//
//  ViewController.swift
//  Silly Song
//
//  Created by IT Spare on 19/02/2019.
//  Copyright © 2019 thdespou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricsView: UITextView!
    
    @IBAction func reset(_ sender: UITextField) {
        nameField.text = ""
        lyricsView.text = ""
    }
    @IBAction func displayLyrics(_ sender: UITextField) {
        lyricsView.text = (sender.text ?? "") + " Song"
    }

}


// MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
}

