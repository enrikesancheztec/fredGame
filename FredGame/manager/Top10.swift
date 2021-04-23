//
//  Top10.swift
//  FredGame
//
//  Created by user188455 on 3/15/21.
//

import Foundation

class Top10 {
    private var top10List : [Score] = []
    let service = FredScoreService()
       
    func add(newScore : Score) {
        service.makePostCall(newScore: newScore)
    }
    
    func getList() -> [Score] {
        return top10List
    }
    
    func loadData(_ handler: @escaping () -> Void) {
        service.makeGetCall(top10List) {
            (scoreList) in
            self.top10List = scoreList
            
            handler()
        }
    }
}
