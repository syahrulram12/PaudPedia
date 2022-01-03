import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';

class DropDownWhiteCorner extends StatefulWidget {
  final List<String> items;
  final bool isExpanded;
  final bool isCenter;
  final double padding;
  final String defaultSelected;
  final Function(String)? onMenuClicked;

  const DropDownWhiteCorner(
      {Key? key,
      required this.items,
      this.onMenuClicked,
      this.isExpanded = false,
      this.padding = 25,
      this.isCenter = true,
      required this.defaultSelected})
      : super(key: key);

  @override
  _DropDownWhiteCornerState createState() => _DropDownWhiteCornerState();
}

class _DropDownWhiteCornerState extends State<DropDownWhiteCorner> {
  late String? selectedItem;

  @override
  void initState() {
    super.initState();

    selectedItem = widget.defaultSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: widget.padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      child: Center(
        child: DropdownButton<String>(
            underline: SizedBox(),
            isExpanded: widget.isExpanded,
            icon: Visibility(
              child: Icon(Icons.arrow_downward),
              visible: false,
            ),
            iconSize: 0.0,
            value: selectedItem,
            style: GoogleFonts.robotoCondensed(
                color: textLightGrey, fontWeight: FontWeight.bold),
            hint: Text("Pilih salah satu",
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoCondensed(
                    color: textLightGrey, fontWeight: FontWeight.bold)),
            onChanged: (value) {
              setState(() {
                selectedItem = value;
              });

              if (value != null) {
                widget.onMenuClicked?.call(value);
              }
            },
            items: widget.items
                .map((item) => DropdownMenuItem<String>(
                      child: widget.isCenter
                          ? Center(
                              child: Text(
                                item,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.robotoCondensed(
                                    color: textLightGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          : Text(item,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.robotoCondensed(
                                  color: textLightGrey,
                                  fontWeight: FontWeight.bold)),
                      value: item,
                    ))
                .toList()),
      ),
    );
  }
}
