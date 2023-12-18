import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_profile_change_model.dart';
export 'user_profile_change_model.dart';

class UserProfileChangeWidget extends StatefulWidget {
  const UserProfileChangeWidget({Key? key}) : super(key: key);

  @override
  _UserProfileChangeWidgetState createState() =>
      _UserProfileChangeWidgetState();
}

class _UserProfileChangeWidgetState extends State<UserProfileChangeWidget> {
  late UserProfileChangeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserProfileChangeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
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
          List<UsersRow> containerUsersRowList = snapshot.data!;
          final containerUsersRow = containerUsersRowList.isNotEmpty
              ? containerUsersRowList.first
              : null;
          return Container(
            width: 300.0,
            height: 260.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).tertiary,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              22.0, 0.0, 0.0, 0.0),
                          child: Container(
                            width: 150.0,
                            height: 150.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              FFAppState().profilePic == null ||
                                      FFAppState().profilePic == ''
                                  ? 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_640.png'
                                  : FFAppState().profilePic,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              storageFolderPath: 'image',
                              allowPhoto: true,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              setState(() => _model.isDataUploading = true);
                              var selectedUploadedFiles = <FFUploadedFile>[];

                              var downloadUrls = <String>[];
                              try {
                                showUploadMessage(
                                  context,
                                  'Uploading file...',
                                  showLoading: true,
                                );
                                selectedUploadedFiles = selectedMedia
                                    .map((m) => FFUploadedFile(
                                          name: m.storagePath.split('/').last,
                                          bytes: m.bytes,
                                          height: m.dimensions?.height,
                                          width: m.dimensions?.width,
                                          blurHash: m.blurHash,
                                        ))
                                    .toList();

                                downloadUrls = await uploadSupabaseStorageFiles(
                                  bucketName: 'profileImageBucket',
                                  selectedFiles: selectedMedia,
                                );
                              } finally {
                                ScaffoldMessenger.of(context)
                                    .hideCurrentSnackBar();
                                _model.isDataUploading = false;
                              }
                              if (selectedUploadedFiles.length ==
                                      selectedMedia.length &&
                                  downloadUrls.length == selectedMedia.length) {
                                setState(() {
                                  _model.uploadedLocalFile =
                                      selectedUploadedFiles.first;
                                  _model.uploadedFileUrl = downloadUrls.first;
                                });
                                showUploadMessage(context, 'Success!');
                              } else {
                                setState(() {});
                                showUploadMessage(
                                    context, 'Failed to upload data');
                                return;
                              }
                            }

                            setState(() {
                              FFAppState().profilePic = _model.uploadedFileUrl;
                            });
                          },
                          child: FaIcon(
                            FontAwesomeIcons.userEdit,
                            color: Color(0xFF5A7993),
                            size: 28.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.uploadImage = await UsersTable().update(
                          data: {
                            'display_image': FFAppState().profilePic,
                          },
                          matchingRows: (rows) => rows.eq(
                            'auth_id',
                            currentUserUid,
                          ),
                          returnRows: true,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Upload Nahi hui',
                              style: GoogleFonts.getFont(
                                'Open Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );

                        context.pushNamed(
                          'CustomNavbarPage',
                          queryParameters: {
                            'currentIndex': serializeParam(
                              3,
                              ParamType.int,
                            ),
                          }.withoutNulls,
                        );

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Shayad Upload ho jaaye',
                              style: GoogleFonts.getFont(
                                'Open Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Rehnde do bhai nahi hui to',
                              style: GoogleFonts.getFont(
                                'Open Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                          ),
                        );

                        setState(() {});
                      },
                      child: wrapWithModel(
                        model: _model.buttonModel,
                        updateCallback: () => setState(() {}),
                        child: ButtonWidget(
                          btnName: 'Save Changes',
                          btnAction: () async {
                            _model.uploadImageCopy = await UsersTable().update(
                              data: {
                                'display_image': FFAppState().profilePic,
                              },
                              matchingRows: (rows) => rows.eq(
                                'auth_id',
                                currentUserUid,
                              ),
                              returnRows: true,
                            );
                            Navigator.pop(context);

                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
