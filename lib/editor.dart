import 'package:flutter/material.dart';
import 'package:html_editor_enhanced/html_editor.dart';

class EditorPage extends StatefulWidget {
  const EditorPage({super.key});

  @override
  State<EditorPage> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {

  HtmlEditorController controller = HtmlEditorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text('Campo Editor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'test',
              style: Theme.of(context).textTheme.headline4,
            ),
            HtmlEditor(
              controller: controller, //required
              htmlEditorOptions: const HtmlEditorOptions(
                hint: "Your text here...",
                //initalText: "text content initial, if any",
              ),   
              otherOptions: const OtherOptions(
                height: 400,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.auto_awesome),
      ),
    );
  }  
}