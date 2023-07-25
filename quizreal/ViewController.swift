
import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = UIColor.black.cgColor
        startButton.layer.cornerRadius = 3
    }
    //music
    let backMusicPath = Bundle.main.bundleURL.appendingPathComponent("Circle_Walk.mp3")
    
    var backMusicPlayer : AVAudioPlayer!
    
    func music() {
        do{
            backMusicPlayer = try AVAudioPlayer(contentsOf: backMusicPath, fileTypeHint: nil)
            
            backMusicPlayer.numberOfLoops = -1
            backMusicPlayer.play()
        } catch{
            print("エラー発生")
        }
    }
    
    
}

