import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/app_button.dart';
import 'package:evision_distribution_app/components/default_background.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      widget: Expanded(
        child: ListView(
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
          children: [
            Container(
              height: 33.0,
              decoration: const BoxDecoration(
                color: mainAppButtonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                ),
              ),
              child: Center(
                child: Text(
                  'Dashboard',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: displayHeight(context) * 0.7,
              decoration: AppTheme.containerBoxDecoration.copyWith(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(11.0),
                  bottomRight: Radius.circular(11.0),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 5.0,
                    ),
                    child: Divider(
                      color: mainAppButtonBackgroundColor,
                      height: 1.0,
                    ),
                  ),
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
            )
          ],
        ),
      ),
    );
  }
}
