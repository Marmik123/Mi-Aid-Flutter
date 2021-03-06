import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaid/component/nav_bar_icons.dart';
import 'package:miaid/config/app_colors.dart';
import 'package:miaid/generated/l10n.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    leading: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 13),
                        child: navBarIcon(iconAssetName: 'ic_nb_back.png'),
                      ),
                    ),
                    title: Text(
                      S.of(context).chat,
                      style: GoogleFonts.rubik(
                        color: AppColors.k010101,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    centerTitle: true,
                  ),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Today',
                            style: GoogleFonts.rubik(
                              fontSize: 12,
                              color: AppColors.kb1b1b1,
                            ),
                          ),
                        ),
                        SizedBox(height: 18),
                        receiverTextMessage(),
                        senderTextMessage(),
                        receiverTextMessage(),
                        receiverDocument(),
                        receiverImage(),
                        receiverVideo(),
                        senderTextMessage(),
                        receiverTextMessage(),
                        receiverDocument(),
                        receiverImage(),
                        receiverVideo(),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: AppColors.kffffff,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      // controller: ctrl.sendMessageController,
                      autofocus: false,
                      onChanged: (value) {},

                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 20),
                        border: InputBorder.none,
                        hintText: 'Type a message...',
                        hintStyle: GoogleFonts.sourceSerifPro(
                          fontSize: 11,
                          color: AppColors.k808080.withOpacity(0.8),
                          fontWeight: FontWeight.w300,
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                      ),
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      // ctrl.sendMessage();
                    },
                    child: Image(
                      image:
                          AssetImage('assets/images/ic_chat_attachments.png'),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      final action = CupertinoActionSheet(
                        message: Text(
                          S.of(context).select,
                          style: TextStyle(
                            fontSize: 13.0,
                            color: AppColors.k8f8e94,
                          ),
                        ),
                        actions: <Widget>[
                          CupertinoActionSheetAction(
                            child: Text(
                              S.of(context).camera,
                              style: GoogleFonts.rubik(
                                color: AppColors.k0cbcc5,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            isDefaultAction: true,
                            onPressed: () {
                              print('Action 1 is been clicked');
                            },
                          ),
                          CupertinoActionSheetAction(
                            child: Text(
                              S.of(context).chooseFromAlbums,
                              style: GoogleFonts.rubik(
                                color: AppColors.k0cbcc5,
                                fontSize: 20,
                              ),
                            ),
                            isDestructiveAction: true,
                            onPressed: () {
                              print('Action 2 is been clicked');
                            },
                          )
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          child: Text(
                            S.of(context).cancel,
                            style: GoogleFonts.rubik(
                              color: AppColors.k0cbcc5,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      );
                      showCupertinoModalPopup(
                          context: context, builder: (context) => action);
                    },
                    child: Image(
                      image: AssetImage('assets/images/ic_chat_camera.png'),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      // ctrl.sendMessage();
                    },
                    child: Image(
                      image: AssetImage('assets/images/btn_chat_send.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 25,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 1,
                    color: AppColors.k0cbcc5,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          height: 98,
                          width: 98,
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/female_doctor.jpg'),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.k0cbcc5.withOpacity(0.5),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                // topRight: Radius.circular(10),
                                // bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 2, left: 2, right: 5, bottom: 2),
                              child: Image(
                                image: AssetImage(
                                  'assets/images/ic_call_turnonvideo_copy.png',
                                ),
                                width: 25,
                                height: 25,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget senderTextMessage() {
  return Padding(
    padding: const EdgeInsets.only(
      right: 18,
      top: 12,
      left: 30,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.k0cbcc5,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.k010101.withOpacity(0.18),
                      offset: Offset(
                        0,
                        0,
                      ),
                      blurRadius: 8,
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 11,
                    bottom: 11,
                    right: 14,
                    left: 14,
                  ),
                  child: Text(
                    'Hi ',
                    style: GoogleFonts.sourceSerifPro(
                      fontSize: 14,
                      color: AppColors.k010101,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '10:09 AM',
                    style: GoogleFonts.sourceSerifPro(
                      fontSize: 11,
                      color: AppColors.k808080.withOpacity(0.8),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 9,
        ),
        Column(
          children: [
            Image(
              height: 34,
              width: 34,
              image: AssetImage(
                'assets/images/ic_service_assistance.png',
              ),
            ),
            SizedBox(
              height: 11,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget receiverTextMessage() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 21,
      top: 12,
      right: 30,
    ),
    child: Row(
      children: [
        Column(
          children: [
            Image(
              height: 34,
              width: 34,
              image: AssetImage('assets/images/ic_service_assistance.png'),
            ),
            SizedBox(height: 11),
          ],
        ),
        SizedBox(
          width: 9,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.kffffff,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.k010101.withOpacity(0.18),
                      offset: Offset(
                        0,
                        0,
                      ),
                      blurRadius: 8,
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 11,
                    bottom: 11,
                    right: 14,
                    left: 14,
                  ),
                  child: Text(
                    'Hello',
                    style: GoogleFonts.sourceSerifPro(
                      fontSize: 14,
                      color: AppColors.k010101,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '10:09 AM',
                    style: GoogleFonts.sourceSerifPro(
                      fontSize: 11,
                      color: AppColors.k808080.withOpacity(0.8),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget receiverDocument() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 21,
      top: 12,
      right: 30,
    ),
    child: Row(
      children: [
        SizedBox(
          width: 43,
        ),
        Expanded(
          flex: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.kffffff,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.k010101.withOpacity(0.18),
                      offset: Offset(
                        0,
                        0,
                      ),
                      blurRadius: 8,
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 11,
                    bottom: 11,
                    right: 14,
                    left: 14,
                  ),
                  // child:
                  child: Row(
                    children: [
                      navBarIcon(iconAssetName: 'ic_nb_purchases.png'),
                      SizedBox(width: 6),
                      Text(
                        'Document goes here...',
                        style: GoogleFonts.sourceSerifPro(
                          fontSize: 14,
                          color: AppColors.k010101,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '10:10 AM',
                    style: GoogleFonts.sourceSerifPro(
                      fontSize: 11,
                      color: AppColors.k808080.withOpacity(0.8),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget receiverImage() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 21,
      top: 12,
      right: 30,
    ),
    child: Row(
      children: [
        SizedBox(
          width: 43,
        ),
        Expanded(
          flex: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.kffffff,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.k010101.withOpacity(0.18),
                      offset: Offset(
                        0,
                        0,
                      ),
                      blurRadius: 8,
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 11,
                    bottom: 11,
                    right: 14,
                    left: 14,
                  ),
                  // child:
                  child: Image(
                    image: AssetImage('assets/images/logo_auth.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '10:10 AM',
                    style: GoogleFonts.sourceSerifPro(
                      fontSize: 11,
                      color: AppColors.k808080.withOpacity(0.8),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget receiverVideo() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 21,
      top: 12,
      right: 30,
    ),
    child: Row(
      children: [
        SizedBox(
          width: 43,
        ),
        Expanded(
          flex: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.kffffff,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.k010101.withOpacity(0.18),
                      offset: Offset(
                        0,
                        0,
                      ),
                      blurRadius: 8,
                      spreadRadius: 0,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 11,
                    bottom: 11,
                    right: 14,
                    left: 14,
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/logo_auth.png'),
                        ),
                      ),
                      Positioned(
                        bottom: 35,
                        right: 35,
                        child: Image(
                          image: AssetImage('assets/images/btn_chat_play.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '10:10 AM',
                    style: GoogleFonts.sourceSerifPro(
                      fontSize: 11,
                      color: AppColors.k808080.withOpacity(0.8),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
