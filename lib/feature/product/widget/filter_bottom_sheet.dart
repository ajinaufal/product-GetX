import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({
    super.key,
    required this.applyFilter,
    required this.minPriceController,
    required this.maxPriceController,
  });
  final TextEditingController minPriceController;
  final TextEditingController maxPriceController;
  final void Function()? applyFilter;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: EdgeInsets.only(
        top: 16.h,
        left: 16.w,
        right: 16.w,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          Text(
            'Harga',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Flexible(
                child: TextField(
                  controller: minPriceController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                        top: 12.h,
                        bottom: 12.h,
                        left: 12.w,
                      ),
                      child: Text(
                        'Rp.',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: "Termurah",
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 4.h,
                      horizontal: 12.w,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              Flexible(
                child: TextField(
                  controller: maxPriceController,
                  maxLines: 1,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                        top: 12.h,
                        bottom: 12.h,
                        left: 12.w,
                      ),
                      child: Text(
                        'Rp.',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    hintText: "Termahal",
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 4.h,
                      horizontal: 12.w,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding:
                  EdgeInsets.symmetric(vertical: 9.0.h, horizontal: 12.0.w),
              backgroundColor: Colors.blueAccent,
              disabledBackgroundColor: Colors.grey.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            onPressed: applyFilter,
            child: Text(
              'Apply Filter',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
