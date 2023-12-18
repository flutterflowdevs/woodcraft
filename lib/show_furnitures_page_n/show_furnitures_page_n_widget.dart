import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/chair_descp_widget.dart';
import '/components/sorting_furniture_lists_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'show_furnitures_page_n_model.dart';
export 'show_furnitures_page_n_model.dart';

class ShowFurnituresPageNWidget extends StatefulWidget {
  const ShowFurnituresPageNWidget({Key? key}) : super(key: key);

  @override
  _ShowFurnituresPageNWidgetState createState() =>
      _ShowFurnituresPageNWidgetState();
}

class _ShowFurnituresPageNWidgetState extends State<ShowFurnituresPageNWidget> {
  late ShowFurnituresPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShowFurnituresPageNModel());
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
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
            child: Text(
              'Furnitures',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Open Sans',
                    color: FlutterFlowTheme.of(context).secondary,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          actions: [
            Visibility(
              visible: false,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 28.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return GestureDetector(
                          onTap: () => _model.unfocusNode.canRequestFocus
                              ? FocusScope.of(context)
                                  .requestFocus(_model.unfocusNode)
                              : FocusScope.of(context).unfocus(),
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: SortingFurnitureListsWidget(),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  child: Icon(
                    FFIcons.ksort,
                    color: Color(0xFF495A57),
                    size: 32.0,
                  ),
                ),
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
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
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Color(0xFFE29547),
                            ),
                          ),
                        ),
                      );
                    }
                    List<UsersRow> columnUsersRowList = snapshot.data!;
                    final columnUsersRow = columnUsersRowList.isNotEmpty
                        ? columnUsersRowList.first
                        : null;
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (FFAppState().selectedCategory != 'All')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 20.0, 16.0, 20.0),
                              child: FutureBuilder<List<FurnituresRow>>(
                                future: FurnituresTable().queryRows(
                                  queryFn: (q) => q.eq(
                                    'category_1',
                                    FFAppState().selectedCategory,
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
                                    scrollDirection: Axis.vertical,
                                    itemCount: gridViewFurnituresRowList.length,
                                    itemBuilder: (context, gridViewIndex) {
                                      final gridViewFurnituresRow =
                                          gridViewFurnituresRowList[
                                              gridViewIndex];
                                      return ChairDescpWidget(
                                        key: Key(
                                            'Keydzm_${gridViewIndex}_of_${gridViewFurnituresRowList.length}'),
                                        prodImage:
                                            gridViewFurnituresRow.defaultImage,
                                        prodPrice: gridViewFurnituresRow
                                            .furniturePrice,
                                        prodName:
                                            gridViewFurnituresRow.furnitureName,
                                        icon1: Icon(
                                          Icons.favorite_border,
                                          color: Color(0xFFA00B13),
                                        ),
                                        icon2: Icon(
                                          Icons.favorite_sharp,
                                          color: Color(0xFFA00B13),
                                        ),
                                        productId: gridViewFurnituresRow.id,
                                        favorites: columnUsersRow!.isFavorite,
                                        tapAction: () async {
                                          context.pushNamed(
                                            'FurnituresDetailsPage_n',
                                            queryParameters: {
                                              'furnitureInfo': serializeParam(
                                                gridViewFurnituresRow,
                                                ParamType.SupabaseRow,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        bookmarkedAction: () async {
                                          _model.favCopyCopy2 =
                                              await UsersTable().update(
                                            data: {
                                              'is_favorite': functions
                                                  .convertIntToStringList(
                                                      columnUsersRow!.isFavorite
                                                          .toList(),
                                                      gridViewFurnituresRow.id),
                                            },
                                            matchingRows: (rows) => rows.eq(
                                              'auth_id',
                                              currentUserUid,
                                            ),
                                            returnRows: true,
                                          );
                                          await FavoritesListTable().insert({
                                            'user_id': columnUsersRow?.id,
                                            'furniture_id':
                                                gridViewFurnituresRow.id,
                                            'authId': columnUsersRow?.authId,
                                          });
                                          setState(() {});

                                          setState(() {});
                                        },
                                        unbookmarkedAction: () async {
                                          _model.favCopyCopyCopy3 =
                                              await UsersTable().update(
                                            data: {
                                              'is_favorite': functions
                                                  .convertIntToStringListCopy(
                                                      columnUsersRow!.isFavorite
                                                          .toList(),
                                                      gridViewFurnituresRow.id),
                                            },
                                            matchingRows: (rows) => rows.eq(
                                              'auth_id',
                                              currentUserUid,
                                            ),
                                            returnRows: true,
                                          );
                                          await FavoritesListTable().delete(
                                            matchingRows: (rows) => rows
                                                .eq(
                                                  'furniture_id',
                                                  gridViewFurnituresRow.id,
                                                )
                                                .eq(
                                                  'user_id',
                                                  columnUsersRow?.id,
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
                          if (FFAppState().selectedCategory == 'All')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 20.0, 16.0, 20.0),
                              child: FutureBuilder<List<FurnituresRow>>(
                                future: FurnituresTable().queryRows(
                                  queryFn: (q) => q,
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
                                    scrollDirection: Axis.vertical,
                                    itemCount: gridViewFurnituresRowList.length,
                                    itemBuilder: (context, gridViewIndex) {
                                      final gridViewFurnituresRow =
                                          gridViewFurnituresRowList[
                                              gridViewIndex];
                                      return ChairDescpWidget(
                                        key: Key(
                                            'Keyeuo_${gridViewIndex}_of_${gridViewFurnituresRowList.length}'),
                                        prodImage:
                                            gridViewFurnituresRow.defaultImage,
                                        prodPrice: gridViewFurnituresRow
                                            .furniturePrice,
                                        prodName:
                                            gridViewFurnituresRow.furnitureName,
                                        icon1: Icon(
                                          Icons.favorite_border,
                                          color: Color(0xFFA00B13),
                                        ),
                                        icon2: Icon(
                                          Icons.favorite_sharp,
                                          color: Color(0xFFA00B13),
                                        ),
                                        productId: gridViewFurnituresRow.id,
                                        favorites: columnUsersRow!.isFavorite,
                                        tapAction: () async {
                                          context.pushNamed(
                                            'FurnituresDetailsPage_n',
                                            queryParameters: {
                                              'furnitureInfo': serializeParam(
                                                gridViewFurnituresRow,
                                                ParamType.SupabaseRow,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        bookmarkedAction: () async {
                                          _model.favCopyCopy2Copy =
                                              await UsersTable().update(
                                            data: {
                                              'is_favorite': functions
                                                  .convertIntToStringList(
                                                      columnUsersRow!.isFavorite
                                                          .toList(),
                                                      gridViewFurnituresRow.id),
                                            },
                                            matchingRows: (rows) => rows.eq(
                                              'auth_id',
                                              currentUserUid,
                                            ),
                                            returnRows: true,
                                          );
                                          await FavoritesListTable().insert({
                                            'user_id': columnUsersRow?.id,
                                            'furniture_id':
                                                gridViewFurnituresRow.id,
                                            'authId': columnUsersRow?.authId,
                                          });
                                          setState(() {});

                                          setState(() {});
                                        },
                                        unbookmarkedAction: () async {
                                          _model.favCopyCopyCopy3Copy =
                                              await UsersTable().update(
                                            data: {
                                              'is_favorite': functions
                                                  .convertIntToStringListCopy(
                                                      columnUsersRow!.isFavorite
                                                          .toList(),
                                                      gridViewFurnituresRow.id),
                                            },
                                            matchingRows: (rows) => rows.eq(
                                              'auth_id',
                                              currentUserUid,
                                            ),
                                            returnRows: true,
                                          );
                                          await FavoritesListTable().delete(
                                            matchingRows: (rows) => rows
                                                .eq(
                                                  'furniture_id',
                                                  gridViewFurnituresRow.id,
                                                )
                                                .eq(
                                                  'user_id',
                                                  columnUsersRow?.id,
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
            ],
          ),
        ),
      ),
    );
  }
}
