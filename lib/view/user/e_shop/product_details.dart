import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/nav_bar_icons.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/generated/l10n.dart';
import 'package:miaid/view/user/e_shop/cart_eshop.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int value_1;
  int value_2;
  int quentity = 1;
  int tabindex = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.kffffff,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.kffffff,
          centerTitle: true,
          title: Text(
            S.of(context).viewDetails,
            style: GoogleFonts.rubik(
              color: AppColors.k010101,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: navBarIcon(iconAssetName: 'ic_nb_back.png'),
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/bnt_previous_next.png'),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image(
                    height: 160,
                    width: 160,
                    image: AssetImage('assets/images/panadol.png'),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image(
                    image: AssetImage('assets/images/bnt_medicine_next.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors.k0cbcc5,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 6,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'A\$ ',
                              style: TextStyle(
                                color: AppColors.kffffff,
                              ),
                            ),
                            Text(
                              '20.0',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: AppColors.kffffff,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (quentity > 1) {
                                quentity--;
                              }
                            });
                          },
                          child: buttonContainer(
                            Image.asset(quentity <= 1
                                ? 'assets/images/btn_medicine_quantity_minus_disabled.png'
                                : 'assets/images/btn_medicine_quantity_minus.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            '$quentity',
                            style: TextStyle(
                              color: AppColors.k010101,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              quentity++;
                            });
                          },
                          child: buttonContainer(
                            Image.asset(
                                'assets/images/btn_medicine_quantity_add.png'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 17,
                ),
                child: Text(
                  'Panadol Rapid Paracetamol Pain Relief Caplets 500mg',
                  style: GoogleFonts.rubik(
                    color: AppColors.k010101,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  'Market City Pharmacy',
                  style: GoogleFonts.rubik(
                    color: AppColors.k5e5e5e,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: AppColors.k0cbcc5.withOpacity(0.1),
                child: TabBar(
                  onTap: (index) {
                    setState(() {
                      tabindex = index;
                    });
                  },
                  labelColor: AppColors.k0cbcc5,
                  indicatorColor: AppColors.k0cbcc5,
                  unselectedLabelColor: AppColors.k5e5e5e,
                  labelStyle: GoogleFonts.rubik(
                    fontSize: 13,
                  ),
                  tabs: [
                    Tab(
                      text: S.of(context).general,
                    ),
                    Tab(
                      text: S.of(context).warning,
                    ),
                    Tab(
                      text: S.of(context).ingredient,
                    ),
                    Tab(
                      text: S.of(context).direction,
                    ),
                  ],
                ),
              ),

              // TabBarView(children:<Widget> [
              //   generalTab(),
              //   warningTab(),
              //   ingredientTab(),
              //   directionTab(),
              // ],),
              IndexedStack(
                index: tabindex,
                children: [
                  generalTab(),
                  warningTab(),
                  ingredientTab(),
                  directionTab(),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              divider(),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(
                          width: 0.5,
                          color: AppColors.k0cbcc5,
                        )),
                    child: Text(
                      S.of(context).addToCart,
                      style: GoogleFonts.rubik(
                        color: AppColors.k0cbcc5,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => CartEShop(),
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                      decoration: BoxDecoration(
                        color: AppColors.k0cbcc5,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Text(
                        S.of(context).buyNow,
                        style: GoogleFonts.rubik(
                          color: AppColors.kffffff,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buttonContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: AppColors.kffffff,
        boxShadow: [
          BoxShadow(
            color: AppColors.k003f51.withOpacity(0.1),
            offset: Offset(
              0,
              4,
            ),
            blurRadius: 15,
            spreadRadius: 0,
          )
        ],
      ),
      child: child,
    );
  }

  Widget generalTab() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 19,
      ),
      child: Column(
        children: [
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '• Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '• Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget warningTab() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 19,
      ),
      child: Column(
        children: [
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '• Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '• Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Ut enim ad minim veniam, quis nostrud exercitation ullamco.',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget ingredientTab() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 19,
      ),
      child: Column(
        children: [
          Text(
            '• Ingredient 1',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '• Ingredient 2',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '• Ingredient 3',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '• Ingredient 4',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '• Ingredient 5',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '• Ingredient 6',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget directionTab() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 19,
      ),
      child: Column(
        children: [
          Text(
            '• Direction 1',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '• Direction 2',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '• Direction 3',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '• Direction 4',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '• Direction 5',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '• Direction 6',
            style: GoogleFonts.rubik(
              letterSpacing: -0.09,
              color: AppColors.k010101,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget divider() {
    return Container(
      height: 0.5,
      width: MediaQuery.of(context).size.width,
      color: AppColors.k5e5e5e.withOpacity(0.3),
    );
  }
}
