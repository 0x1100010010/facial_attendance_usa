import 'package:facialattendanceusa/constants/route_names.dart';
import 'package:facialattendanceusa/locator.dart';
import 'package:facialattendanceusa/services/authentication_service.dart';
import 'package:facialattendanceusa/services/navigation_service.dart';
import 'package:facialattendanceusa/viewmodels/base_model.dart';

class StartUpViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future handleStartUpLogic() async {
    var hasLoggedInUser = await _authenticationService.isUserLoggedIn();

    if (hasLoggedInUser) {
      _navigationService.navigateTo(HomeViewRoute);
    } else {
      _navigationService.navigateTo(LoginViewRoute);
    }
  }
}
