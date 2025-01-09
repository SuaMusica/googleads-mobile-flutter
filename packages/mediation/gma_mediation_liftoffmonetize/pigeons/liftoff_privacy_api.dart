// Copyright 2024 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/liftoff_privacy_api.g.dart',
    dartOptions: DartOptions(),
    kotlinOut:
        'android/src/main/kotlin/io/flutter/plugins/googlemobileads/mediation/gma_mediation_liftoffmonetize/LiftoffPrivacyApi.g.kt',
    kotlinOptions: KotlinOptions(
      package:
          'io.flutter.plugins.googlemobileads.mediation.gma_mediation_liftoffmonetize',
    ),
    swiftOut: 'ios/Classes/LiftoffPrivacyApi.g.swift',
    swiftOptions: SwiftOptions(),
    dartPackageName: 'gma_mediation_liftoffmonetize',
  ),
)
@HostApi()

/// The generated classes set the channels to call the methods in the corresponding kotlin LiftoffPrivacyApi interface and swift LiftoffPrivacyApi protocol from the dart layer.
abstract class LiftoffPrivacyApi {
  /// Used to configure GDPR status on the Android or iOS Liftoff Monetize SDK
  void setGDPRStatus(bool optedIn, String? consentMessageVersion);

  /// Used to configure CCPA consent on the Android or iOS Liftoff Monetize SDK
  void setCCPAStatus(bool optedIn);
}
