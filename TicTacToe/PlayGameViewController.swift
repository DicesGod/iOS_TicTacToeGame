import UIKit

class PlayGameViewController: UIViewController {

    @IBOutlet var Section: [UIButton]!

    @IBOutlet weak var player2win: UILabel!
    @IBOutlet weak var player1win: UILabel!
    
    var player = 1
    var board = [0,0,0,
                 0,0,0,
                 0,0,0]
    var winningcondition = [[0,1,2],[3,4,5],[6,7,8],
                            [0,3,6],[1,4,7],[2,5,8],
                            [0,4,8],[2,4,6]]
    
    var player1winCount = 0
    var player2winCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Reset(_ sender: UIButton) {
        reset()
    }
    
    func reset(){
        board = [0,0,0,
                 0,0,0,
                 0,0,0]
        for UIButtion in Section{
        UIButtion.setImage(UIImage(named: ""), for: UIControl.State.normal)
        UIButtion.isEnabled = true
        }
    }
    
    @IBAction func Section(_ sender: UIButton) {
        if (player == 1){
            sender.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            board[sender.tag] = 1
            check(player: player)
            player = 2
        }
        else{
            sender.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            board[sender.tag] = 2
            check(player: player)
            player = 1
        }
        sender.isEnabled = false
    }
    
//    var board = [0,0,0,
//                 0,0,0,
//                 0,0,0]
//    var winningcondition = [[0,1,2],[3,4,5],[6,7,8],
//                            [0,3,6],[1,4,7],[2,5,8],
//                            [0,4,8],[2,4,6]]
//
        func check(player: Int){
            if(player == 1){
                for winingline in winningcondition{
                   print(winingline[0])
                    if board[winingline[0]] != 0 && board[winingline[0]] == board[winingline[1]] && board[winingline[1]] == board[winingline[2]]{
                        self.createAlert(title: "End Game", message: "Player 1 win!")
                        player1winCount = player1winCount + 1
                        player1win.text = String(player1winCount)
                    }
                }
            }
                else
                {
                    for winingline in winningcondition{
                        if board[winingline[0]] != 0 && board[winingline[0]] == board[winingline[1]] && board[winingline[1]] == board[winingline[2]]{
                            self.createAlert(title: "End Game", message: "Player 2 win!")
                            player2winCount = player2winCount + 1
                            player2win.text = String(player2winCount)
                        }
                }
            }
        }
    
    func createAlert(title: String, message: String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Play Again", style: .default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            self.reset()
        }))
        alert.addAction(UIAlertAction(title: "Reset", style: .default, handler:{ (action) in
            alert.dismiss(animated: true, completion: nil)
            self.reset()
            self.player1win.text = ""
            self.player2win.text = ""
        }))
        self.present(alert, animated: true,completion: nil)
    }
    
    
}

