import 'package:flutter/material.dart';
import 'package:shmr_finance/utils/themes/app_theme.dart';

class ShmrListBottomButtonWrapper extends StatefulWidget {
  final VoidCallback? onTap;
  final Widget Function(ScrollController controller) childList;

  const ShmrListBottomButtonWrapper(
      {Key? key, this.onTap, required this.childList})
      : super(key: key);

  @override
  State<ShmrListBottomButtonWrapper> createState() =>
      _ShmrListBottomButtonWrapperState();
}

class _ShmrListBottomButtonWrapperState
    extends State<ShmrListBottomButtonWrapper> {
  late final ScrollController _scrollController;
  bool _showButton = true;
  double _lastOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final offset = _scrollController.offset;
    if (offset > _lastOffset && _showButton) {
      setState(() => _showButton = false);
    } else if (offset < _lastOffset && !_showButton) {
      setState(() => _showButton = true);
    }
    _lastOffset = offset;
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.childList(_scrollController),
        Positioned(
          bottom: 16,
          right: 16,
          child: AnimatedSlide(
            offset: _showButton ? Offset(0, 0) : Offset(0, 2),
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: AnimatedOpacity(
              opacity: _showButton ? 1.0 : 0.0,
              duration: Duration(milliseconds: 300),
              child: InkWell(
                onTap: widget.onTap,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: context.theme.appBarColor),
                  width: 56,
                  height: 56,
                  child: Icon(
                    Icons.add,
                    color: context.theme.commonListItemColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
