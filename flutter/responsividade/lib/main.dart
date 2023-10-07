import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplicação responsiva com breakpoint",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MeuLayoutResponsivo(),
    );
  }
}

class MeuLayoutResponsivo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App responsiva")),
      body: LayoutBuilder(
        builder:(BuildContext context, BoxConstraints constraints){
          return constraints.maxWidth <= 576 ? MobileLayout() : WebLayout();
        }
      )
    );
  }
}

class MobileLayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MobileLayoutState();
  }
}

class MobileLayoutState extends State<MobileLayout> with SingleTickerProviderStateMixin{

  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    //div class d-flex flex-column
    return Column(
      children: [
        TabBar(
          labelColor: Colors.black,
          controller: tabController,
          tabs: [Tab(text: "Aba 1"), Tab(text: "Aba 2")]
          ),
          Expanded(child: TabBarView(
            controller: tabController,
            children: [
              Center(child: Text("Conteúdo da aba 1")),
              Center(child: Text("Conteúdo da aba 2"))
            ],
          ))
      ],
    );
  }
}

class WebLayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WebLayoutState();
  }
}

class WebLayoutState extends State<WebLayout>{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Card(
            child: Center(
              child: Text("Conteúdo da aba 1"),
            )
            )
          ),
        Expanded(
          child: Card(
            child: Center(
              child: Text("Conteúdo da aba 2"),
            )
            )
        )
      ],
    );
  }
}