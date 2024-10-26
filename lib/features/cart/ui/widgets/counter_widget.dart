import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/theming/text_styles.dart';
import 'package:shopping_app/features/cart/logic/counter_cubit/counter_cubit.dart';
import 'package:shopping_app/features/cart/logic/counter_cubit/counter_state.dart';
 // Import your state

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Container(
            height: 30.h,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => context.read<CounterCubit>().decrement(),
                  icon: const Icon(Icons.remove),
                  color: Colors.white,
                  iconSize: 20,
                  splashRadius: 20,
                  highlightColor: Colors.pink[200],
                  splashColor: Colors.pink[400],
                  tooltip: 'Decrement',
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),
                Text(
                  '${state.counterValue}',
                  style: TextStyles.font14WhiteSemiBold,
                ),
                IconButton(
                  onPressed: () => context.read<CounterCubit>().increment(),
                  icon: const Icon(Icons.add),
                  color: Colors.white,
                  iconSize: 20,
                  splashRadius: 20,
                  highlightColor: Colors.pink[200],
                  splashColor: Colors.pink[400],
                  tooltip: 'Increment',
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
