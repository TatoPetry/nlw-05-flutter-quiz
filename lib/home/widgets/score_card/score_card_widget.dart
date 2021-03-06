import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widgets/chart/chart_widget.dart';
import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  final double percent;
  ScoreCardWidget({Key? key, required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
          height: 136,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: AppColors.white),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1, 
                  child: ChartWidget(
                    percent: percent,
                  )
                  ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Vamos começar', 
                          style: AppTextStyles.heading,),
                        Text(
                          'Complete os desafios e avance em conhecimento', 
                          style: AppTextStyles.body,)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
