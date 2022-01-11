import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/appbar_gradient.dart';

class WithDrawPage extends StatefulWidget {
  const WithDrawPage({Key? key}) : super(key: key);

  @override
  _WithDrawPageState createState() => _WithDrawPageState();
}

class _WithDrawPageState extends State<WithDrawPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //closing the key board
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
            title: const Center(
              child: Text(
                'Withdraw',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            flexibleSpace: appBarGradient()),
        body: Container(
          padding: const EdgeInsets.only(left: 43, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 32),
                  const Text(
                    'Amount',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Open Sans'),
                  ),
                  const Text(
                    'Enter withdrawal amount',
                    style: TextStyle(fontSize: 12, fontFamily: 'Open Sans'),
                  ),
                  const SizedBox(height: 6),
                  SizedBox(
                    width: 318.0,
                    height: 70.0,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                          filled: true,
                          fillColor: const Color(0xffdbd8d8),
                          prefixText: kGhanaCedi.toString(),
                          labelText: 'Enter amount here',
                          helperText:
                              'Withdrawal amount must be at least GHS5.00'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(height: 27),
                  const Text(
                    'Wallet',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Open Sans'),
                  ),
                  const Text(
                    'Select the wallet to pay into',
                    style: TextStyle(fontSize: 12, fontFamily: 'Open Sans'),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: 322.0,
                    height: 88.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.info_rounded),
                          Text(
                            'No Withdrawal wallets available. Enable \nWithdrawals on any wallet or create anew \nwithdrawal wallet.',
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontSize: 12,
                              color: Color(0xff000000),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.account_balance_wallet_rounded,
                      color: Color(0xFF707070),
                      size: 36,
                    ),
                    title: const Text(
                      'Adam\'s MoMo Account',
                      style: TextStyle(fontSize: 12, fontFamily: 'Open Sans'),
                    ),
                    subtitle: const Text(
                      'MTN +233543683041',
                      style: TextStyle(fontSize: 12, fontFamily: 'Open Sans'),
                    ),
                    trailing: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Edit',
                          style:
                              TextStyle(fontSize: 14, fontFamily: 'Open Sans'),
                        )),
                  ),
                  const Divider(height: 2),
                  const SizedBox(height: 22.5),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Add New Wallet',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFFF2D8EB)),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: SizedBox(
                    width: 251,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Proceed',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'SF Pro Text',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
