//
//  JokesViewModel.swift
//  JokesApp
//
//  Created by Oğuz on 14.08.2023.
//

import Foundation
import Alamofire

class JokesVİewModel : ObservableObject {
    
    @Published var jokes: [JokesData] = []
    
    init() {
        getJokes()
    }
    
    func getJokes () {
        
        AF.request("https://api.chucknorris.io/jokes/random",method: .get).responseDecodable(of: JokesData.self) { response in
            
            switch response.result {
                case .success(let data):
                    self.jokes.append(data)
                case .failure(let error):
                    print(error)
            }
        }
    }
}
