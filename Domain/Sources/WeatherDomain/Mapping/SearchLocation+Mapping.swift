//
//  SearchLocation+Mapping.swift
//  WeatherDomain
//
//  Created by Carl Funk on 11/21/22.
//  Copyright © 2022 Carl Funk. All rights reserved.
//

import Foundation
import WeatherData

extension SearchLocation {
    init(from response: SearchLocationInnerResponseModel) {
        self.id = response.id
        self.location = WeatherLocation(
            id: String(response.id),
            name: response.name,
            region: response.region,
            country: response.country,
            coordinate: GeographicCoordinate(
                latitude: response.latitude,
                longitude: response.longitude),
            isFavorite: false,
            isPrimary: false)
        self.locationQuery = response.query
    }
}