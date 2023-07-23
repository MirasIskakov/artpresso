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
    
    var currentPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        slides = [
            OnboardingSlide(title: OnbordingTitle.first,
                            description: OnbordingDescription.first,
                            image: OnboardingImages.first),
            OnboardingSlide(title: OnbordingTitle.second,
                            description: OnbordingDescription.second,
                            image: OnboardingImages.second),
            OnboardingSlide(title: OnbordingTitle.third,
                            description: OnbordingDescription.third,
                            image: OnboardingImages.third) ]
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
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        pageControl.currentPage = currentPage
    }
}


