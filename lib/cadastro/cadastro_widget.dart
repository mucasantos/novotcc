import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CadastroWidget extends StatefulWidget {
  const CadastroWidget({Key key}) : super(key: key);

  @override
  _CadastroWidgetState createState() => _CadastroWidgetState();
}

class _CadastroWidgetState extends State<CadastroWidget> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  TextEditingController caixaCPFController;
  TextEditingController caixaNomeController;
  TextEditingController caixaNascimentoController;
  TextEditingController caixaSenhaController;
  bool caixaSenhaVisibility;
  TextEditingController caixaConfirmaController;
  bool caixaConfirmaVisibility;
  TextEditingController caixaEmailController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  FirebaseFirestore firestore;
  CollectionReference usuario;

  @override
  void initState() {
    super.initState();
    caixaCPFController = TextEditingController();
    caixaNomeController = TextEditingController();
    caixaNascimentoController = TextEditingController();
    caixaSenhaController = TextEditingController();
    caixaSenhaVisibility = false;
    caixaConfirmaController = TextEditingController();
    caixaConfirmaVisibility = false;
    caixaEmailController = TextEditingController();
    firestore = FirebaseFirestore.instance;
    usuario = firestore.collection('tb_usuario');
  }

  @override
  Widget build(BuildContext context) {
    var tamanhoTela = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Center(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              width: double.infinity,
              height: tamanhoTela.height, //double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    //imagem de logo
                    alignment: AlignmentDirectional(0, -0.88),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 250,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    // Caixa de nome
                    alignment: AlignmentDirectional(0, -0.49),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(27, 0, 27, 0),
                      child: TextFormField(
                        controller: caixaNomeController,
                        onChanged: (_) => EasyDebounce.debounce(
                          'caixaNomeController',
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
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
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
                    //Caixa CPF
                    alignment: AlignmentDirectional(-1.07, -0.31),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(27, 7, 27, 0),
                      child: TextFormField(
                        controller: caixaCPFController,
                        onChanged: (_) => EasyDebounce.debounce(
                          'caixaCPFController',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'CPF',
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
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                  Align(
                    //Caixa data de nascimento
                    alignment: AlignmentDirectional(-0.69, -0.14),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(27, 7, 27, 0),
                      child: TextFormField(
                        controller: caixaNascimentoController,
                        onChanged: (_) => EasyDebounce.debounce(
                          'caixaNascimentoController',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Data de Nascimento',
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
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
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
                    //Caixa email
                    alignment: AlignmentDirectional(0.51, 0.04),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(27, 7, 27, 0),
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
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    //Caixa senha
                    alignment: AlignmentDirectional(-0.79, 0.22),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(27, 7, 27, 0),
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
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () =>
                                  caixaSenhaVisibility = !caixaSenhaVisibility,
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
                      ),
                    ),
                  ),
                  Align(
                    //Caixa confirmar senha
                    alignment: AlignmentDirectional(-1.34, 0.4),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(27, 7, 27, 10),
                      child: TextFormField(
                        controller: caixaConfirmaController,
                        onChanged: (_) => EasyDebounce.debounce(
                          'caixaConfirmaController',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: !caixaConfirmaVisibility,
                        decoration: InputDecoration(
                          labelText: 'Confirme a Senha',
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
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => caixaConfirmaVisibility =
                                  !caixaConfirmaVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              caixaConfirmaVisibility
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
                      ),
                    ),
                  ),
                  Align(
                    // Botão cadastrar
                    // https://acervolima.com/flutter-ler-e-gravar-dados-no-firebase/

                    alignment: AlignmentDirectional(0, 0.65),
                    child: FFButtonWidget(
                      onPressed: () async {
                        //criar usuário no firebase
                        UserCredential userCredential;
                        try {
                          userCredential = await FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: caixaEmailController.text,
                                  password: caixaSenhaController.text);
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            print('The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            AlertDialog(
                              title: const Text('Erro'),
                              content: const Text('Deu ruim'),
                            );
                            // print('The account already exists for that email.');
                          }
                        } catch (e) {
                          print(e);
                        }
                        FirebaseFirestore.instance
                            .collection('tb_usuario')
                            .add({
                          'usuario_cpf': caixaCPFController.text,
                          'usuario_dataN': caixaNascimentoController.text,
                          'usuario_email': caixaEmailController.text,
                          'usuario_nome': caixaNomeController.text,
                          'usuario_id': userCredential.user.uid,
                          'contatos': []
                        }).then((value) => print(value));

                        //salvar dados basicos
                      },
                      text: 'Cadastrar',
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
                  Align(
                    // Já tenho cadastro
                    alignment: AlignmentDirectional(
                      0,
                      0.84,
                    ),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'Já tenho cadastro',
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
                    // Texto de copyright©
                    alignment: AlignmentDirectional(0, 0.98),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
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
        ),
      ),
    );
  }
}
