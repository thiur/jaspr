// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:jaspr/html.dart';

/// Default error page implementation.
class ErrorScreen extends StatelessComponent {
  /// Provide an exception to this page for it to be displayed.
  const ErrorScreen(this.error, {super.key});

  /// The exception to be displayed.
  final Exception? error;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      text('Page Not Found'),
      br(),
      text(error?.toString() ?? 'page not found'),
    ]);
  }
}
