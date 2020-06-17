//
//  AskRouterInput.swift
//  HackerNews
//
//  Created by Nikita Vasilev on 02/05/2020.
//  Copyright © 2020 Nikita Vasilev. All rights reserved.
//

import struct HNService.PostModel

protocol AskRouterInput {
    func openCommentsModule(for post: PostModel)
}
