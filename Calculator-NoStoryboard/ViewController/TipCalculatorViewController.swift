//
//  TipCalculatorViewController.swift
//  Calculator-NoStoryboard
//
//  Created by Ian Richins on 5/19/20.
//  Copyright © 2020 Ian Richins. All rights reserved.
//

import UIKit

class TipCalculatorViewController: UIViewController {
    
    var safeArea: UILayoutGuide {
        return self.view.safeAreaLayoutGuide
    }
    
    override func loadView() {
        super.loadView()
        addAllSubviews()
        setupMainStackView()
        setupTipPercentageStackView()
        setupBillAmountStackView()
        resetButtonStackView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .mintGreen
    }
    
    // MARK: Helper function
    func addAllSubviews() {
   
        view.addSubview(billAmountLabel)
        view.addSubview(billAmountTextField)
        view.addSubview(billAmountStackView)
        view.addSubview(tipPercentageLabel)
        view.addSubview(tipPercentSegmentedController)
        view.addSubview(tipPerecentageStackView)
        view.addSubview(calclatedTipAmountLabel)
        view.addSubview(calculatedBilltotalAmountLabel)
        view.addSubview(computedTipStackView)
        view.addSubview(resetButton)
        view.addSubview(resetStackView)
    }
    
    func setupMainStackView() {
        billAmountStackView.addArrangedSubview(billAmountLabel)
        billAmountStackView.addArrangedSubview(billAmountTextField)
        billAmountStackView.topAnchor.constraint(equalTo: self.safeArea.topAnchor, constant: 40).isActive = true
        billAmountStackView.leadingAnchor.constraint(equalTo: self.safeArea.leadingAnchor, constant: 12).isActive = true
        billAmountStackView.trailingAnchor.constraint(equalTo: self.safeArea.trailingAnchor, constant: -12).isActive = true
    }
    
    func setupTipPercentageStackView() {
        tipPerecentageStackView.addArrangedSubview(tipPercentageLabel)
        tipPerecentageStackView.addArrangedSubview(tipPercentSegmentedController)
        tipPerecentageStackView.topAnchor.constraint(equalTo: billAmountStackView.bottomAnchor, constant: 30).isActive = true
        tipPerecentageStackView.leadingAnchor.constraint(equalTo: self.safeArea.leadingAnchor, constant: 12).isActive = true
        tipPerecentageStackView.trailingAnchor.constraint(equalTo: self.safeArea.trailingAnchor, constant: -12).isActive = true
    }
    
    func setupBillAmountStackView() {
        computedTipStackView.addArrangedSubview(calclatedTipAmountLabel)
        computedTipStackView.addArrangedSubview(calculatedBilltotalAmountLabel)
        computedTipStackView.topAnchor.constraint(equalTo: tipPerecentageStackView.bottomAnchor, constant: 40).isActive = true
        computedTipStackView.leadingAnchor.constraint(equalTo: self.safeArea.leadingAnchor, constant: 12).isActive = true
        computedTipStackView.trailingAnchor.constraint(equalTo: self.safeArea.trailingAnchor, constant: -12).isActive = true
    }
    
    func resetButtonStackView() {
        resetStackView.addArrangedSubview(resetButton)
        resetStackView.topAnchor.constraint(equalTo: computedTipStackView.bottomAnchor, constant: 40).isActive = true
        resetStackView.leadingAnchor.constraint(equalTo: self.safeArea.leadingAnchor, constant: 12).isActive = true
        resetStackView.trailingAnchor.constraint(equalTo: self.safeArea.trailingAnchor, constant: -12).isActive = true
    }
    
    // MARK: Views
    var billAmountLabel: UILabel = {
        let label = UILabel()
        label.text = "Bill Amount:"
        label.textAlignment = .natural
        return label
    }()
    
    var billAmountTextField: UITextField = {
        let label = UITextField()
        label.placeholder = "Enter bill amount here..."
        label.borderStyle = UITextField.BorderStyle.roundedRect
        return label
        
    }()
    
    var tipPercentageLabel: UILabel = {
        let label = UILabel()
        label.text = "How much would you like to Tip?"
        label.textAlignment = .center
        return label
    }()
    
    let tipPercentSegmentedController: UISegmentedControl = {
        let items = ["15%", "20%", "25%"]
        let segmentedController = UISegmentedControl(items: items)
        segmentedController.selectedSegmentIndex = 2
        segmentedController.tintColor = .subtleGreen
        return segmentedController
    }()
    
    let calclatedTipAmountLabel: UILabel = {
        let label = UILabel()
        label.text = "(Tip Amount)"
        label.textAlignment = .left
        return label
    }()
    
    let calculatedBilltotalAmountLabel: UILabel = {
        let label = UILabel()
        label.text = "(Bill Total)"
        label.textAlignment = .left
        return label
    }()
    
    @objc func selectButton(sender: UIButton) {
        
    }
    
    let resetButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Reset", for: .normal)
        button.titleLabel?.font =  UIFont.systemFont(ofSize: 25)
        button.setTitleColor(.moneyGreen, for: .normal)
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(selectButton), for: .touchUpInside)
        
        return button
    }()
    
    // MARK: - Views
    
    let billAmountStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let tipPerecentageStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let computedTipStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let resetStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
} // END OF CLASS

