import UIKit
import Kingfisher

final class MainViewController: UIViewController {
    
    lazy var imageView: UIImageView = {
        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override func viewDidLoad() {
        
        navigationItem.title = "Evercode App"
        
        view.backgroundColor = .white
        view.addSubview(imageView)
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        loadImage()
    }
    
    func loadImage() {

        let url = URL(string: "https://devpass-api-bucket.s3.amazonaws.com/logo/evercode-logo.png")
        imageView.kf.setImage(with: url)
    }
}
