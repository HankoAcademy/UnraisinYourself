import UIKit

class ViewController: UIViewController {
    
    let circularView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
      //  view.layer.cornerRadius = view.frame.size.width / 2
        view.layer.cornerRadius = 25
        view.clipsToBounds = true
        return view
    }()
    
    let userLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hi Thierno"
        label.font = .systemFont(ofSize: 22)
        label.textColor = .black
        return label
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        setUpHeader()
    }
    
    func setUpHeader() {
        view.addSubview(circularView)
        view.addSubview(userLabel)
        
        NSLayoutConstraint.activate([
            circularView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            circularView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            circularView.widthAnchor.constraint(equalToConstant: 50),
            circularView.heightAnchor.constraint(equalToConstant: 50),
            
            userLabel.leadingAnchor.constraint(equalTo: circularView.trailingAnchor, constant: 10),
            userLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20)
        
        
        ])
    }


}
