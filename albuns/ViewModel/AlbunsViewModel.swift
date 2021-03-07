//
//  AlbunsViewModel.swift
//  albuns
//
//  Created by Beatriz Herculano de Oliveira on 07/03/21.
//

import Foundation

class AlbunsViewModel {
    private var repository: AlbunsRepository
    var albuns: [Album] = []
    init() {
        repository = AlbunsRepository()
    }

    func searchForAlbuns(completion: @escaping (MyError?)-> ()){
        repository.getAlbuns(){ result in
            switch result{

            case .success(let albuns):
                self.albuns = albuns.album
                completion(nil)

            case .failure(let error):
                completion(error)
            }
        }
    }

    func getAlbum(withOrder: Int) -> Album{
        return self.albuns[withOrder]
    }
}
