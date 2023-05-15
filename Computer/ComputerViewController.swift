//
//  ComputerViewController.swift
//  Computer
//
//  Created by 葉育彣 on 2023/5/14.
//

import UIKit

class ComputerViewController: UIViewController {

    @IBOutlet private weak var totalLabel: UILabel!
    private var viewModel: ComputerViewModel = ComputerViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func removeComputerHandler(_ sender: UIButton) {
        totalLabel.text = "0"
    }
    
    @IBAction func clickNumericKeyBoard(_ sender: UIButton) {
        viewModel.addComputerNumber(sender)
        totalLabel.text = viewModel.resultNum
        if sender.tag == 10 {
            totalLabel.text! += "."
        }else{
            totalLabel.text! += sender.tag.description
        }
        if totalLabel.text == "0" {
            totalLabel.text = ""
        }
    }
    
}
