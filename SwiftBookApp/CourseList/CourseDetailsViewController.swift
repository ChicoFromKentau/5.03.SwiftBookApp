//
//  CourseDetailsViewController.swift
//  SwiftBookApp
//
//  Created by Chingiz Alimov on 18.10.2023.
//

import UIKit

class CourseDetailsViewController: UIViewController {
    @IBOutlet private var courseNameLabel: UILabel!
    @IBOutlet private var courseImage: UIImageView!
    @IBOutlet private var numberOfLessonsLabel: UILabel!
    @IBOutlet private var numberOfTestsLabel: UILabel!
    @IBOutlet private var favoriteButton: UIButton!
    
    var viewModel: CourseDetailsViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func toggleFavorite() {
        viewModel.favoriteButtonPressed()
    }
    
    private func setupUI() {
        setStatusForFavoriteButton(viewModel.isFavorite)
        
        viewModel.viewModelDidChange = { [unowned self] viewModel in
            setStatusForFavoriteButton(viewModel.isFavorite)
        }
        courseNameLabel.text = viewModel.courseName
        numberOfLessonsLabel.text = viewModel.numberOfLessons
        numberOfTestsLabel.text = viewModel.numberOfTests
        courseImage.image = UIImage(data: viewModel.imageData ?? Data())
    }
    
    private func setStatusForFavoriteButton(_ status: Bool) {
        favoriteButton.tintColor = status ? .red : .gray
    }
}
