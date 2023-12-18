import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/chair_descp_widget.dart';
import '/components/favlist_empty_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favorites_page_n_model.dart';
export 'favorites_page_n_model.dart';

class FavoritesPageNWidget extends StatefulWidget {
  const FavoritesPageNWidget({Key? key}) : super(key: key);

  @override
  _FavoritesPageNWidgetState createState() => _FavoritesPageNWidgetState();
}

class _FavoritesPageNWidgetState extends State<FavoritesPageNWidget> {
  late FavoritesPageNModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavoritesPageNModel());
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
          title: Text(
            'Favorite',
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
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 44.0, 16.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final favList = columnUsersRow?.isFavorite
                                        ?.map((e) => e)
                                        .toList()
                                        ?.toList() ??
                                    [];
                                if (favList.isEmpty) {
                                  return Center(
                                    child: FavlistEmptyWidget(),
                                  );
                                }
                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                    childAspectRatio: 1.0,
                                  ),
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: favList.length,
                                  itemBuilder: (context, favListIndex) {
                                    final favListItem = favList[favListIndex];
                                    return FutureBuilder<List<FurnituresRow>>(
                                      future: FurnituresTable().querySingleRow(
                                        queryFn: (q) => q.eq(
                                          'id',
                                          functions.getInt(favListItem),
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
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  Color(0xFFE29547),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<FurnituresRow>
                                            containerFurnituresRowList =
                                            snapshot.data!;
                                        final containerFurnituresRow =
                                            containerFurnituresRowList
                                                    .isNotEmpty
                                                ? containerFurnituresRowList
                                                    .first
                                                : null;
                                        return Container(
                                          decoration: BoxDecoration(),
                                          child: ChairDescpWidget(
                                            key: Key(
                                                'Key9ui_${favListIndex}_of_${favList.length}'),
                                            prodImage: containerFurnituresRow
                                                ?.defaultImage,
                                            prodPrice: containerFurnituresRow
                                                ?.furniturePrice,
                                            prodName: containerFurnituresRow
                                                ?.furnitureName,
                                            icon1: Icon(
                                              Icons.delete_outline,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            icon2: Icon(
                                              Icons.delete,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                            productId:
                                                containerFurnituresRow?.id,
                                            favorites:
                                                columnUsersRow!.isFavorite,
                                            tapAction: () async {},
                                            bookmarkedAction: () async {
                                              _model.favCopyCopy2 =
                                                  await UsersTable().update(
                                                data: {
                                                  'is_favorite':
                                                      functions
                                                          .convertIntToStringList(
                                                              columnUsersRow!
                                                                  .isFavorite
                                                                  .toList(),
                                                              containerFurnituresRow!
                                                                  .id),
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
                                                      containerFurnituresRow
                                                          ?.id,
                                                    )
                                                    .eq(
                                                      'user_id',
                                                      columnUsersRow?.id,
                                                    ),
                                              );
                                              setState(() {});

                                              setState(() {});
                                            },
                                            unbookmarkedAction: () async {
                                              _model.favCopyCopyCopy2 =
                                                  await UsersTable().update(
                                                data: {
                                                  'is_favorite': functions
                                                      .convertIntToStringListCopy(
                                                          columnUsersRow!
                                                              .isFavorite
                                                              .toList(),
                                                          containerFurnituresRow!
                                                              .id),
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
                                                      containerFurnituresRow
                                                          ?.id,
                                                    )
                                                    .eq(
                                                      'user_id',
                                                      columnUsersRow?.id,
                                                    ),
                                              );
                                              setState(() {});

                                              setState(() {});
                                            },
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
