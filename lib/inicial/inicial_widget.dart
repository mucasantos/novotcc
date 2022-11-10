import 'dart:async';
import 'dart:io';

import '../flutter_flow/flutter_flow_theme.dart';
import '../login/login_widget.dart';
import 'package:flutter/material.dart';

class InicialWidget extends StatefulWidget {
  const InicialWidget({Key key}) : super(key: key);

  @override
  _InicialWidgetState createState() => _InicialWidgetState();
}

class _InicialWidgetState extends State<InicialWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    void carregar() {
      Timer.run(() {
        sleep(Duration(seconds: 5));
        Navigator.pushReplacementNamed(context, "/login");
      });
    }

    carregar();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        alignment: AlignmentDirectional(0, 0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0.95),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
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
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.09),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/S.O.L_3.png',
                    width: 500,
                    height: 350,
                    fit: BoxFit.cover,
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
