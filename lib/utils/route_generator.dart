import 'package:flutter/material.dart';
import 'package:princeton_hive/presentation/layouts/check_batch.dart';
import 'package:princeton_hive/presentation/layouts/create_activity_page.dart';
import 'package:princeton_hive/presentation/layouts/create_profie_page.dart';
import 'package:princeton_hive/presentation/layouts/dashboard.dart';
import 'package:princeton_hive/presentation/layouts/event_gkim.dart';
import 'package:princeton_hive/presentation/layouts/forgot_password.dart';
import 'package:princeton_hive/presentation/layouts/how_it_works_page.dart';
import 'package:princeton_hive/presentation/layouts/looking_for_page.dart';
import 'package:princeton_hive/presentation/layouts/looking_for_page2.dart';
import 'package:princeton_hive/presentation/layouts/mentor_list.dart';
import 'package:princeton_hive/presentation/layouts/profile_completed.dart';
import 'package:princeton_hive/presentation/layouts/readliness_page.dart';
import 'package:princeton_hive/presentation/layouts/signin_page.dart';
import 'package:princeton_hive/presentation/layouts/journey_page.dart';
import 'package:princeton_hive/presentation/layouts/splash_screen.dart';

import '../presentation/layouts/activities.dart';
import '../presentation/layouts/payment.dart';
import '../presentation/layouts/result.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SignInPage());
      case '/profile':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => CreateProfile(
              //data: args,
              ),
        );
      case '/forgot_password':
        return MaterialPageRoute(
          builder: (_) => ForgotPassword(
              //data: args,
              ),
        );
      case '/completed_profile':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => ProfileCompleted(
              //data: args,
              ),
        );
      case '/lookingfor':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => LookingFor(
              //data: args,
              ),
        );
      case '/lookingfor_2':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => LookingFor2(
              //data: args,
              ),
        );
      case '/readliness':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => Readliness(
              //data: args,
              ),
        );
      case '/journey':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => JourneyPage(
              //data: args,
              ),
        );
      case '/how_it_works':
        // Validation of correct data type

        return MaterialPageRoute(
          builder: (_) => HowItWorks(
              //data: args,
              ),
        );
      case '/dashboard':
        return MaterialPageRoute(
          builder: (_) => Dashboard(),
        );
         case '/create_activity':
        return MaterialPageRoute(
          builder: (_) => CreateActivity(),
        );
      case '/activity':
        return MaterialPageRoute(
          builder: (_) => Activity(),
        );
      case '/result':
        return MaterialPageRoute(
          builder: (_) => Result(),
        );
      case '/event_glim' :
        return MaterialPageRoute(
          builder: (_) => Glim(),
        );
      case '/mentor' :
        return MaterialPageRoute(
          builder: (_) => Mentor(),
        );
      case '/batch' :
        return MaterialPageRoute(
          builder: (_) => Batch(),
        );
      case '/payment' :
        return MaterialPageRoute(
          builder: (_) => Payment(),
        );
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
