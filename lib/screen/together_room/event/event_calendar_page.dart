import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paudpedia_kemendikbud/components/toolbar_with_profile.dart';
import 'package:paudpedia_kemendikbud/controller/forum/event_list_controller.dart';
import 'package:paudpedia_kemendikbud/controller/forum/screen_state.dart';
import 'package:paudpedia_kemendikbud/models/together_room/Event/event_list_response.dart';
import 'package:paudpedia_kemendikbud/screen/together_room/event/event_detail_page.dart';
import 'package:paudpedia_kemendikbud/styles/color.dart';
import 'package:paudpedia_kemendikbud/utils/paud_date_formarter.dart';
import 'package:paudpedia_kemendikbud/utils/screen_utils.dart';
import 'package:table_calendar/table_calendar.dart';

class EventCalendarPage extends StatelessWidget {
  EventCalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLightBlue,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ToolBarWithProfile(
                imageBackground: "assets/images/banner_forum_agenda.png",
                textLeftLabel: "AGENDA",
                onBackTap: () {
                  Get.back();
                },
                isShowExit: true,
              ),
              Expanded(
                  child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                      top: 10,
                      left: 25,
                      right: 25,
                      bottom: 25,
                      child: EventContent()),
                  Positioned(
                      right: 0,
                      top: 10,
                      child: Image.asset("assets/images/leaf.png")),
                  Positioned(
                      left: 5,
                      top: (getHeight(context) / 7) * 2,
                      child: Image.asset(
                        "assets/images/character_calendar.png",
                        width: 60,
                        height: 110,
                        fit: BoxFit.cover,
                      ))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class EventContent extends StatelessWidget {
  final EventListController pageController =
      Get.put(EventListController(paudRepository: Get.find()));

  EventContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      decoration: BoxDecoration(
          color: bgLightBlue, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: -10,
                left: 20,
                right: 20,
                child: Image.asset(
                  "assets/images/header_calendar.png",
                  fit: BoxFit.fitWidth,
                  height: 90,
                ),
              ),
              Obx(
                () => CalendarEvent(
                    events: pageController.events.value
                        .map((e) => DateTime.parse(e.dPost).day)
                        .toList(),
                    onDaySelected: (selectedDay, focusDay) {
                      print(selectedDay);
                    }),
              ),
            ],
          ),
          GetBuilder<EventListController>(
            builder: (controller) {
              if (controller.viewState.value is ErrorScreenState) {
                return Center(
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: bgOrange,
                      ),
                      onPressed: () {
                        controller.getEventList(controller.month);
                      },
                      child: Text("Coba lagi",
                          style: GoogleFonts.fredokaOne(color: Colors.white))),
                );
              }

              return EventList(
                events: pageController.events.value,
              );
            },
          ),
        ],
      ),
    );
  }
}

class EventList extends StatelessWidget {
  final List<EventListResponse> events;

  const EventList({Key? key, required this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(35)),
      child: ListView.separated(
          itemCount: events.length,
          separatorBuilder: (_, pos) {
            return Divider(
              color: Colors.black,
            );
          },
          itemBuilder: (context, index) {
            EventListResponse item = events[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(PaudDateFormater.formatDateFor(
                            PaudDateFormater.FORMAT_V3, item.dPostPublish)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(item.nPostTitle),
                      ],
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.to(() => EventDetailPage(
                              eventId: item.iPost,
                            ));
                      },
                      child: Icon(Icons.arrow_forward_ios))
                ],
              ),
            );
          }),
    ));
  }
}

class CalendarEvent extends StatefulWidget {
  final void Function(DateTime, DateTime) onDaySelected;
  final List<int> events;

  CalendarEvent({Key? key, required this.onDaySelected, required this.events})
      : super(key: key);

  @override
  _CalendarEventState createState() => _CalendarEventState();
}

class _CalendarEventState extends State<CalendarEvent> {
  DateTime currentDate = DateTime.now();
  EventListController pageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 80,
            left: 20,
            right: 20,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
            )),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: TableCalendar(
              rowHeight: 40,
              focusedDay: pageController.time,
              currentDay: pageController.time,
              firstDay: currentDate,
              lastDay: DateTime.now().add(Duration(days: 365)),
              headerStyle: HeaderStyle(
                titleCentered: true,
                formatButtonVisible: false,
                titleTextStyle: GoogleFonts.fredokaOne(
                    fontWeight: FontWeight.w500, fontSize: 17),
                headerPadding: EdgeInsets.only(bottom: 50, top: 20),
                rightChevronVisible: false,
                leftChevronVisible: false,
              ),
              calendarStyle: CalendarStyle(
                outsideDaysVisible: false,
                holidayTextStyle: TextStyle(color: Colors.white),
                holidayDecoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5)),
                todayDecoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5)),
                weekendDecoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5)),
                defaultDecoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5)),
              ),
              onDaySelected: (selectedDay, focusDay) {
                setState(() {
                  widget.onDaySelected(selectedDay, focusDay);
                });
              },
              onPageChanged: (datetime) {
                pageController.setMonth("${datetime.month}");
                pageController.setDateTime(datetime);
              },
              holidayPredicate: (date) {
                return widget.events.contains(date.day);
              },
            ),
          ),
        ),
      ],
    );
  }
}
