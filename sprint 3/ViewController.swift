//
//  ViewController.swift
//  sprint 3
//
//  Created by Мячин Даниил on 28.07.2023.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    let counterLabel = UILabel()
    let button = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Настройка лейбла
        counterLabel.frame = CGRect(x: 50, y: 100, width: 200, height: 30)
        counterLabel.text = "Значение счётчика: \(counter)"
        view.addSubview(counterLabel)

        // Настройка кнопки
        button.frame = CGRect(x: 50, y: 150, width: 200, height: 50)
        button.setTitle("Нажми меня", for: .normal)
        button.addTarget(self, action: #selector(incrementCounter), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc func incrementCounter() {
        counter += 1
        counterLabel.text = "Значение счётчика: \(counter)"
    }
}

