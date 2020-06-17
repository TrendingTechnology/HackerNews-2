//
//  StoriesRouterInput.swift
//  HackerNews
//
//  Created by Nikita Vasilev on 04/03/2020.
//  Copyright © 2020 Nikita Vasilev. All rights reserved.
//

import Foundation
import struct HNService.PostModel

protocol StoriesRouterInput {
    func openFilterModule(with models: [AlertActionModel])
    func openCommentsModule(for post: PostModel)
    func openStories(from url: String)
}
