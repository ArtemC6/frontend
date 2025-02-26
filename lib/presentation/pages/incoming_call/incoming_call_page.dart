import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/presentation/resources/app_colors.dart';
import 'package:frontend/presentation/resources/app_consts.dart';
import 'package:frontend/presentation/widgets/base_scaffold.dart';

@RoutePage()
class IncomingCallPage extends StatefulWidget {
  const IncomingCallPage({super.key});

  @override
  State<IncomingCallPage> createState() => _IncomingCallPageState();
}

class _IncomingCallPageState extends State<IncomingCallPage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      background: AppConsts.hindiGuy,
      padding: EdgeInsets.zero,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          width: MediaQuery.of(context).size.width + 22,
          decoration: const BoxDecoration(
            backgroundBlendMode: BlendMode.srcIn,
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildRejectCallButton(
                onPressed: () => context.router.back(),
              ),
              _buildAcceptCallButton(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRejectCallButton({required VoidCallback onPressed}) {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.red),
        boxShadow: const [
          BoxShadow(
            color: Colors.red,
            blurRadius: 4,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          splashColor: Colors.red.withValues(alpha: 0.5),
          onTap: onPressed,
          child: SvgPicture.asset(
            height: 40,
            width: 40,
            fit: BoxFit.none,
            'assets/icons/reject_call.svg',
          ),
        ),
      ),
    );
  }

  Widget _buildAcceptCallButton({required VoidCallback onPressed}) {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.green),
        boxShadow: const [
          BoxShadow(
            color: Colors.green,
            blurRadius: 4,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          splashColor: Colors.green.withValues(alpha: 0.5),
          onTap: onPressed,
          child: SvgPicture.asset(
            height: 40,
            width: 40,
            fit: BoxFit.none,
            'assets/icons/accept_videocall.svg',
          ),
        ),
      ),
    );
  }
}

class BottomBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    const radius = 40.0;

    path.moveTo(0, radius);
    path.quadraticBezierTo(0, 0, radius, 0);
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
