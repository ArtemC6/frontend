import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_popup/flutter_popup.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_text_style.dart';
import 'package:intl/intl.dart';

class BaseDatePicker extends StatefulWidget {
  final Function(DateTime value) onChanged;
  const BaseDatePicker({super.key, required this.onChanged});

  @override
  State<BaseDatePicker> createState() => _BaseDatePickerState();
}

class _BaseDatePickerState extends State<BaseDatePicker> {
  late List<DateTime> displayedDates;
  late DateTime selectedDate;
  late DateTime selectedTime;
  DateTime? selectedDateTime;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
    final rawDates = List.generate(
      8,
      (index) => DateTime.now().add(
        Duration(
          days: index,
          hours: 8,
          minutes: 0,
        ),
      ),
    );
    final now = DateTime.now();
    selectedDate = now;
    selectedTime = now.copyWith(
      hour: 8,
      minute: 0,
    );

    displayedDates = _normalizeDates(rawDates);
  }

  void _updateDateTime() {
    final dateTime = DateTime(
      selectedDate.year,
      selectedDate.month,
      selectedDate.day,
      selectedTime.hour,
      selectedTime.minute,
    );
    setState(() {
      selectedDateTime = dateTime;
    });
    widget.onChanged(dateTime);
  }

  /// Нормализует даты (обнуляет время)
  List<DateTime> _normalizeDates(List<DateTime> dates) {
    return dates.map((date) => _normalizeDate(date)).toList();
  }

  DateTime _normalizeDate(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  /// Расширяет список дат до полной недели (вс - сб)
  List<DateTime> _extendToFullWeek(DateTime startDate, DateTime endDate) {
    final weekStart = startDate.subtract(Duration(days: startDate.weekday % 7));
    final weekEnd = endDate.add(Duration(days: 6 - endDate.weekday % 7));

    return List.generate(
      weekEnd.difference(weekStart).inDays + 1,
      (index) => weekStart.add(Duration(days: index)),
    );
  }

  /// Группирует список дат по месяцам
  List<List<DateTime>> _groupDatesByMonth(List<DateTime> dates) {
    dates.sort();

    List<List<DateTime>> groupedByMonth = [];
    DateTime? currentMonth;

    for (var date in dates) {
      final monthKey = DateTime(date.year, date.month);

      if (currentMonth == null || monthKey != currentMonth) {
        groupedByMonth.add([]);
        currentMonth = monthKey;
      }
      groupedByMonth.last.add(date);
    }

    return groupedByMonth;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF767680).withValues(alpha: 0.25),
        backgroundBlendMode: BlendMode.color,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              top: 10,
              bottom: 12,
            ),
            child: _buildHeader(currentDate: DateTime.now()),
          ),
          _buildDaysOfWeekRow(),
          _buildCalendarGrid(displayedDates),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Divider(
                  thickness: 0.3,
                  color: Color(0xFF7E6642),
                ),
                _buildTimeCall(),
                const Divider(
                  thickness: 0.3,
                  color: Color(0xFF7E6642),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeCall() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Call',
          style: AppTextStyle.bodyMedium.copyWith(
            letterSpacing: -0.43,
            fontWeight: FontWeight.w400,
          ),
        ),
        CustomPopup(
          backgroundColor: const Color(0xFF767680).withValues(alpha: 0.25),
          content: SizedBox(
            height: 200,
            width: 200,
            child: CupertinoTheme(
              data: const CupertinoThemeData(
                brightness: Brightness.dark,
              ),
              child: CupertinoDatePicker(
                initialDateTime: selectedTime,
                mode: CupertinoDatePickerMode.time,
                onDateTimeChanged: (DateTime value) {
                  setState(() {
                    selectedTime = value;
                    _updateDateTime();
                  });
                },
              ),
            ),
          ),
          showArrow: false,
          child: TextButton(
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
              backgroundColor: WidgetStatePropertyAll(
                const Color(0xFF787880).withValues(
                  alpha: 0.24,
                ),
              ),
            ),
            onPressed: null,
            child: Text(
              DateFormat('hh:mm a').format(selectedTime),
              style: AppTextStyle.bodyMedium.copyWith(
                letterSpacing: -0.43,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Строит заголовок с месяцем и годом
  Widget _buildHeader({required DateTime currentDate}) {
    final String monthName = DateFormat.MMMM().format(currentDate);
    final String year = currentDate.year.toString();

    return Text(
      '$monthName $year',
      textAlign: TextAlign.start,
      style: AppTextStyle.calendarMedium.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }

  /// Строит строку с названиями дней недели
  Widget _buildDaysOfWeekRow() {
    const daysOfWeek = [
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday'
    ];

    return Row(
      children: daysOfWeek
          .map(
            (day) => Expanded(
              child: Text(
                textAlign: TextAlign.center,
                day.substring(0, 3).toUpperCase(),
                style: AppTextStyle.calendarSmall.copyWith(
                  color: AppColors.grayColor.withValues(
                    alpha: 0.3,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  /// Строит сетку календаря
  Widget _buildCalendarGrid(List<DateTime> dates) {
    final months = _groupDatesByMonth(dates);

    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
        controller: _pageController,
        itemCount: months.length,
        itemBuilder: (context, index) {
          return _buildMonthView(months[index]);
        },
      ),
    );
  }

  /// Строит представление месяца с неделями
  Widget _buildMonthView(List<DateTime> dates) {
    final extendedWeek = _extendToFullWeek(dates.first, dates.last);
    final startDate = dates.first;
    final currentMonth = startDate.month;

    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7,
      ),
      itemCount: extendedWeek.length,
      itemBuilder: (context, index) {
        final date = extendedWeek[index];

        // Проверяем, входит ли дата в диапазон
        final isInRange =
            date.isAfter(dates.first.subtract(const Duration(days: 1))) &&
                date.isBefore(dates.last.add(const Duration(days: 1)));

        // Проверяем, относится ли дата к текущему месяцу
        final isInCurrentMonth = date.month == currentMonth;

        Color dayColor = AppColors.primaryTextColor;

        // Если день не относится к этому месяцу или не входит в диапазон, то закрашиваем в серый
        if (!isInCurrentMonth || !isInRange) {
          dayColor = AppColors.grayColor.withValues(alpha: 0.3);
          // Если день == сегодня или выбран, то закрашиваем в желтый
        } else if (date == _normalizeDate(DateTime.now()) ||
            selectedDate == date) {
          dayColor = AppColors.secondaryColor;
        }

        return GestureDetector(
          onTap: () => setState(() {
            // Если в диапозоне и в текщем месяце, то устанавливаем значение
            if (isInCurrentMonth && isInRange) {
              selectedDate = date;
              _updateDateTime();
            }
          }),
          child: Container(
            // Если выбраная дата == текущая и в текущем месяце, то рисуем кружок
            decoration: selectedDate == date && isInCurrentMonth
                ? BoxDecoration(
                    color: Colors.blue.withValues(alpha: 0.18),
                    backgroundBlendMode: BlendMode.color,
                    borderRadius: BorderRadius.circular(100))
                : null,
            child: Center(
              child: Text(
                date.day.toString(),
                style: AppTextStyle.calendarLarge.copyWith(
                  color: dayColor,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
