//
//  OnboardingViewController.swift
//  artpresso
//
//  Created by swift on 17.07.2023.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        slides = [
            OnboardingSlide(title: "Comfortable Workplace", description: "As you embark on your journey to success, we invite you to experience the transformative power of a comfortable workplace.", image: UIImage(named: "firstOnboardingImage")!),
            OnboardingSlide(title: "Expressive art space", description: "Step into a realm  imagination knows no bounds", image: UIImage(named: "secondOnboardingImage")!),
            OnboardingSlide(title: "Pleasant coffee day-starter", description: "Energized and uplifted, you're ready to face whatever the day brings, knowing that the essence of this morning sanctuary will linger in your heart until you return once more.", image: UIImage(named: "thirdOnboardingImage")!)
        ]
        
        
    }
    

    @IBAction func nextButtonClicked(_ sender: UIButton) {
        
    }
    

}


extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardiongCollectionViewCell.identifier, for: indexPath) as! OnboardiongCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height:    collectionView.frame.height)
    }
}

