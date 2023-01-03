import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Some extends StatelessWidget {
  Some({super.key});
  var url = "https://picsum.photos/seed/513/600";
  @override
  Widget build(BuildContext context) {
    return // Generated code for this Column Widget...
        Scaffold(
      body: Container(
        color: Colors.white,
        child: Expanded(
            child: SingleChildScrollView(
                child: Column(mainAxisSize: MainAxisSize.max, children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 138, 236),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                // Generated code for this Image Widget...
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Hero(
                    tag: 'productShoe',
                    transitionOnUserGestures: true,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.network(
                        url,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: const AlignmentDirectional(-0.14, 0.01),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 32, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: const Color(0x3A000000),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: IconButton(
                                    icon: const Icon(
                                      Icons.arrow_back_rounded,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                    onPressed: () async {}),
                              ),
                              Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: const Color(0x3A000000),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: IconButton(
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
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(24, 20, 24, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Ammafos',
                    style: TextStyle(
                      color: Color(0xFF1D2429),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Text(
                  'fermer indastres',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    color: Color(0xFF57636C),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 8, 24, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                RatingBar.builder(
                  itemBuilder: (context, index) => const Icon(
                    Icons.star_rounded,
                    color: Color(0xFFFFA130),
                  ),
                  direction: Axis.horizontal,
                  maxRating: 5,
                  unratedColor: const Color(0xFF95A1AC),
                  itemCount: 5,
                  itemSize: 24,
                  onRatingUpdate: (double value) {},
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                  child: Text(
                    '4/5 Reviews',
                    style: TextStyle(
                      color: Color(0xFF57636C),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Text(
                  'Tavsif',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    color: Color(0xFF1D2429),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Expanded(
                  child: Text(
                    'tarkibida azot bilan fosfor boʻlgan konsentrlangan mineral oʻgʻit. U asosan monoammoniyfosfat va qisman diammoniy-fosfat aralashma-sidan iborat. Donador A. tarkibida ka-mida 10% azot, koʻpi bilan 45% fosfor an-gidrid bor. A.da ballast komponentlar boʻlmaydi. Suvda eriydi, fizik xususi-yatlari yaxshi. A.ni har xil tuproqlarda qoʻllash mumkin. Gʻoʻzaga ekishdan oldin (shudgorlashda, bahorgi haydashda, ekish oldidan, ekish vaqtida), gullash oldidan yoki gullagan vaqtida solinganida ham samarali. Oʻzbekistonning paxtakor xoʻjaliklarida fosforli oʻgʻitlar yillik normasining 80% ni A. tashkil etadi, chunki u boshqa murakkab konsentrlangan azotli-fosforli oʻgʻitlarga qaraganda samaraliroq. "Ammofos" ishlab chiqarish birlash-masi (Olmaliq kimyo zavodi) va Samarqand kimyo zavodida ishlab chiqariladi.[1]',
                    style: TextStyle(
                      color: Color(0xFF57636C),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Text(
                  'Kilogrami',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    color: Color(0xFF1D2429),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12, 12, 16, 0),
            child: Wrap(
              spacing: 0,
              runSpacing: 0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: const [],
            ),
          ),
        ]))),
      ),
    );
  }
}
