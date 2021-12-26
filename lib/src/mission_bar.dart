import 'package:flutter/material.dart';

class MissionBar extends StatelessWidget {
  final double _value;
  final double _min;
  final double _max;
  final EdgeInsets _sliderPadding;
  final Color _sliderActiveColor;
  final Color _sliderInActiveColor;
  final List<Widget> _iconList;

  const MissionBar(
      {Key? key,
      required double value,
      required double min,
      required double max,
      required double iconWidth,
      required EdgeInsets sliderPadding,
      required Color sliderActiveColor,
      required Color sliderInActiveColor,
      required List<Widget> iconList})
      : _value = value,
        _min = min,
        _max = max,
        _sliderPadding = sliderPadding,
        _sliderActiveColor = sliderActiveColor,
        _sliderInActiveColor = sliderInActiveColor,
        _iconList = iconList,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Padding(
            padding: _sliderPadding,
            child: SliderTheme(
              data: SliderThemeData(
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0),
                trackShape: CustomTrackShape(),
              ),
              child: Slider(
                value: _value,
                min: _min,
                max: _max,
                activeColor: _sliderActiveColor,
                inactiveColor: _sliderInActiveColor,
                label: '',
                onChanged: (double newValue) {},
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: getIconListInRow(),
          ),
        ],
      ),
    );
  }

  Widget getIconListInRow() {
    List<Widget> list = [];
    for (var i = 0; i < _iconList.length; i++) {
      list.add(_iconList[i]);
    }
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, children: list);
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight!;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
