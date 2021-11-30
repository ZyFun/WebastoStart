//
//  MainViewController.swift
//  WebastoStart
//
//  Created by Дмитрий Данилин on 16.11.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet weak var heatingStartSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var carNameButton: UIButton!
    @IBOutlet weak var htmButton: UIButton!
    @IBOutlet weak var accountBalanceButton: UIButton!
    @IBOutlet weak var weatherButton: UIButton!
    @IBOutlet weak var weatherForecastButton: UIButton!
    @IBOutlet weak var requestStatusButton: UIButton!
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }


}

// MARK: - Настройка интерфейса
private extension MainViewController {
    /// Инициализация параметров экрана
    func setup() {
        setupButtons()
        setupSegmentedControl()
    }
    
    /// Настройка заголовков и их размеров для кнопок
    func setupButtons() {
        let titleSize: CGFloat = 15
        
        buttonSettings(carNameButton, for: "Название", set: titleSize)
        buttonSettings(htmButton, for: "30 HTM", set: titleSize)
        buttonSettings(accountBalanceButton, for: "0.0 ₽", set: titleSize)
        buttonSettings(weatherButton, for: "Москва: -1°С", set: titleSize)
        buttonSettings(weatherForecastButton, for: "Ср 08:15: -2°C", set: titleSize)
        buttonSettings(requestStatusButton, for: "Запросить сейчас", set: titleSize)
    }
    
    // TODO: Возможно неосознанно создал паттерн проектирования фабрика или строитель, почитать подробнее
    /// (название паттерна) для конфигурации кнопок
    /// - Parameters:
    ///   - button: принимает UIButton
    ///   - title: принимает название кнопки
    ///   - titleSize: устанавливает размер шрифта названия
    func buttonSettings(_ button: UIButton, for title: String, set titleSize: CGFloat) {
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: titleSize)
    }
    
    /// Настройка заголовков секций и выбранной секции по умолчанию
    func setupSegmentedControl() {
        heatingStartSegmentedControl.selectedSegmentIndex = 1
        heatingStartSegmentedControl.setTitle("Вкл", forSegmentAt: 0)
        heatingStartSegmentedControl.setTitle("Выкл", forSegmentAt: 1)
    }
}
