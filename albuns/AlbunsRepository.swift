//
//  AlbunsRepository.swift
//  albuns
//
//  Created by Beatriz Herculano de Oliveira on 05/03/21.
//

import Foundation

enum MyError: Error{
    case invalidURL
    case invalidData
}

class AlbunsRepository {
    func getAlbuns(completion: @escaping (Result<AlbumServerResponse, MyError>)-> ()) {
        let urlString = "https://theaudiodb.com/api/v1/json/1/album.php?i=112024"

        guard let url = URL(string: urlString) else {
            completion(.failure(.invalidURL))
            return
        }

        URLSession.shared.dataTask(with: url){ data, res, error in
            let decoder = JSONDecoder()
            guard let data = data,
                  let albuns = try? decoder.decode(AlbumServerResponse.self, from: data)
            else {
                completion(.failure(.invalidData))
                return
            }

            print(albuns)
            completion(.success(albuns))
        }.resume()
    }
}
