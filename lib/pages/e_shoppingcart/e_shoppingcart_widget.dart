import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'e_shoppingcart_model.dart';
export 'e_shoppingcart_model.dart';

class EShoppingcartWidget extends StatefulWidget {
  const EShoppingcartWidget({super.key});

  @override
  State<EShoppingcartWidget> createState() => _EShoppingcartWidgetState();
}

class _EShoppingcartWidgetState extends State<EShoppingcartWidget> {
  late EShoppingcartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EShoppingcartModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Cart',
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Outfit',
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Builder(
              builder: (context) {
                final generateshoppingcart = FFAppState().ShoppingCart.toList();
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: generateshoppingcart.length,
                  itemBuilder: (context, generateshoppingcartIndex) {
                    final generateshoppingcartItem =
                        generateshoppingcart[generateshoppingcartIndex];
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      'https://picsum.photos/seed/223/600',
                                      width: 50.0,
                                      height: 50.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        generateshoppingcartItem.name,
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        generateshoppingcartItem.price
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 5.0),
                                      child: Text(
                                        '${generateshoppingcartItem.quantity.toString()}unit(s)',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Stack(
                                      children: [
                                        if (functions
                                                .newCustomCartFunction(
                                                    FFAppState()
                                                        .ShoppingCart
                                                        .toList(),
                                                    generateshoppingcartItem
                                                        .productid)
                                                .toString() ==
                                            '1')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              borderRadius: 10.0,
                                              borderWidth: 1.0,
                                              buttonSize: 30.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              icon: const FaIcon(
                                                FontAwesomeIcons.trash,
                                                color: Color(0xD9EE8B60),
                                                size: 15.0,
                                              ),
                                              onPressed: () async {
                                                setState(() {});
                                              },
                                            ),
                                          ),
                                        if (functions
                                                .newCustomCartFunction(
                                                    FFAppState()
                                                        .ShoppingCart
                                                        .toList(),
                                                    generateshoppingcartItem
                                                        .productid)
                                                .toString() !=
                                            '1')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              borderRadius: 10.0,
                                              borderWidth: 1.0,
                                              buttonSize: 30.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              icon: const FaIcon(
                                                FontAwesomeIcons.minus,
                                                color: Color(0xD9EE8B60),
                                                size: 15.0,
                                              ),
                                              onPressed: () async {
                                                FFAppState()
                                                    .updateShoppingCartAtIndex(
                                                  functions.newCustomFunctionCopy(
                                                      FFAppState()
                                                          .ShoppingCart
                                                          .toList(),
                                                      generateshoppingcartItem
                                                          .productid),
                                                  (e) =>
                                                      e..incrementQuantity(-1),
                                                );
                                                setState(() {});
                                              },
                                            ),
                                          ),
                                      ],
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      borderRadius: 10.0,
                                      borderWidth: 1.0,
                                      buttonSize: 30.0,
                                      icon: const Icon(
                                        Icons.add,
                                        color: Color(0xBBEE8B60),
                                        size: 15.0,
                                      ),
                                      onPressed: () async {
                                        FFAppState().updateShoppingCartAtIndex(
                                          functions.newCustomFunctionCopy(
                                              FFAppState()
                                                  .ShoppingCart
                                                  .toList(),
                                              generateshoppingcartItem
                                                  .productid),
                                          (e) => e..incrementQuantity(1),
                                        );
                                        setState(() {});
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Divider(
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).accent4,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Estimated cost',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  formatNumber(
                    functions.totalquantitiesCopy(
                        FFAppState().ShoppingCart.toList()),
                    formatType: FormatType.custom,
                    currency: '',
                    format: '###.0#',
                    locale: '',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              context.pushNamed('Confirmationpage');
            },
            text: 'Buy now',
            options: FFButtonOptions(
              width: 350.0,
              height: 40.0,
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: const Color(0xD427891A),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Readex Pro',
                    color: Colors.white,
                    letterSpacing: 0.0,
                  ),
              elevation: 3.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ],
      ),
    );
  }
}
