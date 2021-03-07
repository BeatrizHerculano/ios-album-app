//
//  ViewController.swift
//  albuns
//
//  Created by Beatriz Herculano de Oliveira on 16/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var albunsViewModel = AlbunsViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        albunsViewModel.getAlbuns(){error in
            guard let error = error else {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                return
            }
            print(error)
        }
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.albunsViewModel.albuns.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "minha celula", for: indexPath) as! MyTableCell
        celula.setValues(album: self.albunsViewModel.albuns[indexPath.row])

        return celula
    }
}

class MyTableCell: UITableViewCell {

    func setValues(album: Album) {
        self.albumTitle.text = album.strAlbum
        if let url = URL(string: album.strAlbumThumb ), let data = try? Data(contentsOf: url){
            self.albumImage?.image = UIImage(data: data)
        }
    }

    override func prepareForReuse() {
        albumImage.image = nil
        albumTitle.text = ""
    }
    @IBOutlet weak var albumTitle: UILabel!

    @IBOutlet weak var albumImage: UIImageView!
}
