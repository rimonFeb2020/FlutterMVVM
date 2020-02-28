import 'package:learing_mvvm/core/services/api.dart';
import 'package:learing_mvvm/locator.dart';

class AuthenticationService {
  Api _api = locator<Api>();

  Future<bool> login(int userId) async {
    var fetchedUser = await _api.getUserProfile(userId);

    var hasUser = fetchedUser != null;
    return hasUser;
  }
}
