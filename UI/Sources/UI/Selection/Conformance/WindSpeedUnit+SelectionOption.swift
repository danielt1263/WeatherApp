//
//  WindSpeedUnit+SelectionOption.swift
//  UI
//
//  Created by Carl Funk on 11/24/23.
//  Copyright © 2023 Carl Funk. All rights reserved.
//

import WeatherDomain

extension WindSpeedUnit: SelectionOption {
    public var selectionValue: String {
        return self.abbreviation
    }
}