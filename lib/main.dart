import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:tide/printable_data.dart';
import 'package:image/image.dart' as img;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Image.asset("assets/images/titela.png"),

            Text(
              '',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          printDoc();
        },
        tooltip: 'new Invoice',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<void> printDoc() async {
    final fontData = await rootBundle.load("assets/font/font.ttf");
    final ttf = pw.Font.ttf(fontData.buffer.asByteData());
    final doc = pw.Document();
    final image = await imageFromAssetBundle('assets/images/titela.png');

    doc.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4.copyWith(
          width: PdfPageFormat.a4.width,
          height: PdfPageFormat.a4.height,
          marginLeft: 0,
          marginRight: 0,
          marginTop: 0,
          marginBottom: 0,
        ),
        build: (pw.Context context) {
          return buildPrintableData(ttf,image);
        }));
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => doc.save());
  }
}
