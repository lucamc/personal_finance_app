import 'package:finance_app/design/finance_colors.dart';
import 'package:flutter/material.dart';
import '../design/finance_radius.dart';

class HomeAppBarTitle extends StatelessWidget {
  //Constructor
  const HomeAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //  User photo
        Container(
          width: 40,
          height: 40,
          margin: EdgeInsets.only(right: 12),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(FinanceRadius.xs),
              image:
                  DecorationImage(image: AssetImage('assets/images/user.png'))),
        ),

        // Title Name
        Expanded(
          child: Text(
            'Store Name',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),

        // Notificaiones Icon
        ContainerHeadericon(
          iconButton: IconButton(
            onPressed: () => print("Notificaiones"),
            icon: const Icon(
              Icons.notifications,
              color: FinanceColors.brandPrimaryColor,
            ),
          ),
        ),

        // More Icon
        ContainerHeadericon(
          confingMargin: const EdgeInsets.only(left: 12),
          iconButton: IconButton(
            onPressed: () => print("More Vertical"),
            icon: const Icon(
              Icons.more_vert,
              color: FinanceColors.brandPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}

// Container Icon Button
class ContainerHeadericon extends StatelessWidget {
  //Properties, Icon, Margin
  final IconButton iconButton;
  final EdgeInsets? confingMargin;

  //Constructor
  const ContainerHeadericon(
      {super.key, required this.iconButton, this.confingMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: confingMargin,
      decoration: BoxDecoration(
        border: Border.all(color: FinanceColors.brandSecondaryColor),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: iconButton,
    );
  }
}
