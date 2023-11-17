

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Product8Widget extends StatefulWidget {
  const Product8Widget({Key? key}) : super(key: key);

  @override
  _Product8WidgetState createState() => _Product8WidgetState();
}

class _Product8WidgetState extends State<Product8Widget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color(0xFFDBE2E7),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Hero(
                            tag: 'productShoe',
                            transitionOnUserGestures: true,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.network(
                                'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/7c5678f4-c28d-4862-a8d9-56750f839f12/zion-1-basketball-shoes-bJ0hLJ.png',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0x3A000000),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: IconButton(
                                        icon: const Icon(
                                          Icons.arrow_back_rounded,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        onPressed: () async {
                                          // Navigator.pop();
                                        },
                                      ),
                                    ),
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: Color(0x3A000000),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child:IconButton(
                                        icon: const Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Zion Limited',
                          style: TextStyle(
                                fontFamily: 'Outfit',
                                color: Color(0xFF14181B),
                                fontSize: 24,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                        Text(
                          '\$156.00',
                          style: TextStyle(
                                fontFamily: 'Outfit',
                                color: Color(0xFF4B39EF),
                                fontSize: 24,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Retailed by Nike',
                          style:
                              TextStyle(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF57636C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        RatingBarIndicator(
                          itemBuilder: (context, index) => const Icon(
                            Icons.star_rounded,
                            color: Color(0xFFFFA130),
                          ),
                          direction: Axis.horizontal,
                          rating: 5,
                          unratedColor: Color(0xFF95A1AC),
                          itemCount: 5,
                          itemSize: 24,
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            '4/5 Reviews',
                            style: TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'DESCRIPTION',
                          style:
                              TextStyle(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF14181B),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'With a down-to-earth persona and abilities that are out of this world, Zion is unlike anybody else. On court, the gentle spirit who\'s all about family transforms into an unmatched force of unstoppable athleticism and speed.',
                            style: TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'With a down-to-earth persona and abilities that are out of this world, Zion is unlike anybody else. On court, the gentle spirit who\'s all about family transforms into an unmatched force of unstoppable athleticism and speed.',
                            style: TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'With a down-to-earth persona and abilities that are out of this world, Zion is unlike anybody else. On court, the gentle spirit who\'s all about family transforms into an unmatched force of unstoppable athleticism and speed.',
                            style: TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            'With a down-to-earth persona and abilities that are out of this world, Zion is unlike anybody else. On court, the gentle spirit who\'s all about family transforms into an unmatched force of unstoppable athleticism and speed.',
                            style: TextStyle(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'SIZE',
                          style:
                              TextStyle(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF14181B),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsetsDirectional.fromSTEB(12, 12, 16, 0),
                  //   child: Wrap(
                  //     spacing: 0,
                  //     runSpacing: 0,
                  //     alignment: WrapAlignment.start,
                  //     crossAxisAlignment: WrapCrossAlignment.start,
                  //     direction: Axis.horizontal,
                  //     runAlignment: WrapAlignment.start,
                  //     verticalDirection: VerticalDirection.down,
                  //     clipBehavior: Clip.none,
                  //     children: [
                  //       Padding(
                  //         padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 32),
                  //         child: FlutterFlowChoiceChips(
                  //           options: [
                  //             ChipData('4'),
                  //             ChipData('5'),
                  //             ChipData('6'),
                  //             ChipData('7'),
                  //             ChipData('8'),
                  //             ChipData('9'),
                  //             ChipData('10'),
                  //             ChipData('11'),
                  //             ChipData('12'),
                  //             ChipData('13'),
                  //             ChipData('14')
                  //           ],
                  //           onChanged: (val) => setState(
                  //               () => _model.choiceChipsValue = val?.first),
                  //           selectedChipStyle: ChipStyle(
                  //             backgroundColor: Color(0xFF4B39EF),
                  //             textStyle: FlutterFlowTheme.of(context)
                  //                 .titleSmall
                  //                 .override(
                  //                   fontFamily: 'Plus Jakarta Sans',
                  //                   color: Colors.white,
                  //                   fontSize: 16,
                  //                   fontWeight: FontWeight.w500,
                  //                 ),
                  //             iconColor: Colors.white,
                  //             iconSize: 18,
                  //             labelPadding:
                  //                 EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  //             elevation: 2,
                  //           ),
                  //           unselectedChipStyle: ChipStyle(
                  //             backgroundColor: Color(0xFFE0E3E7),
                  //             textStyle: FlutterFlowTheme.of(context)
                  //                 .labelMedium
                  //                 .override(
                  //                   fontFamily: 'Plus Jakarta Sans',
                  //                   color: Color(0xFF57636C),
                  //                   fontSize: 14,
                  //                   fontWeight: FontWeight.normal,
                  //                 ),
                  //             iconColor: Color(0xFF14181B),
                  //             iconSize: 18,
                  //             labelPadding:
                  //                 EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  //             elevation: 0,
                  //           ),
                  //           chipSpacing: 12,
                  //           rowSpacing: 24,
                  //           multiselect: false,
                  //           alignment: WrapAlignment.start,
                  //           controller: _model.choiceChipsValueController ??=
                  //               FormFieldController<List<String>>(
                  //             [],
                  //           ),
                  //           wrapped: true,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
