import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'furnitures_details_page_n_model.dart';
export 'furnitures_details_page_n_model.dart';

class FurnituresDetailsPageNWidget extends StatefulWidget {
  const FurnituresDetailsPageNWidget({
    Key? key,
    required this.furnitureInfo,
  }) : super(key: key);

  final FurnituresRow? furnitureInfo;

  @override
  _FurnituresDetailsPageNWidgetState createState() =>
      _FurnituresDetailsPageNWidgetState();
}

class _FurnituresDetailsPageNWidgetState
    extends State<FurnituresDetailsPageNWidget> {
  late FurnituresDetailsPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FurnituresDetailsPageNModel());
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

    return FutureBuilder<List<UsersRow>>(
      future: UsersTable().querySingleRow(
        queryFn: (q) => q.eq(
          'auth_id',
          currentUserUid,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFE29547),
                  ),
                ),
              ),
            ),
          );
        }
        List<UsersRow> furnituresDetailsPageNUsersRowList = snapshot.data!;
        final furnituresDetailsPageNUsersRow =
            furnituresDetailsPageNUsersRowList.isNotEmpty
                ? furnituresDetailsPageNUsersRowList.first
                : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.white,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 300.0,
                                child: Stack(
                                  children: [
                                    PageView(
                                      controller: _model.pageViewController ??=
                                          PageController(initialPage: 0),
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: CachedNetworkImage(
                                                  fadeInDuration: Duration(
                                                      milliseconds: 500),
                                                  fadeOutDuration: Duration(
                                                      milliseconds: 500),
                                                  imageUrl: widget
                                                      .furnitureInfo!
                                                      .defaultImage!,
                                                  width: double.infinity,
                                                  height: 295.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.network(
                                                  widget
                                                      .furnitureInfo!.arImage!,
                                                  width: double.infinity,
                                                  height: 302.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                            if (false)
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 0.0, 0.0),
                                                child: Container(
                                                  width: 32.0,
                                                  height: 32.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF252525),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Icon(
                                                    Icons.arrow_back,
                                                    color: Colors.white,
                                                    size: 26.0,
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.9, 0.0, 17.0, 21.0),
                                        child: smooth_page_indicator
                                            .SmoothPageIndicator(
                                          controller: _model
                                                  .pageViewController ??=
                                              PageController(initialPage: 0),
                                          count: 2,
                                          axisDirection: Axis.horizontal,
                                          onDotClicked: (i) async {
                                            await _model.pageViewController!
                                                .animateToPage(
                                              i,
                                              duration:
                                                  Duration(milliseconds: 500),
                                              curve: Curves.ease,
                                            );
                                          },
                                          effect:
                                              smooth_page_indicator.SlideEffect(
                                            spacing: 4.5,
                                            radius: 16.0,
                                            dotWidth: 4.0,
                                            dotHeight: 4.0,
                                            dotColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent4,
                                            activeDotColor: Color(0xFF121212),
                                            paintStyle: PaintingStyle.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.safePop();
                                  },
                                  child: Container(
                                    width: 32.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF252525),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                      size: 26.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 19.0, 17.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          widget.furnitureInfo!.furnitureName!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'LufgaRegular',
                                                color: Color(0xFF121212),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 15.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            if (!furnituresDetailsPageNUsersRow!
                                                .isFavorite
                                                .contains(widget
                                                    .furnitureInfo?.id
                                                    ?.toString()))
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.8, -0.9),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.favCopy =
                                                        await UsersTable()
                                                            .update(
                                                      data: {
                                                        'is_favorite': functions
                                                            .convertIntToStringList(
                                                                furnituresDetailsPageNUsersRow!
                                                                    .isFavorite
                                                                    .toList(),
                                                                widget
                                                                    .furnitureInfo!
                                                                    .id),
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eq(
                                                        'auth_id',
                                                        currentUserUid,
                                                      ),
                                                      returnRows: true,
                                                    );
                                                    await FavoritesListTable()
                                                        .insert({
                                                      'user_id':
                                                          furnituresDetailsPageNUsersRow
                                                              ?.id,
                                                      'furniture_id': widget
                                                          .furnitureInfo?.id,
                                                      'authId':
                                                          furnituresDetailsPageNUsersRow
                                                              ?.authId,
                                                    });
                                                    setState(() {});

                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Icon(
                                                      Icons.favorite_border,
                                                      color: Color(0xFFA00B13),
                                                      size: 23.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (furnituresDetailsPageNUsersRow
                                                    ?.isFavorite
                                                    ?.contains(widget
                                                        .furnitureInfo?.id
                                                        ?.toString()) ??
                                                true)
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.8, -0.9),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.favCopyCopy =
                                                        await UsersTable()
                                                            .update(
                                                      data: {
                                                        'is_favorite': functions
                                                            .convertIntToStringListCopy(
                                                                furnituresDetailsPageNUsersRow!
                                                                    .isFavorite
                                                                    .toList(),
                                                                widget
                                                                    .furnitureInfo!
                                                                    .id),
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eq(
                                                        'auth_id',
                                                        currentUserUid,
                                                      ),
                                                      returnRows: true,
                                                    );
                                                    await FavoritesListTable()
                                                        .delete(
                                                      matchingRows: (rows) =>
                                                          rows
                                                              .eq(
                                                                'furniture_id',
                                                                widget
                                                                    .furnitureInfo
                                                                    ?.id,
                                                              )
                                                              .eq(
                                                                'user_id',
                                                                furnituresDetailsPageNUsersRow
                                                                    ?.id,
                                                              ),
                                                    );
                                                    setState(() {});

                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Icon(
                                                      Icons.favorite_sharp,
                                                      color: Color(0xFFA00B13),
                                                      size: 23.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 15.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$${widget.furnitureInfo?.furniturePrice.toString()}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 15.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 8.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.solidCircle,
                                              color: Color(0xFF84875E),
                                              size: 24.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 8.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.solidCircle,
                                              color: Color(0xFF3C3838),
                                              size: 24.0,
                                            ),
                                          ),
                                          FaIcon(
                                            FontAwesomeIcons.solidCircle,
                                            color: Color(0xFF06527D),
                                            size: 24.0,
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'View360Page_n',
                                            queryParameters: {
                                              'listImage': serializeParam(
                                                widget.furnitureInfo
                                                    ?.field360Images,
                                                ParamType.String,
                                                true,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/icon_360_part_3.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 40.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 106.0,
                                        height: 37.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFEEDD),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Description',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Reviews',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFAAAAAA),
                                                fontSize: 14.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 28.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          widget.furnitureInfo!
                                              .furnitureDescription!,
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFAAAAAA),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Divider(
                                        thickness: 3.0,
                                        color: Color(0xFFE5E5E5),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 10.0, 28.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Delivery:',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      Text(
                                        ' 15 days after payment confirmation',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFFAAAAAA),
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
                  FutureBuilder<List<UsersRow>>(
                    future: UsersTable().querySingleRow(
                      queryFn: (q) => q.eq(
                        'auth_id',
                        currentUserUid,
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xFFE29547),
                              ),
                            ),
                          ),
                        );
                      }
                      List<UsersRow> containerUsersRowList = snapshot.data!;
                      final containerUsersRow = containerUsersRowList.isNotEmpty
                          ? containerUsersRowList.first
                          : null;
                      return Container(
                        width: double.infinity,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: FutureBuilder<List<CartsCollectionRow>>(
                          future: CartsCollectionTable().queryRows(
                            queryFn: (q) => q.eq(
                              'user_id',
                              containerUsersRow?.id,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xFFE29547),
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<CartsCollectionRow>
                                containerCartsCollectionRowList =
                                snapshot.data!;
                            return Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 5.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Divider(
                                          thickness: 2.0,
                                          color: Color(0xFFE5E5E5),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        21.0, 0.0, 20.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (!functions.newCustomFunction(
                                                containerCartsCollectionRowList
                                                    .toList(),
                                                widget.furnitureInfo!.id))
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  _model.addedRow =
                                                      await CartsCollectionTable()
                                                          .insert({
                                                    'user_id':
                                                        containerUsersRow?.id,
                                                    'furniture_id': widget
                                                        .furnitureInfo?.id,
                                                    'auth_id': containerUsersRow
                                                        ?.authId,
                                                    'amt': widget.furnitureInfo
                                                        ?.furniturePrice,
                                                    'count': 1,
                                                  });
                                                  FFAppState().update(() {
                                                    FFAppState().totalAmount =
                                                        FFAppState()
                                                                .totalAmount +
                                                            _model
                                                                .addedRow!.amt!
                                                                .toDouble();
                                                  });

                                                  setState(() {});
                                                },
                                                text: 'Add to cart',
                                                options: FFButtonOptions(
                                                  width: 83.0,
                                                  height: 40.0,
                                                  padding: EdgeInsets.all(0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Colors.white,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'LufgaSemiBold',
                                                        color: Colors.black,
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: false,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            if (functions.newCustomFunction(
                                                containerCartsCollectionRowList
                                                    .toList(),
                                                widget.furnitureInfo!.id))
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  context.pushNamed(
                                                    'CustomNavbarPage',
                                                    queryParameters: {
                                                      'currentIndex':
                                                          serializeParam(
                                                        1,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                text: 'Go to Cart',
                                                options: FFButtonOptions(
                                                  width: 83.0,
                                                  height: 40.0,
                                                  padding: EdgeInsets.all(0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Colors.white,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'LufgaSemiBold',
                                                        color: Colors.black,
                                                        fontSize: 10.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: false,
                                                      ),
                                                  elevation: 3.0,
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'ViewARPage_n',
                                                queryParameters: {
                                                  'image': serializeParam(
                                                    widget
                                                        .furnitureInfo?.arImage,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Container(
                                              width: 235.0,
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 30.0,
                                                    height: 30.0,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: SvgPicture.asset(
                                                      'assets/images/phone.svg',
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 2.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Set in your spcae',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.white,
                                                            fontSize: 12.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
