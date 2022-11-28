import 'package:cryptomonnaie/core/constants/app_constant.dart';
import 'package:cryptomonnaie/features/crypto/domain/entities/chart_price_entity.dart';
import 'package:cryptomonnaie/features/crypto/presentation/controller/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({Key? key, required this.cryptoID, required this.cryptoChange}) : super(key: key);
  final String cryptoID;
  final num cryptoChange;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final AsyncValue chartData = ref.watch(cryptoPricecontrollerProvider(cryptoID));
      return chartData.when(
          data: (data) => _Chart(cryptoChange: cryptoChange, prices: data),
          error: ((error, stackTrace) => Text(AppLocalizations.of(context).noLunch)),
          loading: () => const CircularProgressIndicator());
    });
  }
}

class _Chart extends StatelessWidget {
  const _Chart({required this.cryptoChange, required this.prices});
  final num cryptoChange;
  final ChartPriceEntity prices;

  @override
  Widget build(BuildContext context) {
    List<_SalesData> data = [
      _SalesData(DateTime.now(), 0),
      _SalesData(DateTime.now(), 1),
    ];

    showdata(List<dynamic> prices) {
      data.clear();
      for (var item in prices) {
        final DateTime date = DateTime.fromMillisecondsSinceEpoch(item[0]);
        final price = double.parse(item[1].toString());
        data.add(_SalesData(date, price));
      }
    }

    showdata(prices.prices);
    return SizedBox(
      height: 250,
      child: SfCartesianChart(
        plotAreaBorderColor: Colors.grey.shade700,
        enableAxisAnimation: true,
        primaryXAxis: DateTimeCategoryAxis(
          axisLine: AxisLine(
            color: Colors.grey.shade700,
            width: 1,
          ),
          dateFormat: DateFormat('hh:mm'),
          labelStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          majorGridLines: MajorGridLines(
            color: Colors.grey.shade700,
          ),
        ),
        primaryYAxis: NumericAxis(
          axisLine: AxisLine(
            color: Colors.grey.shade700,
            width: 1,
          ),
          majorGridLines: MajorGridLines(
            color: Colors.grey.shade700,
          ),
          numberFormat: NumberFormat.simpleCurrency(
            decimalDigits: 0,
          ),
          labelStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          rangePadding: ChartRangePadding.round,
        ),
        legend: Legend(isVisible: false),
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <ChartSeries<_SalesData, DateTime>>[
          LineSeries<_SalesData, DateTime>(
            dataSource: data,
            xValueMapper: (_SalesData sales, _) => sales.date,
            yValueMapper: (_SalesData sales, _) => sales.price,
            name: AppConstants.sales,
            color: cryptoChange > 0 ? const Color.fromARGB(255, 73, 199, 79) : const Color.fromARGB(255, 255, 0, 0),
            dataLabelSettings: const DataLabelSettings(
              isVisible: false,
            ),
          ),
        ],
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.date, this.price);

  final DateTime date;
  final double price;
}
