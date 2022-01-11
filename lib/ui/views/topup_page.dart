import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/appbar_gradient.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({Key? key}) : super(key: key);

  @override
  _TopUpPageState createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  bool _firstWallet = true;
  bool _secondWallet = false;

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
                'Top Up',
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
                              'Initial deposit must be at least GHS 10.00'),
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
                    'Select the wallet to make payment from',
                    style: TextStyle(fontSize: 12, fontFamily: 'Open Sans'),
                  ),
                  SwitchListTile(
                      activeColor: Colors.blue,
                      secondary: const Icon(
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
                      value: _firstWallet,
                      onChanged: (value) {
                        setState(() {
                          _firstWallet = value;
                          _secondWallet = false;
                        });
                      }),
                  const Divider(height: 2),
                  SwitchListTile(
                      activeColor: Colors.blue,
                      secondary: const Icon(
                        Icons.account_balance_wallet_rounded,
                        color: Color(0xFF707070),
                        size: 36,
                      ),
                      title: const Text(
                        'My VodaCash Account',
                        style: TextStyle(fontSize: 12, fontFamily: 'Open Sans'),
                      ),
                      subtitle: const Text(
                        'Voda +233546083599',
                        style: TextStyle(fontSize: 12, fontFamily: 'Open Sans'),
                      ),
                      value: _secondWallet,
                      onChanged: (value) {
                        setState(() {
                          _secondWallet = value;
                          _firstWallet = false;
                        });
                      }),
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
