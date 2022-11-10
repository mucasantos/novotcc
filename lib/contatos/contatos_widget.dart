import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../principal/principal_widget.dart';
import '../pos_cadastro/pos_cadastro_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContatosWidget extends StatefulWidget {
  const ContatosWidget({Key key}) : super(key: key);

  @override
  _ContatosWidgetState createState() => _ContatosWidgetState();
}

class _ContatosWidgetState extends State<ContatosWidget> {
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
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => PrincipalWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Contatos',
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -0.17),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 100,
                  buttonSize: 120,
                  fillColor: Color(0x00FFFFFF),
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: Color(0x40A6A1A1),
                    size: 100,
                  ),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PosCadastroWidget(),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.03, 0.05),
                child: Text(
                  'Adicionar contatos',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0x40A6A1A1),
                        fontSize: 16,
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
