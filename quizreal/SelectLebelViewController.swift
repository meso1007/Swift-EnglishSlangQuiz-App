//このクラスはレベル選択するためのクラス

import UIKit

class SelectLebelViewController: UIViewController {
    @IBOutlet weak var lv1Button: UIButton!
    @IBOutlet weak var lv2Button: UIButton!
    @IBOutlet weak var lv3Button: UIButton!
    
    var selectTag = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lv1Button.layer.borderWidth = 2
        lv1Button.layer.borderColor = UIColor.black.cgColor
        
        lv2Button.layer.borderWidth = 2
        lv2Button.layer.borderColor = UIColor.black.cgColor
        
        lv3Button.layer.borderWidth = 2
        lv3Button.layer.borderColor = UIColor.black.cgColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let quizVC = segue.destination as! QuizViewController
        quizVC.selectLevel = selectTag
    }
    
    @IBAction func lebelButtonAction(sender: UIButton) {
        print(sender.tag)
        selectTag = sender.tag
        performSegue(withIdentifier: "toQuizVC", sender: nil)
    }
    
}
