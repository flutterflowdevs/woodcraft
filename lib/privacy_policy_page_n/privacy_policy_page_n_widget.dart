import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'privacy_policy_page_n_model.dart';
export 'privacy_policy_page_n_model.dart';

class PrivacyPolicyPageNWidget extends StatefulWidget {
  const PrivacyPolicyPageNWidget({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyPageNWidgetState createState() =>
      _PrivacyPolicyPageNWidgetState();
}

class _PrivacyPolicyPageNWidgetState extends State<PrivacyPolicyPageNWidget> {
  late PrivacyPolicyPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyPageNModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.safePop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20.0,
          ),
        ),
        title: Text(
          'Privacy & Policy',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'LufgaBold',
                color: FlutterFlowTheme.of(context).secondary,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: true,
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/onboardBackImage.png',
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 10.0, 15.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    'At FurniVerse, we value the privacy and security of our users. This Privacy Policy outlines how we collect, use, and protect your personal information when you use our ecommerce app and services. By accessing or using our app, you consent to the practices described in this policy.\n\n1. Information We Collect:\n   - Personal Information: When you create an account, place an order, or interact with our app, we may collect personal information such as your name, email address, shipping address, and payment details.\n   - Usage Information: We gather information about how you use our app, including the pages you visit, products you view, and interactions with features or advertisements.\n\n2. How We Use Your Information:\n   - Personalization: We use your information to provide personalized experiences, such as displaying relevant products, recommendations, or tailored marketing communications.\n   - Order Processing: We use your information to process and fulfill your orders, including payment processing, shipping, and customer support.\n   - Communication: We may contact you with order updates, promotional offers, or important service announcements. You can opt-out of receiving marketing communications at any time.\n   - Improving Our Services: We analyze usage data to improve our app, enhance user experience, and optimize our product offerings.\n\n3. Information Sharing:\n   - Third-Party Service Providers: We may share your information with trusted third-party service providers who assist us in operating our app, processing payments, or delivering products.\n   - Legal Requirements: We may disclose your information in response to legal processes or when required by law to protect our rights, safety, or the rights and safety of others.\n\n4. Data Security:\n   - We employ industry-standard security measures to protect your personal information from unauthorized access, misuse, or loss.\n   - However, please note that no data transmission or storage system can be guaranteed to be 100% secure. We cannot ensure the absolute security of your information.\n\n5. Your Choices:\n   - Account Settings: You can review and update your account information and communication preferences by accessing your account settings.\n   - Cookies and Tracking Technologies: You have the option to manage cookies and tracking technologies through your device or browser settings.\n\n6. Children\'s Privacy:\n   - Our app is not intended for individuals under the age of 13. We do not knowingly collect personal information from children. If you become aware that your child has provided us with personal information, please contact us to have it removed.\n\n7. Updates to this Policy:\n   - We may update this Privacy Policy from time to time. We encourage you to review the latest version whenever you use our app.\n\nIf you have any questions or concerns regarding our Privacy Policy, please contact us at admin@furniverse.com.\n\nNote: This privacy content is a general example and should be tailored to your specific app and business requirements. It is recommended to consult with legal professionals to ensure compliance with applicable laws and regulations.',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'LufgaMedium',
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
