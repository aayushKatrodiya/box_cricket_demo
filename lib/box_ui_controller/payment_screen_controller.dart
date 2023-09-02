import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentScreenController {
  static final _razorPay = Razorpay();

  static var options = {
    'key': 'rzp_test_jD2e7aX08jN4lE',
    'amount': 100,
    'name': 'Aayush_katrodiya.',
    'description': 'Fine T-Shirt',
    'prefill': {
      'contact': '8320720891',
      'email': 'aayushkatrodiya8460.com',
    }
  };
  static void onPresedEvent() {
    _razorPay.open(options);
    _razorPay.on(Razorpay.EVENT_PAYMENT_ERROR, paymentfailed);
    _razorPay.on(Razorpay.EVENT_PAYMENT_SUCCESS, paymentsuccess);
  }

  static void paymentfailed(PaymentFailureResponse response) {
    log('${response.message}');
    log('${response.code}');
    log('${response.error}');
  }

  static void paymentsuccess(PaymentSuccessResponse response) {
    log('${response.signature}');
    log('${response.paymentId}');
    log('${response.orderId}');
  }

  static Widget commonListTime({
    required IconData leading,
    required String title,
    String subTitle = '',
  }) =>
      ListTile(
        leading: Icon(leading),
        title: Text(title),
        // subtitle: Text(subTitle),
      );
}













/////////
// class RaZorPayDemoUi extends StatefulWidget {
//   const RaZorPayDemoUi({super.key});

//   @override
//   State<RaZorPayDemoUi> createState() => _RaZorPayDemoUiState();
// }

// class _RaZorPayDemoUiState extends State<RaZorPayDemoUi> {
//   final _razorPay = Razorpay();
//   var options = {
//     'key': 'rzp_test_jD2e7aX08jN4lE',
//     'amount': 100,
//     'name': 'Aayush_katrodiya.',
//     'description': 'Fine T-Shirt',
//     'prefill': {
//       'contact': '8320720891',
//       'email': 'aayushkatrodiya8460.com',
//     }
//   };
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: MaterialButton(
//           onPressed: () {
//             _razorPay.open(options);
//             _razorPay.on(Razorpay.EVENT_PAYMENT_ERROR, paymentfailed);
//             _razorPay.on(Razorpay.EVENT_PAYMENT_SUCCESS, paymentsuccess);
//             setState(() {});
//           },
//           child: const Text('Pay'),
//         ),
//       ),
//     );
//   }

//   void paymentfailed(PaymentFailureResponse response) {
//     log('${response.message}');
//     log('${response.code}');
//     log('${response.error}');
//   }

//   void paymentsuccess(PaymentSuccessResponse response) {
//     log('${response.signature}');
//     log('${response.paymentId}');
//     log('${response.orderId}');
//   }
// }
