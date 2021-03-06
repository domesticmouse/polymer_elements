// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
@TestOn('browser')
library polymer_elements.test.iron_list_physical_count_test;

import 'dart:async';
import 'dart:html';
import 'dart:js';
import 'package:polymer_elements/iron_list.dart';
import 'package:polymer/polymer.dart';
import 'package:test/test.dart';
import 'package:web_components/web_components.dart';
import 'common.dart';
import 'iron_list_test_helpers.dart';
import 'fixtures/x_list.dart';

main() async {
  await initPolymer();

  group('dynamic physical count', () {
    IronList list;
    XList container;

    setUp(() {
      container = fixture('trivialList');
      list = container.list;
      list.items = buildDataSet(200);
    });

    test('increase pool size', () async {
      await wait(100);
      var lastItem = getLastItemFromList(list);
      var lastItemHeight = lastItem.offsetHeight;
      var expectedFinalItem = (container.listHeight / lastItemHeight).floor();
      expect(lastItemHeight, 2);
      expect(getLastItemFromList(list).text, expectedFinalItem.toString());
    });
  });

  group('iron-resize', () {
    IronList list;
    XList container;

    setUp(() {
      container = fixture('trivialListSmall');
      list = container.list;
      list.items = buildDataSet(200);
    });

    test('increase pool size on resize', () async {
      await wait(1);
      // resize
      list.fire('iron-resize');

      await wait(100);
      var lastItem = getLastItemFromList(list);
      var lastItemHeight = lastItem.offsetHeight;
      int expectedFinalItem = (container.listHeight / lastItemHeight).round();

      expect(list.offsetHeight, container.listHeight);
      expect(lastItemHeight, 2);
      expect(getLastItemFromList(list).text, '$expectedFinalItem');
    });
  });
}
