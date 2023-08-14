//
//  JokesViewModel.swift
//  JokesApp
//
//  Created by Oğuz on 14.08.2023.
//

import Foundation
import Alamofire

class JokesVİewModel : ObservableObject {
    
    @Published var jokes = [Value]()
    
    func getJokes () {
        
    }
}
