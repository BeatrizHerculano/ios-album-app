//
//  ViewController.swift
//  albuns
//
//  Created by Beatriz Herculano de Oliveira on 16/02/21.
//

//class Anotations: UIViewController {
//    let array: [String] = {
//        return ["a", "b"]
//    }()

//    @IBOutlet weak var tableView: UITableView!
//
//    let array: [String] = ["a", "b"]
//    init(viewModel: ViewModel){
//
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        tableView.register(MyTableCell.self, forCellReuseIdentifier: "minha celula")
//
//    }
//
//
//}
//
//extension ViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//    }
//}
//
//extension ViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.array.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let celula = tableView.dequeueReusableCell(withIdentifier: "minha celula", for: indexPath) as! MyTableCell
////        UITableViewCell(style: .default, reuseIdentifier: "minha celula")
//        celula.textLabel?.text = array[indexPath.row]
//        return celula
//    }
//}
//
//class MyTableCell: UITableViewCell {
//
//}
