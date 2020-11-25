//
//  GradientView.swift
//  Chance
//
//  Created by Ваге Базикян on 25.11.2020.
//

import UIKit

class GradientView : UIView {
    
    @IBInspectable private var startColor : UIColor?{
        didSet{
            setupGradientColor()
        }
    }
    
    @IBInspectable  private var endColor : UIColor?{
        didSet{
            setupGradientColor()
        }
    }
    
    private let gradientLayer = CAGradientLayer()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradient()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    private func setupGradient() {
        self.layer.insertSublayer(gradientLayer, at: 0)
        setupGradientColor()
    }
    private func setupGradientColor(){
        if let startColor = startColor , let endColor = endColor{
            gradientLayer.colors = [startColor.cgColor , endColor.cgColor]
        }
    }
}
