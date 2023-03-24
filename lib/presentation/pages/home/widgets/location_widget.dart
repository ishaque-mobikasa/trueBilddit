import 'package:flutter/material.dart';
import 'package:truebildit/app/utils/app_paintings.dart';
import 'package:truebildit/app/utils/strings.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget(
      {super.key, required this.locationName, required this.onTap});
  final String locationName;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          SizedBox(width: size.width * 0.05),
          Container(
            height: size.height * 0.05,
            constraints: BoxConstraints(
              maxWidth: size.width * 0.42,
            ),
            color: AppPaintings.themeGreenColor,
            child: Row(
              children: [
                Flexible(
                  child: Image.asset(
                    AssetStrings.landMarkIconOutlined,
                    height: 16,
                    width: 16,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: size.width * 0.01),
                Flexible(
                    flex: 2,
                    child: Text(
                      locationName,
                      maxLines: 2,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 12,
                          color: AppPaintings.kWhite),
                    )),
                SizedBox(width: size.width * 0.01),
                Flexible(
                  child: Image.asset(
                    AssetStrings.arrowDownIcon,
                    height: 15,
                    width: 15,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
