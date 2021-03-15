//
//  Top10ViewController.swift
//  FredGame
//
//  Created by user188455 on 3/15/21.
//

import UIKit

class Top10ViewController: UIViewController {
    @IBOutlet weak var top1: UILabel!
    @IBOutlet weak var top2: UILabel!
    @IBOutlet weak var top3: UILabel!
    @IBOutlet weak var top4: UILabel!
    @IBOutlet weak var top5: UILabel!
    @IBOutlet weak var top6: UILabel!
    @IBOutlet weak var top7: UILabel!
    @IBOutlet weak var top8: UILabel!
    @IBOutlet weak var top9: UILabel!
    @IBOutlet weak var top10: UILabel!
    
    func configureView() {
        if let myTop10 = top10data {
            if myTop10.top10List.count >= 1 {
                top1.text = String(myTop10.top10List[0])
            }
            
            if myTop10.top10List.count >= 2 {
                top2.text = String(myTop10.top10List[1])
            }
            
            if myTop10.top10List.count >= 3 {
                top3.text = String(myTop10.top10List[2])
            }
            
            if myTop10.top10List.count >= 4 {
                top4.text = String(myTop10.top10List[3])
            }
            
            if myTop10.top10List.count >= 5 {
                top5.text = String(myTop10.top10List[4])
            }
            
            if myTop10.top10List.count >= 6 {
                top6.text = String(myTop10.top10List[5])
            }
            
            if myTop10.top10List.count >= 7 {
                top7.text = String(myTop10.top10List[6])
            }
            
            if myTop10.top10List.count >= 8 {
                top8.text = String(myTop10.top10List[7])
            }
            
            if myTop10.top10List.count >= 9 {
                top9.text = String(myTop10.top10List[8])
            }
            
            if myTop10.top10List.count >= 10 {
                top10.text = String(myTop10.top10List[9])
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }
    
    var top10data : Top10? {
        didSet {
            // Update the view
        }
    }
}
