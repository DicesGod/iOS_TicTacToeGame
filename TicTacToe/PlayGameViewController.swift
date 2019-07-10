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
    //Draw = 0 and Win = 1
    var winOrdraw = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Reset(_ sender: UIButton) {
        reset()
        player1winCount = 0
        player2winCount = 0
        self.player1win.text = "0"
        self.player2win.text = "0"
    }
    
    func reset(){
        winOrdraw = 1
        board = [0,0,0,
                 0,0,0,
                 0,0,0]
        for UIButtion in Section{
        UIButtion.setImage(UIImage(named: ""), for: UIControl.State.normal)
        UIButtion.isEnabled = true
        }
    }
    
    @IBAction func Section(_ sender: UIButton) {
        sender.isEnabled = false
        if (player == 1){
            sender.setImage(UIImage(named: "apple.png"), for: UIControl.State.disabled)
            //sender.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            board[sender.tag] = 1
            check(player: player)
            player = 2
        }
        else{
            sender.setImage(UIImage(named: "android.png"), for: UIControl.State.disabled)
            board[sender.tag] = 2
            //sender.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            check(player: player)
            player = 1
        }
    }
    
        func check(player: Int){
            winOrdraw = 2
            //check when board still have moves to play
            if (board.contains(0) == true){
            if(player == 1){
                for winingline in winningcondition{
                   print(winingline[0])
                    if board[winingline[0]] != 0 && board[winingline[0]] == board[winingline[1]] && board[winingline[1]] == board[winingline[2]]{
                        self.createAlert(title: "Result!", message: "iOS player win!")
                        player1winCount = player1winCount + 1
                        player1win.text = String(player1winCount)
                    }
                }
            }
                else if (player == 2)
                {
                    for winingline in winningcondition{
                        if board[winingline[0]] != 0 && board[winingline[0]] == board[winingline[1]] && board[winingline[1]] == board[winingline[2]]{
                            self.createAlert(title: "Result!", message: "Android player win!")
                            player2winCount = player2winCount + 1
                            player2win.text = String(player2winCount)
                        }
                }
            }
            }
                //check when board has no move to play
            else{
                if(player == 1){
                    for winingline in winningcondition{
                        print(winingline[0])
                        myCondition: if (board[winingline[0]] != 0 && board[winingline[0]] == board[winingline[1]] && board[winingline[1]] == board[winingline[2]]){
                            self.createAlert(title: "Result!", message: "iOS player win!")
                            player1winCount = player1winCount + 1
                            player1win.text = String(player1winCount)
                            winOrdraw = 1
                            break myCondition
                        }
                        
                    }
                }
                else if (player == 2)
                {
                    for winingline in winningcondition{
                        myCondition: if (board[winingline[0]] != 0 && board[winingline[0]] == board[winingline[1]] && board[winingline[1]] == board[winingline[2]]){
                            self.createAlert(title: "Result!", message: "Android player win!")
                            player2winCount = player2winCount + 1
                            player2win.text = String(player2winCount)
                            winOrdraw = 1
                            break myCondition
                        }
                     
                    }
                }
                if (winOrdraw == 2)
                {
                    self.createAlert(title: "Result!", message: "What a draw!")
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
            self.player1winCount = 0
            self.player2winCount = 0
            self.player1win.text = "0"
            self.player2win.text = "0"
        }))
        self.present(alert, animated: true,completion: nil)
    }
}

