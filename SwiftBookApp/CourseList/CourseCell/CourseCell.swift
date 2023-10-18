//
//  CourseCell.swift
//  SwiftBookApp
//
//  Created by Chingiz Alimov on 18.10.2023.
//

import UIKit

class CourseCell: UITableViewCell {
    var viewModel: CourseCellViewModelProtocol! {
        didSet {
            var content = defaultContentConfiguration()
            content.text = viewModel.courseName
            guard let imageData = viewModel.imageData else { return }
            content.image = UIImage(data: imageData)
            contentConfiguration = content
        }
    }
}
