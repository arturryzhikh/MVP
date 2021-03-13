//
//  NetworService.swift
//  MVP
//
//  Created by Artur Ryzhikh on 13.03.2021.
//

import Foundation
protocol Networking {
    func getComments(completion: @escaping (Result<[Comment]?,Error>) -> Void)
}




class NetworkService : Networking {
    func getComments(completion: @escaping (Result<[Comment]?,Error>)-> Void) {
        let urlString = "https://jsonplaceholder.typicode.com/posts/1/comments"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, _ ,error in
            if let error = error {
                completion(.failure(error))
                return
            }
            do {
                let decoded = try JSONDecoder().decode([Comment].self,from: data!)
                completion(.success(decoded))
            } catch {
                completion(.failure(error))
            }
          
        }.resume()
    }
}
