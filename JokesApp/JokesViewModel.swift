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
    
    init() {
        getJokes()
    }
    
    func getJokes () {
        
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json",method: .get).responseDecodable(of: JokesData.self) { response in
            
            switch response.result {
                case .success(let data):
                    let value = data.value
                    self.jokes += value
                case .failure(let error):
                    print(error)
            }
        }
    }
}
