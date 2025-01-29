import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:golds_gym/core/themes/styles.dart';

class InstructorView extends StatefulWidget {
  const InstructorView({super.key});

  @override
  State<InstructorView> createState() => _InstructorViewState();
}

class _InstructorViewState extends State<InstructorView> {
  List<String> instructors = ["Coach Mohamed", "Coach Ahmed", "Coach Sami"];
  String? selectedInstructor;
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  void _showInstructorSelectionModal(BuildContext context) {
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          width: 300.w,
          child: CompositedTransformFollower(
            link: _layerLink,
            showWhenUnlinked: false,
            offset: Offset(0, 45.h), // إزاحة القائمة لأسفل
            child: Material(
              color: Colors.transparent,
              child: Container(
                width: 352.w, // نفس عرض العنصر
                decoration: BoxDecoration(
                  color: const Color(0xFF252122),
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(top: 10.h, right: 10.w, left: 10.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...instructors.map((instructorItem) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedInstructor = instructorItem;
                          });
                          _removeOverlay(); // إغلاق القائمة
                        },
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                              vertical: 12.h, horizontal: 16.w),
                          margin: EdgeInsets.only(bottom: 10.h),
                          decoration: BoxDecoration(
                            color: selectedInstructor == instructorItem
                                ? const Color(0xFF312E2F)
                                : const Color(0xFF312E2F),
                            borderRadius: BorderRadius.circular(47.r),
                          ),
                          child: Text(
                            instructorItem,
                            style: Styles.font14WhiteWeight400,
                          ),
                        ),
                      );
                    })
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );

    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    if (_overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 25.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: CompositedTransformTarget(
              link: _layerLink,
              child: GestureDetector(
                onTap: () {
                  if (_overlayEntry == null) {
                    _showInstructorSelectionModal(context);
                  } else {
                    _removeOverlay();
                  }
                },
                child: Center(
                  child: Container(
                    width: 362.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFF312E2F),
                      borderRadius: BorderRadius.circular(47.r),
                      border: Border.all(color: const Color(0xFF424242)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.w, right: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            selectedInstructor ?? "-- Select Instructor --",
                            style: Styles.font14WhiteWeight400,
                          ),
                          SizedBox(width: 5.w),
                          const RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.chevron_right,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
