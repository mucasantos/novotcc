import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DadosPessoaisWidget extends StatefulWidget {
  const DadosPessoaisWidget({Key key}) : super(key: key);

  @override
  _DadosPessoaisWidgetState createState() => _DadosPessoaisWidgetState();
}

class _DadosPessoaisWidgetState extends State<DadosPessoaisWidget> {
  TextEditingController caixaNomeController1;
  bool caixaNomeVisibility1;
  TextEditingController caixaNomeController2;
  bool caixaNomeVisibility2;
  TextEditingController caixaNomeController3;
  TextEditingController caixaNomeController4;
  TextEditingController caixaNomeController5;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    caixaNomeController1 = TextEditingController();
    caixaNomeVisibility1 = false;
    caixaNomeController2 = TextEditingController();
    caixaNomeVisibility2 = false;
    caixaNomeController3 = TextEditingController();
    caixaNomeController4 = TextEditingController();
    caixaNomeController5 = TextEditingController();
  }

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
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Configurações',
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
                //Texto inicial
                alignment: AlignmentDirectional(0, -0.84),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 27, 27, 0),
                  child: Text(
                    'Alterar dados',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 19,
                        ),
                  ),
                ),
              ),
              Align(
                //Caixa nome
                alignment: AlignmentDirectional(1.58, -0.35),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 27, 27, 0),
                  child: TextFormField(
                    controller: caixaNomeController5,
                    onChanged: (_) => EasyDebounce.debounce(
                      'caixaNomeController5',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Nome',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                    keyboardType: TextInputType.name,
                  ),
                ),
              ),
              Align(
                // Caixa nascimento
                alignment: AlignmentDirectional(0, 0.45),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 27, 27, 0),
                  child: TextFormField(
                    controller: caixaNomeController4,
                    onChanged: (_) => EasyDebounce.debounce(
                      'caixaNomeController4',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Data de nascimento',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
              ),
              Align(
                // Caixa email
                alignment: AlignmentDirectional(0, 0.25),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 27, 27, 0),
                  child: TextFormField(
                    controller: caixaNomeController3,
                    onChanged: (_) => EasyDebounce.debounce(
                      'caixaNomeController3',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),
              Align(
                //Caixa senha
                alignment: AlignmentDirectional(0, -0.15),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 27, 27, 0),
                  child: TextFormField(
                    controller: caixaNomeController1,
                    onChanged: (_) => EasyDebounce.debounce(
                      'caixaNomeController1',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: !caixaNomeVisibility1,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => caixaNomeVisibility1 = !caixaNomeVisibility1,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          caixaNomeVisibility1
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
              ),
              Align(
                //Confirmar senha
                alignment: AlignmentDirectional(0, 0.05),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 27, 27, 27),
                  child: TextFormField(
                    controller: caixaNomeController2,
                    onChanged: (_) => EasyDebounce.debounce(
                      'caixaNomeController2',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: !caixaNomeVisibility2,
                    decoration: InputDecoration(
                      labelText: 'Confirmar senha',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => caixaNomeVisibility2 = !caixaNomeVisibility2,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          caixaNomeVisibility2
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
              ),
              // Align(
              //   //Texto "tema"
              //   alignment: AlignmentDirectional(-0.82, 0.32),
              //   child: Text(
              //     'Tema',
              //     style: FlutterFlowTheme.of(context).bodyText1.override(
              //           fontFamily: 'Poppins',
              //           fontSize: 15,
              //           fontWeight: FontWeight.bold,
              //         ),
              //   ),
              // ),
              Align(
                // Botão salvar
                alignment: AlignmentDirectional(0, 0.7),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Salvar',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).secondaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
              Align(
                //Copyright text
                alignment: AlignmentDirectional(0, 0.97),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 27, 27, 0),
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
