import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

buildPrintableData(ttf, image) => pw.Padding(

      padding: const pw.EdgeInsets.all(13.00),
      child:pw.Container(

        child:  pw.Column(children: [
          pw.Container(
            padding: pw.EdgeInsets.fromLTRB(25, 50, 25, 25),
            child: pw.Align(
              alignment: pw.Alignment.centerLeft,
              child: pw.Container(
                width: 1100,
                height: 120,
                child: pw.Image(image, width: 1100, height: 120),
              ),
            ),
          ),
          pw.Row(children: [
            pw.Expanded(
              child: pw.Align(
                alignment: pw.Alignment.centerLeft,
                child: pw.Text(
                  "                 ",
                  style: pw.TextStyle(font: ttf, fontSize: 16),
                ),
              ),
            ),
            pw.Expanded(
              child:pw.Align(

                alignment: pw.Alignment.center,
                child: pw.Text(
                  "Invoice",
                  style: pw.TextStyle(font: ttf, fontSize: 30),
                ),
              ),
            ),
            pw.Expanded(
              child: pw.Container(
                padding: pw.EdgeInsets.fromLTRB(25, 0, 25, 0),

                child:  pw.Align(
                  alignment: pw.Alignment.centerRight,
                  child: pw.Column(children: [
                    pw.Text(
                      "Date : 22/02/2023",
                      style: pw.TextStyle(font: ttf, fontSize: 16),
                    ),

                    pw.Container(
                      color: PdfColors.black,
                      width: 140,
                      height: .5,
                    ),
                  ]),
                ),  ),
            ),
          ]),
          pw.SizedBox(width: 20, height: 20),
          pw.Column(children: [
            pw.Align(
              alignment: pw.Alignment.center,
              child: pw.Text(
                "BISSAN AL KHAIR TRADING EST-SAUDI ARABIA, RIYADH",
                style: pw.TextStyle(font: ttf, fontSize: 18),
              ),
            ),
            pw.Container(
              color: PdfColors.black,
              width: 900,
              height: .5,
            )
          ]),
          pw.SizedBox(width: 20, height: 20),
          pw.Align(
              alignment: pw.Alignment.center,
              child:  pw.Container(

                padding: pw.EdgeInsets.fromLTRB(16,0,16,0),
                child: pw.Row(children: [
                  pw.Expanded(
                    flex: 0,
                    child: pw.Container(
                      decoration: pw.BoxDecoration(
                        color: PdfColors.black,
                        border: pw.Border.all(
                          color: PdfColors.black,
                          width: 1, // عرض الحدود
                        ),
                      ),
                      child: pw.Container(
                        margin: pw.EdgeInsets.only(left: 0.5),
                        child: pw.SizedBox(
                            width: 110,
                            height: 30,
                            child: pw.Center(
                                child: pw.Text("QUANTITY",
                                    style: pw.TextStyle(font: ttf,color: PdfColors.white,)))),
                      ),
                    ),
                  ),
                  pw.Expanded(
                    flex: 0,
                    child: pw.Container(
                      decoration: pw.BoxDecoration(
                        color: PdfColors.black,
                        border: pw.Border.all(
                          color: PdfColors.black,
                          width: 1, // عرض الحدود
                        ),
                      ),
                      child: pw.Container(
                        margin: pw.EdgeInsets.only(left: 0.5),
                        child: pw.SizedBox(
                            width: 210,
                            height: 30,
                            child: pw.Center(
                                child:
                                pw.Text("DESCRIPTION", style: pw.TextStyle(font: ttf,color: PdfColors.white)))),
                      ),
                    ),
                  ),
                  pw.Expanded(
                    flex: 0,
                    child: pw.Container(
                      decoration: pw.BoxDecoration(
                        color: PdfColors.black,
                        border: pw.Border.all(
                          color: PdfColors.black,
                          width: 1, // عرض الحدود
                        ),
                      ),
                      child: pw.Container(
                        margin: pw.EdgeInsets.only(left: 0.5),
                        child: pw.SizedBox(
                            width: 110,
                            height: 30,
                            child: pw.Center(
                                child:
                                pw.Text("UNIT PRICE", style: pw.TextStyle(font: ttf,color: PdfColors.white)))),
                      ),
                    ),
                  ),
                  pw.Expanded(
                    flex: 0,
                    child: pw.Container(
                      decoration: pw.BoxDecoration(
                        color: PdfColors.black,
                        border: pw.Border.all(
                          color: PdfColors.black,
                          width: 1, // عرض الحدود
                        ),
                      ),
                      child: pw.Container(
                        margin: pw.EdgeInsets.only(left: 0.5),
                        child: pw.SizedBox(
                            width: 110,
                            height: 30,
                            child: pw.Center(
                                child:
                                pw.Text("AMOUNT", style: pw.TextStyle(font: ttf,color: PdfColors.white)))),
                      ),
                    ),
                  ),


                ]),
              )
          ),
          pw.Align(
            alignment: pw.Alignment.center,
            child:  pw.Container(

              height: 30*7,

              padding: pw.EdgeInsets.fromLTRB(16,0,16,0),
              child: pw.Container(


                child: pw.ListView.builder(
                    direction: pw.Axis.vertical,
                    itemCount: 7,
                    itemBuilder: (context, index) {

                      return pw.Container(

                          child: pw.Row(children: [
                            pw.Container(

                              decoration: pw.BoxDecoration(
                                border: pw.Border.all(
                                  color: PdfColors.black,
                                  width: 1, // عرض الحدود
                                ),
                              ),
                              child: pw.Container(
                                margin: pw.EdgeInsets.only(left: 0.5),
                                child: pw.SizedBox(
                                    width: 110,
                                    height: 30,
                                    child: pw.Center(
                                      child:
                                      pw.Text("numer1", style: pw.TextStyle(font: ttf)),
                                    )),
                              ),
                            ),
                            pw.Container(
                              decoration: pw.BoxDecoration(
                                border: pw.Border.all(
                                  color: PdfColors.black,
                                  width: 1, // عرض الحدود
                                ),
                              ),
                              child: pw.Container(
                                margin: pw.EdgeInsets.only(left: 0.5),
                                child: pw.SizedBox(
                                    width: 210,
                                    height: 30,
                                    child: pw.Align(
                                        alignment: pw.Alignment.centerLeft,
                                        child: pw.Text(" ",
                                            style: pw.TextStyle(font: ttf),
                                            maxLines: 1))),
                              ),
                            ),
                            pw.Container(
                              decoration: pw.BoxDecoration(
                                border: pw.Border.all(
                                  color: PdfColors.black,
                                  width: 1, // عرض الحدود
                                ),
                              ),
                              child: pw.Container(
                                margin: pw.EdgeInsets.only(left: 0.5),
                                child: pw.SizedBox(
                                    width: 110,
                                    height: 30,
                                    child: pw.Center(
                                      child:
                                      pw.Text("", style: pw.TextStyle(font: ttf)),
                                    )),
                              ),
                            ),
                            pw.Container(
                              decoration: pw.BoxDecoration(
                                border: pw.Border.all(
                                  color: PdfColors.black,
                                  width: 1, // عرض الحدود
                                ),
                              ),
                              child: pw.Container(
                                margin: pw.EdgeInsets.only(left: 0.5),
                                child: pw.SizedBox(
                                    width: 110,
                                    height: 30,
                                    child: pw.Center(
                                      child:
                                      pw.Text("", style: pw.TextStyle(font: ttf)),
                                    )),
                              ),
                            ),


                          ])

                      );
                    }),


              ),  ),
          ),



        ])
      ),

);
