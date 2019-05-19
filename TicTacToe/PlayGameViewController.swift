import UIKit

class PlayGameViewController: UIViewController {

    @IBOutlet weak var Section0: UIButton!
    
    @IBOutlet weak var Section1: UIButton!
    
    @IBOutlet weak var Section2: UIButton!
    
    @IBOutlet weak var Section3: UIButton!
    
    @IBOutlet weak var Section4: UIButton!
    
    @IBOutlet weak var Section5: UIButton!
    
    @IBOutlet weak var Section6: UIButton!
    
    @IBOutlet weak var Section7: UIButton!
    
    @IBOutlet weak var Section8 : UIButton!
    
//    enum state{
//        case .empty
//        case .player1
//        case .player2
//    }
   
    var player = 1
    var board = [0,0,0,
                 0,0,0,
                 0,0,0]
    
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
        Section0.setImage(UIImage(named: ""), for: UIControl.State.normal)
        Section0.isEnabled = true
        
        Section1.setImage(UIImage(named: ""), for: UIControl.State.normal)
        Section1.isEnabled = true
        
        Section2.setImage(UIImage(named: ""), for: UIControl.State.normal)
        Section2.isEnabled = true
        
        Section3.setImage(UIImage(named: ""), for: UIControl.State.normal)
        Section3.isEnabled = true
        
        Section4.setImage(UIImage(named: ""), for: UIControl.State.normal)
        Section4.isEnabled = true
        
        Section5.setImage(UIImage(named: ""), for: UIControl.State.normal)
        Section5.isEnabled = true
        
        Section6.setImage(UIImage(named: ""), for: UIControl.State.normal)
        Section6.isEnabled = true
        
        Section7.setImage(UIImage(named: ""), for: UIControl.State.normal)
        Section7.isEnabled = true
        
        Section8.setImage(UIImage(named: ""), for: UIControl.State.normal)
        Section8.isEnabled = true
    }
    
    @IBAction func Section0(_ sender: UIButton) {
        if (player == 1){
            Section0.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            board[0] = 1
        }
        else{
            Section0.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            board[0] = 2
        }
        Section0.isEnabled = false
        check(player: player)
        changePlayer()
    }
    
    @IBAction func Section1(_ sender: UIButton) {
        if (player == 1){
            Section1.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
           board[1] = 1
        }
        else{
            Section1.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            board[1] = 2
        }
        Section1.isEnabled = false
        check(player: player)
        changePlayer()
    }
    
    @IBAction func Section2(_ sender: UIButton) {
        if (player == 1){
            Section2.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            board[2] = 1
        }
        else{
            Section2.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            board[2] = 2
        }
        Section2.isEnabled = false
        check(player: player)
        changePlayer()
    }
    
    
    @IBAction func Section3(_ sender: Any) {
        if (player == 1){
            Section3.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            board[3] = 1
        }
        else{
            Section3.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            board[3] = 2
        }
        Section3.isEnabled = false
        check(player: player)
        changePlayer()
    }
    
    
    @IBAction func Section4(_ sender: Any) {
        if (player == 1){
            Section4.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            board[4] = 1
        }
        else{
            Section4.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            board[4] = 2
        }
        Section4.isEnabled = false
        check(player: player)
        changePlayer()
    }
    
    @IBAction func Section5(_ sender: Any) {
        if (player == 1){
            Section5.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            board[5] = 1
        }
        else{
            Section5.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            board[5] = 2
        }
        Section5.isEnabled = false
        check(player: player)
        changePlayer()
    }
    
    @IBAction func Section6(_ sender: Any) {
        if (player == 1){
            Section6.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            board[6] = 1
        }
        else{
            Section6.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            board[6] = 2
        }
        Section6.isEnabled = false
        check(player: player)
        changePlayer()
    }
    
    @IBAction func Section7(_ sender: Any) {
        if (player == 1){
            Section7.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            board[7] = 1
        }
        else{
            Section7.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            board[7] = 2
        }
        Section7.isEnabled = false
        check(player: player)
        changePlayer()
    }
    
    
    @IBAction func Section8(_ sender: Any) {
        if (player == 1){
            Section8.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            board[8] = 1
        }
        else{
            Section8.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            board[8] = 2
        }
        Section8.isEnabled = false
        check(player: player)
        changePlayer()
    }
    
        func changePlayer(){
            if (player == 1){
                player = 2
            } else{
                player = 1
            }
        }
    
        func check(player: Int){
        if (player == 1)
        {
            if (board[0] == 1 && board[1] == 1 && board[2] == 1){
                self.createAlert(title: "End Game", message: "Player 2 win!")
            }
        }
        
        }
    
    func createAlert(title: String, message: String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Reset", style: .default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            self.reset()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true,completion: nil)
    }
    
    
}

