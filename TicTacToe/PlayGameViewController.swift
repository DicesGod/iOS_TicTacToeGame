import UIKit

class PlayGameViewController: UIViewController {

    @IBOutlet weak var Section1: UIButton!
    
    @IBOutlet weak var Section2: UIButton!
    
    @IBOutlet weak var Section3: UIButton!
    
    @IBOutlet weak var Section4: UIButton!
    
    @IBOutlet weak var Section5: UIButton!
    
    @IBOutlet weak var Section6: UIButton!
    
    @IBOutlet weak var Section7: UIButton!
    
    @IBOutlet weak var Section8: UIButton!
    
    @IBOutlet weak var Section9: UIButton!
   
    var player = 1
    var winningConditions = [[1,2,3],[4,5,6],[6,7,8],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
    var player1Moves = [[]]
    var player2Moves = [[]]
    var move = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Reset(_ sender: UIButton) {
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
        
        Section9.setImage(UIImage(named: ""), for: UIControl.State.normal)
        Section9.isEnabled = true
    }
    
    
    @IBAction func Section1(_ sender: UIButton) {
        if (player == 1){
            Section1.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
//            move = 1
//            for i in player1Moves{
                player1Moves[0].append(1)
          //  }
            
            changePlayer()
        }
        else{
            Section1.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            player2Moves.append([1,0, ])
            changePlayer()
        }
       
        Section1.isEnabled = false
    }
    
    @IBAction func Section2(_ sender: UIButton) {
        if (player == 1){
            Section2.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
           player1Moves[0].append(2)
           changePlayer()
        }
        else{
            Section2.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            changePlayer()
        }
        Section2.isEnabled = false
    }
    
    @IBAction func Section3(_ sender: UIButton) {
        if (player == 1){
            Section3.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            player1Moves[0].append(3)
           changePlayer()
        }
        else{
            Section3.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
           changePlayer()
        }
        Section3.isEnabled = false
        print(player1Moves)
        print(player2Moves)
        //check()
    }
    
    
    @IBAction func Section4(_ sender: Any) {
        if (player == 1){
            Section4.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            changePlayer()
        }
        else{
            Section4.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
           changePlayer()
        }
        Section4.isEnabled = false
    }
    
    
    @IBAction func Section5(_ sender: Any) {
        if (player == 1){
            Section5.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            changePlayer()
        }
        else{
            Section5.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            changePlayer()
        }
        Section5.isEnabled = false
    }
    
    @IBAction func Section6(_ sender: Any) {
        if (player == 1){
            Section6.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            changePlayer()
        }
        else{
            Section6.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            changePlayer()
        }
        Section6.isEnabled = false
    }
    
    @IBAction func Section7(_ sender: Any) {
        if (player == 1){
            Section7.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            changePlayer()
        }
        else{
            Section7.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            changePlayer()
        }
        Section7.isEnabled = false
    }
    
    @IBAction func Section8(_ sender: Any) {
        if (player == 1){
            Section8.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            changePlayer()
        }
        else{
            Section8.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            changePlayer()
        }
        Section8.isEnabled = false
    }
    
    
    @IBAction func Section9(_ sender: Any) {
        if (player == 1){
            Section9.setImage(UIImage(named: "apple.png"), for: UIControl.State.normal)
            changePlayer()
        }
        else{
            Section9.setImage(UIImage(named: "android.png"), for: UIControl.State.normal)
            changePlayer()
        }
        Section9.isEnabled = false
        
    }
    
    func changePlayer(){
        if (player == 1){
            player = 2
        } else{
            player = 1
        }
    
    
    func check(){
      
        
        }
    }

    
    
}

