//
//  ViewController.swift
//  demoSlider
//
//  Created by Owen on 2020/8/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moveSlider: UISlider!
    @IBOutlet weak var modeSegmented: UISegmentedControl!
    @IBOutlet weak var mickeyImage: UIImageView!
    @IBOutlet weak var minnieImage: UIImageView!
    
    let mickeyOriginalX = 728
    let minnieOriginalX = 60
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func modeChange(_ sender: UISegmentedControl) {
        alphaChange()
    }
    
    @IBAction func moveChange(_ sender: UISlider) {
        imageMove()
        alphaChange()
    }
    
    //移動mickey&minnie
    func imageMove() {
        mickeyImage.frame.origin.x = CGFloat(mickeyOriginalX - Int(moveSlider.value))
        minnieImage.frame.origin.x = CGFloat(minnieOriginalX + Int(moveSlider.value))
    }
    
    //變更mickey&minnie透明度
    func alphaChange() {
        if modeSegmented.selectedSegmentIndex == 1{
            mickeyImage.alpha = CGFloat(moveSlider.value / 290.0)
            minnieImage.alpha = CGFloat(moveSlider.value / 290.0)
        }
        else {
            mickeyImage.alpha = 1
            minnieImage.alpha = 1
        }
    }
    
}

