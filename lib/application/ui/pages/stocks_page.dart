import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:stocks/application/data/bloc/stock/bloc.dart';
import 'package:stocks/application/data/bloc/stock/stock_bloc.dart';
import 'package:stocks/application/data/remote/iex_models.dart';
import 'package:stocks/application/domain/models/stock.dart';

class StocksPage extends StatefulWidget {
  @override
  _StocksPageState createState() => _StocksPageState();
}

class _StocksPageState extends State<StocksPage> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<StockBloc>(context)
    ..add(GetStocks());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf0f0f0),
      appBar: AppBar(
        title: Text('Stocks'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: BlocBuilder<StockBloc,StockState>(
          builder: (BuildContext context, state) {
            return state.map(
              stockListEmpty: (empty) => Text('Add stocks'),
              loading: (loading) => FadeInTransition(ms: 5000, child: Loading()),//Text('Loading', style: TextStyle(color: Colors.white, fontSize: 32) ,),
              ready: (ready) => FadeInTransition(ms: 5000, child: StockList(stocks: ready.stocks)),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { BlocProvider.of<StockBloc>(context).add(GetStocks()); },
        child: Icon(Icons.edit),
        backgroundColor: Colors.red[900],
      ),
    );
  }
}

class StockList extends StatefulWidget {
  final List<IexStock> stocks;

  StockList({key, @required this.stocks}) : super(key: key);

  @override
  _StockListState createState() => _StockListState();
}

class _StockListState extends State<StockList> {
  final _scrollController = ScrollController();
  final currency = NumberFormat.simpleCurrency();
//  final List<int> _expandedItems = [];

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Expanded(child: ListView.builder(
            controller: _scrollController,
            physics: BouncingScrollPhysics(),
            itemCount: widget.stocks.length,
            itemBuilder: (BuildContext context, int index) {
              final stock = widget.stocks[index].quote;
              final isGain = stock.latestPrice >= stock.previousClose;
              return ListTile(
                title: Text(stock.symbol),
                subtitle: Text(stock.companyName),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('${currency.format(stock.latestPrice)}', style: TextStyle(fontWeight: FontWeight.bold, color: isGain ? Colors.green[900] : Colors.red[900]),),
                    Text("${isGain ? '+' : '-'} ${currency.format(stock.change.abs())}", style: TextStyle(color: isGain ? Colors.green[900] : Colors.red[900]),)
                  ],
                ),
              );
            },
          ),
          ),
        ],
      ),
    );
  }
}



class Stock extends StatefulWidget {
  static const double nominalOpenHeight = 400;
  static const double nominalClosedHeight = 160;
  final StockData stock;
  final Function onClick;

  const Stock({Key key, @required this.stock, @required this.onClick}) : super(key: key);

  @override
  _StockState createState() => _StockState();
}

class _StockState extends State<Stock> {
  bool _isOpen;

  @override
  void initState() {
    _isOpen = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _colorTween;

  @override
  void initState() {
    _animationController = AnimationController(duration: const Duration(milliseconds: 600),vsync: this);
    _colorTween = _animationController.drive(
        ColorTween(begin: Colors.deepPurple, end: Colors.red[900])
    );
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      SizedBox(
          height: 120,
          width: 120,
          child: CircularProgressIndicator(
            valueColor: _colorTween,
            strokeWidth: 8,
          )
      );
}

class FadeInTransition extends StatefulWidget {
  final Widget child;
  final int ms;

  FadeInTransition({this.ms = 300, @required this.child});

  @override
  _FadeInTransitionState createState() => _FadeInTransitionState();
}

class _FadeInTransitionState extends State<FadeInTransition> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: widget.ms)
    );
    _animation = Tween(begin: 0.0, end: 1.0,).animate(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _animation, child: widget.child,);
  }
}



