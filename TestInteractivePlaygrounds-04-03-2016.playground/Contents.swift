//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

class SomeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let button = UIButton(frame: self.bounds)
        button.backgroundColor = UIColor.whiteColor()
        self.addSubview(button)
        button.addTarget(self, action: #selector(buttonTapped), forControlEvents: .TouchUpInside)
        
        let label = UILabel(frame: CGRectMake(20, 20, 20, 20))
        label.text = "Tap here"
        label.sizeToFit()
        label.center = button.center
        button.addSubview(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buttonTapped() {
        print("button tapped")
    }
}



XCPlaygroundPage.currentPage.liveView = SomeView(frame: UIScreen.mainScreen().bounds)
