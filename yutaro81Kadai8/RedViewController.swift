//
//  RedViewController.swift
//  yutaro81Kadai8
//
//  Created by 雄太郎 on 2021/10/31.
//

import UIKit

class RedViewController: UIViewController {
    @IBOutlet private weak var redLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!
    @IBAction private func changeValueSlider(_ sender: Any) {
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            delegate.num1 = slider.value
            self.redLabel.text = "\(delegate.num1)" }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            slider.value = delegate.num1
            self.redLabel.text = "\(delegate.num1)" }
    }
}
