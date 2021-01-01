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
    
    //lottie
    var animationview: AnimationView! = AnimationView()
    
    //ビッグ5の説明
    let activities = ["知的好奇心","誠実性","外交性","協調性","感情起伏"]
    
    //["知的好奇心","誠実性","外交性","協調性","感情起伏"] JSONから帰ってくる方
    let nameArray = [String]()
    
    //ビッグ５のパーセンテージ
    var percentileArray = [Double]()
    
    //ビッグ5それぞれの子要素
    var childNameArray1 = [String]()
    var childPercentileArray1 = [Double]()
    var childNameArray2 = [String]()
    var childPercentileArray2 = [Double]()
    var childNameArray3 = [String]()
    var childPercentileArray3 = [Double]()
    var childNameArray4 = [String]()
    var childPercentileArray4 = [Double]()
    var childNameArray5 = [String]()
    var childPercentileArray5 = [Double]()
    
    //購買傾向
    var consumption_preferences_NameArray1 = [String]()
    var consumption_preferences_Score1 = [Double]()
    var consumption_preferences_NameArray2 = [String]()
    var consumption_preferences_Score2 = [Double]()
    var consumption_preferences_NameArray3 = [String]()
    var consumption_preferences_Score3 = [Double]()
    var consumption_preferences_NameArray4 = [String]()
    var consumption_preferences_Score4 = [Double]()
    var consumption_preferences_NameArray5 = [String]()
    var consumption_preferences_Score5 = [Double]()
    var consumption_preferences_NameArray6 = [String]()
    var consumption_preferences_Score6 = [Double]()
    var consumption_preferences_NameArray7 = [String]()
    var consumption_preferences_Score7 = [Double]()
    var consumption_preferences_NameArray8 = [String]()
    var consumption_preferences_Score8 = [Double]()
    
    //Lottie-Circle,UIColorExtentionを継承
    //こちらのコードはgitを参照
    let items: [(icon: String, color: UIColor)] = [
           ("1", UIColor(red: 0.19, green: 0.57, blue: 1, alpha: 1)),
           ("2", UIColor(red: 0.22, green: 0.74, blue: 0, alpha: 1)),
           ("3", UIColor(red: 0.96, green: 0.23, blue: 0.21, alpha: 1)),
           ("4", UIColor(red: 0.51, green: 0.15, blue: 1, alpha: 1)),
           ("5", UIColor(red: 1, green: 0.39, blue: 0, alpha: 1))
       ]
    
    //リセットボタンが押されたかどうか
    var resetFlag = false
    //2回目かどうか
    var restartFlag = false
    
    //サークルボタン
    let button = CircleMenu(frame: CGRect(x: 175, y: 684, width: 64, height: 64), normalIcon: "openmenu", selectedIcon: "close", buttonsCount: 5, duration: 0.2, distance: 120)
    
    let marker = RadarMarkerView.viewFromXib()!
    var xAxis = XAxis()
    var yAxis = YAxis()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func analyze(_ sender: Any) {
        
        if percentileArray.count != 0 && UIPasteboard.general.string?.isEmpty == false && resetFlag != false{
            
            for set in chartView.data!.dataSets {
                set.drawValuesEnabled = !set.isDrawValuesEnabled
            }
            chartView.setNeedsDisplay()
            
        }
        
        //サーチ中は他のボタンを使えなくする
        searchButton.isEnabled = false
        shindanButton.isEnabled = false
        profileButton.isEnabled = true
        button.isEnabled = false
        resetButton.isEnabled = false
        
        //アニメーションスタート
        
        //配列の中身を消去
        
    }
    
    
    


}

