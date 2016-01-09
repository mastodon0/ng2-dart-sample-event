library ng2_dart_sample_event.kitten_component;

import 'package:angular2/angular2.dart';

@Component(selector: 'bear-component', templateUrl: 'bear_component.html', host: const {
  '(click)': 'onClick()'
})
class BearComponent {

  @Output()
  EventEmitter<int> tripleClick = new EventEmitter();

  int _clickCount;
  DateTime _clickStart;

  void onClick() {
    if (_clickStart == null) {
      _clickStart = new DateTime.now();
      _clickCount = 1;
    } else {
      _clickCount++;

      if (_clickCount == 3) {
        tripleClick.emit(_clickStart.difference(new DateTime.now()).inMilliseconds.abs());
        _clickStart = null;
      }
    }
  }

}
