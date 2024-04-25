import 'package:flutter/material.dart';

class ListViewLayoutBody extends StatefulWidget {
  final ScrollController? controller;
  final List<Widget> children;
  final EdgeInsets? padding;
  final bool shrinkWrap;
  final bool reverse;

  const ListViewLayoutBody({Key? key, 
    this.controller,
    required this.children,
    this.padding,
    this.shrinkWrap = false,
    this.reverse = false,
  }) : super(key: key);

  @override
  _ListViewLayoutBodyState createState() => _ListViewLayoutBodyState();
}

class _ListViewLayoutBodyState extends State<ListViewLayoutBody> {
  late ScrollController _scrollController;

  ScrollController get _controller => widget.controller ?? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      trackVisibility: true,
      thumbVisibility: true,
      controller: _controller,
      child: ListView(
        reverse: widget.reverse,
        padding: widget.padding,
        controller: _controller,
        shrinkWrap: widget.shrinkWrap,
        children: widget.children,
      ),
    );
  }
}
