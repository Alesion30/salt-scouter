import 'package:auto_route/auto_route.dart';
import 'package:salt_scouter/ui/routes/route_path.dart';
import 'package:salt_scouter/ui/scouter/scouter_page.dart';
import 'package:salt_scouter/ui/xxx/xxx_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: RoutePath.appRouteXXX,
      page: XXXPage,
    ),
    AutoRoute(
      path: RoutePath.appRouteScouter,
      page: ScouterPage,
      initial: true,
    ),
  ],
)
class $AppRouter {}
