library ng2_dart_sample_event.app_component;

import 'package:angular2/angular2.dart';
import 'package:ng2_dart_sample_event/bear_component.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    directives: const [BearComponent, CORE_DIRECTIVES])
class AppComponent {

  int tripleClickTime;

  void onTripleClick(int time) {
    tripleClickTime = time;
  }

}
