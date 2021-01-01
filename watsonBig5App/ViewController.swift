//
//  ViewController.swift
//  watsonBig5App
//
//  Created by 楠瀬大志 on 2021/01/01.
//

import UIKit
import NaturalLanguageUnderstanding
import Charts
import CircleMenu
import Lottie

class ViewController: DemoBaseViewController {
    //ChartsのBaseViewを継承
    //watsonにアクセスするためのAPIキー
    //S2tTWM7ltuVkXVcko4iuifqjPHJOpm31wDacJxKKU3rp
    @IBOutlet weak var chartView: RadarChartView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var shindanButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

