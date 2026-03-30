import 'package:finch/finch_route.dart';

class HomeController extends Controller {
  HomeController();

  @override
  Future<String> index() async {
    return rq.renderView(path: 'home');
  }
}
