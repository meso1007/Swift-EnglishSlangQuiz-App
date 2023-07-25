//
//  ScoreViewController.swift
//  quizreal
//
//  Created by 堀内翔矢 on 2023/07/24.
//

import UIKit

class ScoreViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var returnTopButton: UIButton!
    @IBOutlet weak var cheerLabel: UILabel!
    
    
    var correct = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if Double(correct) >= 9{
            cheerLabel.text = ("Awesome!!")
        }else if Double(correct) >= 7 {
            cheerLabel.text = ("Great Job!!")
        }else if Double(correct) >= 5 {
            cheerLabel.text  = ("Good!")
        } else{
            cheerLabel.text  = ("Try Again! You can do it!!")
        }
        scoreLabel.text="\(correct)問正解"
        
        returnTopButton.layer.borderWidth = 2
        returnTopButton.layer.borderColor = UIColor.black.cgColor
        shareButton.layer.borderWidth = 2
        shareButton.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func shareButtonAction(_ sender: Any) {
        let activityItems = ["\(correct)問正解しました","quiz"]    //#quizで共有
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil) //シェアする画面の表示
        self.present(activityVC, animated: true)        //アニメーションあり
    }
    @IBAction func toTopButtonAction(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true)
        //presentingViewControllerの数だけ画面が戻る
    }
    
}
