import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RemarkCategoryWidget extends StatelessWidget {
  const RemarkCategoryWidget({
    super.key,
    required this.RemarkName,
    required this.icon, required this.onTap,
  });
  final String RemarkName;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        height: 90,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.green[100], borderRadius: BorderRadius.circular(10)),
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Icon(icon),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  RemarkName,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}