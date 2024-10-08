//
//  Movie.swift
//  A
//
//  Created by Henry on 10/7/24.
//

import Foundation

/**
    도메인 설계
    ** 필요한 필드만 포함

    1. API가 있는 경우
        API와 도메인 일치
    2. 없는 경우
        식별한 비즈니스 도메인을 기준으로 개발

        Q. 구현한 도메인과 백엔드 API와 차이가 있다면?
        A. Mapper를 활용하자
*/

struct Movie {
    let id: String
    let release_date: Date
    let popularity: Double
    let original_title: String
    let adult: Bool
    let genre_ids: [GENRE]
}

// VALUE-OBJECT or ADT
enum GENRE {
    case ACTION

    var value: Double {
        switch self {
        case .ACTION: return 31
        }
    }
}

extension Movie: Equatable {}
