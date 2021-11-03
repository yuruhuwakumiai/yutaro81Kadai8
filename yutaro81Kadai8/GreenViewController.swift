//
//  GreenViewController.swift
//  yutaro81Kadai8
//
//  Created by 雄太郎 on 2021/10/31.
//

import UIKit

class GreenViewController: UIViewController {
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!

    @IBAction private func changeValueSlider(_ sender: Any) {
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            delegate.num1 = slider.value
            label.text = "\(delegate.num1)"
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            slider.value = delegate.num1
            label.text = "\(delegate.num1)"

        }
    }
}
