import 'package:evision_distribution_app/models/po_model.dart';
import 'package:evision_distribution_app/pages/loading/add_loading_page.dart';
import 'package:evision_distribution_app/pages/loading/loading_list_page.dart';
import 'package:evision_distribution_app/pages/purchase_order/add_purchase_order_page.dart';
import 'package:evision_distribution_app/pages/company_configuration_page.dart';
import 'package:evision_distribution_app/pages/company_page.dart';
import 'package:evision_distribution_app/pages/dashboard_page.dart';
import 'package:evision_distribution_app/pages/grn_list_page.dart';
import 'package:evision_distribution_app/pages/grn_page.dart';
import 'package:evision_distribution_app/pages/home_page.dart';
import 'package:evision_distribution_app/pages/login_page.dart';
import 'package:evision_distribution_app/pages/pending_po_page.dart';
import 'package:evision_distribution_app/pages/purchase_order/purchase_orders_list_page.dart';
import 'package:evision_distribution_app/pages/select_company_page.dart';
import 'package:evision_distribution_app/pages/settings_page.dart';
import 'package:evision_distribution_app/pages/start_cofiguration_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SelectCompanyPage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/company':
        return MaterialPageRoute(builder: (_) => const CompanyPage());
      case '/purchase_order':
        return MaterialPageRoute(builder: (_) => const PurchaseOrdersListPage());

      case '/add_purchase_order':
        return MaterialPageRoute(builder: (_) => const AddPurchaseOrderPage());
      case '/loading_list':
        return MaterialPageRoute(builder: (_) => const LoadingListPage());
      case '/add_loading':
        return MaterialPageRoute(builder: (_) => const AddLoadingPage());
      case '/company_configuration':
        return MaterialPageRoute(builder: (_) => const CompanyConfigurationPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/start_configuration':
        return MaterialPageRoute(builder: (_) => const StartConfigurationPage());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => const DashboardPage());
      case '/settings':
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case '/grn_list':
        return MaterialPageRoute(builder: (_) => const GrnListPage());
      case '/pending_po':
        return MaterialPageRoute(builder: (_) => const PendingPoPage());
      case '/grn':
        if (args is PoModel) {
          return MaterialPageRoute(
            builder: (_) => GrnPage(
              data: args,
            ),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
