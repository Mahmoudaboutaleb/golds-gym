import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:golds_gym/core/themes/colors.dart';
import 'package:golds_gym/core/themes/styles.dart';

class FilterTab extends StatefulWidget {
  final String title;
  final String selectedFilter;
  final Function(String) onTap;

  const FilterTab({
    super.key,
    required this.title,
    required this.selectedFilter,
    required this.onTap,
  });

  @override
  State<FilterTab> createState() => _FilterTabState();
}

class _FilterTabState extends State<FilterTab> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap(widget.title);
      },
      child: SizedBox(
        width: 96.w,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: Styles.font14WhiteWeight400.copyWith(
                    color: widget.selectedFilter == widget.title
                        ? ColorsManager.primaryColor
                        : const Color(0xFFF4F4F4),
                  ),
                ),
              ],
            ),
            if (widget.selectedFilter == widget.title)
              Positioned(
                bottom: 0,
                child: Container(
                  height: 2.h,
                  width: 85.w,
                  color: ColorsManager.primaryColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
