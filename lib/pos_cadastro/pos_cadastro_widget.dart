import 'package:novotcc/contatos/contatos_widget.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../principal/principal_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PosCadastroWidget extends StatefulWidget {
  const PosCadastroWidget({Key key}) : super(key: key);

  @override
  _PosCadastroWidgetState createState() => _PosCadastroWidgetState();
}

class _PosCadastroWidgetState extends State<PosCadastroWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFFFFFEFE),
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ContatosWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Contatos Adicionados',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              Align(
                //Icone perfil
                alignment: AlignmentDirectional(0, -0.89),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 27, 27, 10),
                  child: Icon(
                    Icons.person_rounded,
                    color: Colors.black,
                    size: 86,
                  ),
                ),
              ),
              Align(
                //Caixa
                alignment: AlignmentDirectional(0, 0.1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 27, 27, 27),
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 9,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          offset: Offset(4, 4),
                        )
                      ],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.89, 0),
                            child: Text(
                              'Mãe',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.88, 0),
                            child: FaIcon(
                              FontAwesomeIcons.trash,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                //Caixa
                alignment: AlignmentDirectional(0, -0.12),
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 9,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        offset: Offset(4, 4),
                      )
                    ],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.89, 0),
                          child: Text(
                            'Pai',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 15,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.88, 0),
                          child: FaIcon(
                            FontAwesomeIcons.trash,
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                //Caixa
                alignment: AlignmentDirectional(0, -0.35),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 27, 27, 0),
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 9,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          offset: Offset(4, 4),
                        )
                      ],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.89, 0),
                            child: Text(
                              'Everson Zoio',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.88, 0),
                            child: FaIcon(
                              FontAwesomeIcons.trash,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                //Caixa
                alignment: AlignmentDirectional(-0.04, -0.57),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 27, 27, 0),
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 9,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          offset: Offset(4, 4),
                        )
                      ],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.89, 0),
                            child: Text(
                              'Eu do Marley e Eu',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.88, 0),
                            child: FaIcon(
                              FontAwesomeIcons.trash,
                              color: FlutterFlowTheme.of(context).tertiaryColor,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                //Botão "adicionar"
                alignment: AlignmentDirectional(0, 0.8),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 27, 27, 27),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Adicionar',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ),
              ),
              Align(
                //Texto copyright
                alignment: AlignmentDirectional(0, 0.98),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Text(
                    'Copyright©2022, Projeto S.O.L',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
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
