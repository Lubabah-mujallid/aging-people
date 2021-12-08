
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let peopl = ["ahmed", "mohammad", "khalid", "ibrahim", "lubabah", "lolo", "lily", "petty", "nine", "peter", "quin", "penny"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopl.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let random = Int.random(in: 1...90)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = peopl[indexPath.row]
        cell.detailTextLabel?.text = "\(random) years old"
        return cell
    }
    
    
}

