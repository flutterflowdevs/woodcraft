import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/chair_descp_widget.dart';
import '/components/home_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_n_model.dart';
export 'home_page_n_model.dart';

class HomePageNWidget extends StatefulWidget {
  const HomePageNWidget({Key? key}) : super(key: key);

  @override
  _HomePageNWidgetState createState() => _HomePageNWidgetState();
}

class _HomePageNWidgetState extends State<HomePageNWidget> {
  late HomePageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageNModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFE5E5E5),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 270.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF00332B),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/homepage_img.png',
                                    width: double.infinity,
                                    height: 270.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'Set up your space easily',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'LufgaBold',
                                                color: Colors.white,
                                                fontSize: 19.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      if (false)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  34.0, 23.0, 34.0, 0.0),
                                          child: Container(
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(11.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.textController,
                                                focusNode:
                                                    _model.textFieldFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'LufgaMedium',
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                  hintText: 'Search Item',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color: Colors.black,
                                                        fontSize: 11.0,
                                                      ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  prefixIcon: Icon(
                                                    Icons.search,
                                                    color: Color(0xFF495A57),
                                                    size: 17.0,
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .textControllerValidator
                                                    .asValidator(context),
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
                                0.0, 245.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFE5E5E5),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(16.0),
                                  topRight: Radius.circular(16.0),
                                ),
                              ),
                              child: FutureBuilder<List<UsersRow>>(
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            Color(0xFFE29547),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<UsersRow> columnUsersRowList =
                                      snapshot.data!;
                                  final columnUsersRow =
                                      columnUsersRowList.isNotEmpty
                                          ? columnUsersRowList.first
                                          : null;
                                  return SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 44.0, 15.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.homeBarModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: HomeBarWidget(),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  21.0, 23.0, 21.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Latest Release',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'LufgaSemiBold',
                                                          color:
                                                              Color(0xFF121212),
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                      'ShowFurnituresPage_n');
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'See all',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFFE29547),
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  7.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .arrowRight,
                                                        color:
                                                            Color(0xFFE29547),
                                                        size: 16.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        if (FFAppState().selectedCategory ==
                                            'All')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 18.0, 10.0, 0.0),
                                            child: FutureBuilder<
                                                List<FurnituresRow>>(
                                              future:
                                                  FurnituresTable().queryRows(
                                                queryFn: (q) => q,
                                                limit: 4,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          Color(0xFFE29547),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<FurnituresRow>
                                                    gridViewFurnituresRowList =
                                                    snapshot.data!;
                                                return GridView.builder(
                                                  padding: EdgeInsets.zero,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    crossAxisSpacing: 9.0,
                                                    mainAxisSpacing: 12.0,
                                                    childAspectRatio: 1.0,
                                                  ),
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      gridViewFurnituresRowList
                                                          .length,
                                                  itemBuilder:
                                                      (context, gridViewIndex) {
                                                    final gridViewFurnituresRow =
                                                        gridViewFurnituresRowList[
                                                            gridViewIndex];
                                                    return ChairDescpWidget(
                                                      key: Key(
                                                          'Keyl40_${gridViewIndex}_of_${gridViewFurnituresRowList.length}'),
                                                      prodImage:
                                                          gridViewFurnituresRow
                                                              .defaultImage,
                                                      prodPrice:
                                                          gridViewFurnituresRow
                                                              .furniturePrice,
                                                      prodName:
                                                          gridViewFurnituresRow
                                                              .furnitureName,
                                                      icon1: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            Color(0xFFA00B13),
                                                      ),
                                                      icon2: Icon(
                                                        Icons.favorite_sharp,
                                                        color:
                                                            Color(0xFFA00B13),
                                                      ),
                                                      productId:
                                                          gridViewFurnituresRow
                                                              .id,
                                                      favorites: columnUsersRow!
                                                          .isFavorite,
                                                      tapAction: () async {
                                                        context.pushNamed(
                                                          'FurnituresDetailsPage_n',
                                                          queryParameters: {
                                                            'furnitureInfo':
                                                                serializeParam(
                                                              gridViewFurnituresRow,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      bookmarkedAction:
                                                          () async {
                                                        _model.favCopy =
                                                            await UsersTable()
                                                                .update(
                                                          data: {
                                                            'is_favorite': functions
                                                                .convertIntToStringList(
                                                                    columnUsersRow!
                                                                        .isFavorite
                                                                        .toList(),
                                                                    gridViewFurnituresRow
                                                                        .id),
                                                          },
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'auth_id',
                                                            currentUserUid,
                                                          ),
                                                          returnRows: true,
                                                        );
                                                        await FavoritesListTable()
                                                            .insert({
                                                          'user_id':
                                                              columnUsersRow
                                                                  ?.id,
                                                          'furniture_id':
                                                              gridViewFurnituresRow
                                                                  .id,
                                                          'authId':
                                                              columnUsersRow
                                                                  ?.authId,
                                                        });
                                                        setState(() {});

                                                        setState(() {});
                                                      },
                                                      unbookmarkedAction:
                                                          () async {
                                                        _model.favCopyCopy =
                                                            await UsersTable()
                                                                .update(
                                                          data: {
                                                            'is_favorite': functions
                                                                .convertIntToStringListCopy(
                                                                    columnUsersRow!
                                                                        .isFavorite
                                                                        .toList(),
                                                                    gridViewFurnituresRow
                                                                        .id),
                                                          },
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'auth_id',
                                                            currentUserUid,
                                                          ),
                                                          returnRows: true,
                                                        );
                                                        await FavoritesListTable()
                                                            .delete(
                                                          matchingRows:
                                                              (rows) => rows
                                                                  .eq(
                                                                    'furniture_id',
                                                                    gridViewFurnituresRow
                                                                        .id,
                                                                  )
                                                                  .eq(
                                                                    'user_id',
                                                                    columnUsersRow
                                                                        ?.id,
                                                                  ),
                                                        );
                                                        setState(() {});

                                                        setState(() {});
                                                      },
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        if (FFAppState().selectedCategory !=
                                            'All')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 18.0, 10.0, 0.0),
                                            child: FutureBuilder<
                                                List<FurnituresRow>>(
                                              future:
                                                  FurnituresTable().queryRows(
                                                queryFn: (q) => q.eq(
                                                  'category_1',
                                                  FFAppState().selectedCategory,
                                                ),
                                                limit: 4,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          Color(0xFFE29547),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<FurnituresRow>
                                                    gridViewFurnituresRowList =
                                                    snapshot.data!;
                                                return GridView.builder(
                                                  padding: EdgeInsets.zero,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    crossAxisSpacing: 9.0,
                                                    mainAxisSpacing: 12.0,
                                                    childAspectRatio: 1.0,
                                                  ),
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      gridViewFurnituresRowList
                                                          .length,
                                                  itemBuilder:
                                                      (context, gridViewIndex) {
                                                    final gridViewFurnituresRow =
                                                        gridViewFurnituresRowList[
                                                            gridViewIndex];
                                                    return ChairDescpWidget(
                                                      key: Key(
                                                          'Key96f_${gridViewIndex}_of_${gridViewFurnituresRowList.length}'),
                                                      prodImage:
                                                          gridViewFurnituresRow
                                                              .defaultImage,
                                                      prodPrice:
                                                          gridViewFurnituresRow
                                                              .furniturePrice,
                                                      prodName:
                                                          gridViewFurnituresRow
                                                              .furnitureName,
                                                      icon1: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            Color(0xFFA00B13),
                                                      ),
                                                      icon2: Icon(
                                                        Icons.favorite_sharp,
                                                        color:
                                                            Color(0xFFA00B13),
                                                      ),
                                                      productId:
                                                          gridViewFurnituresRow
                                                              .id,
                                                      favorites: columnUsersRow!
                                                          .isFavorite,
                                                      tapAction: () async {
                                                        context.pushNamed(
                                                          'FurnituresDetailsPage_n',
                                                          queryParameters: {
                                                            'furnitureInfo':
                                                                serializeParam(
                                                              gridViewFurnituresRow,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      bookmarkedAction:
                                                          () async {
                                                        _model.favCopyCopy2 =
                                                            await UsersTable()
                                                                .update(
                                                          data: {
                                                            'is_favorite': functions
                                                                .convertIntToStringList(
                                                                    columnUsersRow!
                                                                        .isFavorite
                                                                        .toList(),
                                                                    gridViewFurnituresRow
                                                                        .id),
                                                          },
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'auth_id',
                                                            currentUserUid,
                                                          ),
                                                          returnRows: true,
                                                        );
                                                        await FavoritesListTable()
                                                            .insert({
                                                          'user_id':
                                                              columnUsersRow
                                                                  ?.id,
                                                          'furniture_id':
                                                              gridViewFurnituresRow
                                                                  .id,
                                                          'authId':
                                                              columnUsersRow
                                                                  ?.authId,
                                                        });
                                                        setState(() {});

                                                        setState(() {});
                                                      },
                                                      unbookmarkedAction:
                                                          () async {
                                                        _model.favCopyCopyCopy =
                                                            await UsersTable()
                                                                .update(
                                                          data: {
                                                            'is_favorite': functions
                                                                .convertIntToStringListCopy(
                                                                    columnUsersRow!
                                                                        .isFavorite
                                                                        .toList(),
                                                                    gridViewFurnituresRow
                                                                        .id),
                                                          },
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'auth_id',
                                                            currentUserUid,
                                                          ),
                                                          returnRows: true,
                                                        );
                                                        await FavoritesListTable()
                                                            .delete(
                                                          matchingRows:
                                                              (rows) => rows
                                                                  .eq(
                                                                    'furniture_id',
                                                                    gridViewFurnituresRow
                                                                        .id,
                                                                  )
                                                                  .eq(
                                                                    'user_id',
                                                                    columnUsersRow
                                                                        ?.id,
                                                                  ),
                                                        );
                                                        setState(() {});

                                                        setState(() {});
                                                      },
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  18.0, 25.0, 21.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 99.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF2D0A3),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(22.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Virtual Reality Showroom',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'LufgaBold',
                                                                color: Color(
                                                                    0xFFE68314),
                                                                fontSize: 13.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            2.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Allows you to view our showrooms containing our latest furniture collections',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'LufgaMedium',
                                                                        color: Color(
                                                                            0xFFE29547),
                                                                        fontSize:
                                                                            6.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      2.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Coming Soon...',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'LufgaMedium',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  fontSize:
                                                                      10.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 13.0, 5.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    child: Image.asset(
                                                      'assets/images/gaming(quality_inc).png',
                                                      width: 140.0,
                                                      height: 83.0,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  21.0, 23.0, 21.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Latest Release',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'LufgaSemiBold',
                                                          color:
                                                              Color(0xFF121212),
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.goNamed(
                                                      'ShowFurnituresPage_n');
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'See all',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFFE29547),
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  7.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .arrowRight,
                                                        color:
                                                            Color(0xFFE29547),
                                                        size: 16.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        if (FFAppState().selectedCategory ==
                                            'All')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 18.0, 10.0, 44.0),
                                            child: FutureBuilder<
                                                List<FurnituresRow>>(
                                              future:
                                                  FurnituresTable().queryRows(
                                                queryFn: (q) => q,
                                                limit: 2,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          Color(0xFFE29547),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<FurnituresRow>
                                                    gridViewFurnituresRowList =
                                                    snapshot.data!;
                                                return GridView.builder(
                                                  padding: EdgeInsets.zero,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    crossAxisSpacing: 9.0,
                                                    mainAxisSpacing: 12.0,
                                                    childAspectRatio: 1.0,
                                                  ),
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      gridViewFurnituresRowList
                                                          .length,
                                                  itemBuilder:
                                                      (context, gridViewIndex) {
                                                    final gridViewFurnituresRow =
                                                        gridViewFurnituresRowList[
                                                            gridViewIndex];
                                                    return ChairDescpWidget(
                                                      key: Key(
                                                          'Keyg88_${gridViewIndex}_of_${gridViewFurnituresRowList.length}'),
                                                      prodImage:
                                                          gridViewFurnituresRow
                                                              .defaultImage,
                                                      prodPrice:
                                                          gridViewFurnituresRow
                                                              .furniturePrice,
                                                      prodName:
                                                          gridViewFurnituresRow
                                                              .furnitureName,
                                                      icon1: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            Color(0xFFA00B13),
                                                      ),
                                                      icon2: Icon(
                                                        Icons.favorite_sharp,
                                                        color:
                                                            Color(0xFFA00B13),
                                                      ),
                                                      productId:
                                                          gridViewFurnituresRow
                                                              .id,
                                                      favorites: columnUsersRow!
                                                          .isFavorite,
                                                      tapAction: () async {
                                                        context.pushNamed(
                                                          'FurnituresDetailsPage_n',
                                                          queryParameters: {
                                                            'furnitureInfo':
                                                                serializeParam(
                                                              gridViewFurnituresRow,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      bookmarkedAction:
                                                          () async {
                                                        _model.favCopyCopy2Copy =
                                                            await UsersTable()
                                                                .update(
                                                          data: {
                                                            'is_favorite': functions
                                                                .convertIntToStringList(
                                                                    columnUsersRow!
                                                                        .isFavorite
                                                                        .toList(),
                                                                    columnUsersRow!
                                                                        .id),
                                                          },
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'auth_id',
                                                            currentUserUid,
                                                          ),
                                                          returnRows: true,
                                                        );
                                                        await FavoritesListTable()
                                                            .insert({
                                                          'user_id':
                                                              columnUsersRow
                                                                  ?.id,
                                                          'furniture_id':
                                                              gridViewFurnituresRow
                                                                  .id,
                                                          'authId':
                                                              columnUsersRow
                                                                  ?.authId,
                                                        });
                                                        setState(() {});

                                                        setState(() {});
                                                      },
                                                      unbookmarkedAction:
                                                          () async {
                                                        _model.favCopyCopyCopy2 =
                                                            await UsersTable()
                                                                .update(
                                                          data: {
                                                            'is_favorite': functions
                                                                .convertIntToStringListCopy(
                                                                    columnUsersRow!
                                                                        .isFavorite
                                                                        .toList(),
                                                                    gridViewFurnituresRow
                                                                        .id),
                                                          },
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'auth_id',
                                                            currentUserUid,
                                                          ),
                                                          returnRows: true,
                                                        );
                                                        await FavoritesListTable()
                                                            .delete(
                                                          matchingRows:
                                                              (rows) => rows
                                                                  .eq(
                                                                    'furniture_id',
                                                                    gridViewFurnituresRow
                                                                        .id,
                                                                  )
                                                                  .eq(
                                                                    'user_id',
                                                                    columnUsersRow
                                                                        ?.id,
                                                                  ),
                                                        );
                                                        setState(() {});

                                                        setState(() {});
                                                      },
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        if (FFAppState().selectedCategory !=
                                            'All')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 18.0, 10.0, 44.0),
                                            child: FutureBuilder<
                                                List<FurnituresRow>>(
                                              future:
                                                  FurnituresTable().queryRows(
                                                queryFn: (q) => q.eq(
                                                  'category_1',
                                                  FFAppState().selectedCategory,
                                                ),
                                                limit: 2,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          Color(0xFFE29547),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<FurnituresRow>
                                                    gridViewFurnituresRowList =
                                                    snapshot.data!;
                                                return GridView.builder(
                                                  padding: EdgeInsets.zero,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    crossAxisSpacing: 9.0,
                                                    mainAxisSpacing: 12.0,
                                                    childAspectRatio: 1.0,
                                                  ),
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      gridViewFurnituresRowList
                                                          .length,
                                                  itemBuilder:
                                                      (context, gridViewIndex) {
                                                    final gridViewFurnituresRow =
                                                        gridViewFurnituresRowList[
                                                            gridViewIndex];
                                                    return ChairDescpWidget(
                                                      key: Key(
                                                          'Keyii7_${gridViewIndex}_of_${gridViewFurnituresRowList.length}'),
                                                      prodImage:
                                                          gridViewFurnituresRow
                                                              .defaultImage,
                                                      prodPrice:
                                                          gridViewFurnituresRow
                                                              .furniturePrice,
                                                      prodName:
                                                          gridViewFurnituresRow
                                                              .furnitureName,
                                                      icon1: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            Color(0xFFA00B13),
                                                      ),
                                                      icon2: Icon(
                                                        Icons.favorite_sharp,
                                                        color:
                                                            Color(0xFFA00B13),
                                                      ),
                                                      productId:
                                                          gridViewFurnituresRow
                                                              .id,
                                                      favorites: columnUsersRow!
                                                          .isFavorite,
                                                      tapAction: () async {
                                                        context.pushNamed(
                                                          'FurnituresDetailsPage_n',
                                                          queryParameters: {
                                                            'furnitureInfo':
                                                                serializeParam(
                                                              gridViewFurnituresRow,
                                                              ParamType
                                                                  .SupabaseRow,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      bookmarkedAction:
                                                          () async {
                                                        _model.favCopyCopy2Copy2 =
                                                            await UsersTable()
                                                                .update(
                                                          data: {
                                                            'is_favorite': functions
                                                                .convertIntToStringList(
                                                                    columnUsersRow!
                                                                        .isFavorite
                                                                        .toList(),
                                                                    gridViewFurnituresRow
                                                                        .id),
                                                          },
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'auth_id',
                                                            currentUserUid,
                                                          ),
                                                          returnRows: true,
                                                        );
                                                        await FavoritesListTable()
                                                            .insert({
                                                          'user_id':
                                                              columnUsersRow
                                                                  ?.id,
                                                          'furniture_id':
                                                              gridViewFurnituresRow
                                                                  .id,
                                                          'authId':
                                                              columnUsersRow
                                                                  ?.authId,
                                                        });
                                                        setState(() {});

                                                        setState(() {});
                                                      },
                                                      unbookmarkedAction:
                                                          () async {
                                                        _model.favCopyCopyCopy3 =
                                                            await UsersTable()
                                                                .update(
                                                          data: {
                                                            'is_favorite': functions
                                                                .convertIntToStringListCopy(
                                                                    columnUsersRow!
                                                                        .isFavorite
                                                                        .toList(),
                                                                    gridViewFurnituresRow
                                                                        .id),
                                                          },
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'auth_id',
                                                            currentUserUid,
                                                          ),
                                                          returnRows: true,
                                                        );
                                                        await FavoritesListTable()
                                                            .delete(
                                                          matchingRows:
                                                              (rows) => rows
                                                                  .eq(
                                                                    'furniture_id',
                                                                    gridViewFurnituresRow
                                                                        .id,
                                                                  )
                                                                  .eq(
                                                                    'user_id',
                                                                    columnUsersRow
                                                                        ?.id,
                                                                  ),
                                                        );
                                                        setState(() {});

                                                        setState(() {});
                                                      },
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
