import 'package:evision_distribution_app/components/app_button.dart';
import 'package:evision_distribution_app/components/center_content_card.dart';
import 'package:evision_distribution_app/components/default_background.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  WebViewController controller = WebViewController();

  @override
  void initState() {
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://themesbrand.com/velzon/html/default/index.html'),
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultBackground(
      title: "John Keells Company",
      subtitle: "Distributor Code : D569",
      widget: CenterContentCard(
        title: 'Dashboard',
        content: Column(
          children: [
            Container(
              height: (displayHeight(context) * 0.7) - 80.0,
              padding: const EdgeInsets.only(top: 25.0),
              margin: const EdgeInsets.only(bottom: 20.0),
              child: WebViewWidget(controller: controller),
            ),
            const AppButton(
              displayText: 'Home',
              icon: Icons.home,
              height: 31.0,
              width: 130.0,
              route: '/home',
            )
          ],
        ),
      ),
    );
  }
}
