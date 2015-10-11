//
// Copyright (C) 2014 Twitter, Inc. and other contributors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//         http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import UIKit

class ImageCarouselCollectionViewCell: UICollectionViewCell {

    var image: UIImage? {
        didSet {
            imageView.image = image
        }
    }

    private var imageView: UIImageView!

    override init(frame: CGRect) {
        super.init(frame: frame)

        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        commonInit()
    }

    private func commonInit() {
        imageView = UIImageView()
        contentView.addSubview(imageView)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        imageView.frame = contentView.bounds
    }

}
