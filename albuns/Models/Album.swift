//
//  Album.swift
//  albuns
//
//  Created by Beatriz Herculano de Oliveira on 05/03/21.
//

import Foundation

struct AlbumServerResponse:Decodable {
    var album : [Album]
}

struct Album: Decodable { // precisa ser decodable
    var strAlbumThumb: String
    var strAlbum: String
}
