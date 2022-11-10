import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../cadastro/cadastro_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../principal/principal_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  TextEditingController caixaEmailController;
  TextEditingController caixaSenhaController;
  bool caixaSenhaVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    caixaEmailController = TextEditingController();
    caixaSenhaController = TextEditingController();
    caixaSenhaVisibility = false;
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                //Imagem do topo, logo
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 300,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                // Texto de "Login"
                child: Text(
                  'Login',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 20,
                      ),
                ),
              ),
              Align(
                // Caixa Email
                alignment: AlignmentDirectional(0, -0.11),
                child: Padding(
                  padding: EdgeInsets.all(27),
                  child: TextFormField(
                    controller: caixaEmailController,
                    onChanged: (_) => EasyDebounce.debounce(
                      'caixaEmailController',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                  ),
                ),
              ),
              Align(
                // Caixa "Senha"
                alignment: AlignmentDirectional(0, 0.07),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 0, 27, 0),
                  child: TextFormField(
                    controller: caixaSenhaController,
                    onChanged: (_) => EasyDebounce.debounce(
                      'caixaSenhaController',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: !caixaSenhaVisibility,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => caixaSenhaVisibility = !caixaSenhaVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          caixaSenhaVisibility
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
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Align(
                // Botão "Entrar"
                alignment: AlignmentDirectional(0, 0.24),
                child: Padding(
                  padding: EdgeInsets.all(27),
                  child: FFButtonWidget(
                    onPressed: () async {
                      //consulta email senha

                      try {
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .signInWithEmailAndPassword(
                                email: caixaEmailController.text,
                                password: caixaSenhaController.text);

                        if (userCredential.user.email.isNotEmpty) {
                          var username = userCredential.user.email;
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  PrincipalWidget(username: username),
                            ),
                          );
                        } else {
                          showDialog<String>(
                            context: context,
                            builder: (context) => Dialog(
                              child: Card(
                                  margin: EdgeInsets.all(8),
                                  child: Text(
                                      'Email não existe ou senha errada!')),
                            ),
                          );
                        }
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                        }
                      }

                      var usuario = FirebaseFirestore.instance
                          .collection('tb_usuario')
                          .where('usuario_email',
                              isEqualTo: caixaEmailController.text)
                          .where('usuario_senha',
                              isEqualTo: caixaSenhaController.text);
                    },
                    text: 'Entrar',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFFFFEFE),
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
                // Texto "Esqueceu sua senha?"
                alignment: AlignmentDirectional(0, 0.45),
                child: Text(
                  'Esqueceu sua senha ?',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
              Align(
                // Texto "Não tenho cadastro"
                alignment: AlignmentDirectional(0, 0.6),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CadastroWidget(),
                      ),
                    );
                  },
                  child: Text(
                    'Não tenho cadastro',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
              ),
              Align(
                // Texto "Copyright"
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27, 50, 27, 0),
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
