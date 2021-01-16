// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, We couldn’t find an account with given username and/or password. We can help you to`
  String get resetPassMessage {
    return Intl.message(
      'Sorry, We couldn’t find an account with given username and/or password. We can help you to',
      name: 'resetPassMessage',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPass {
    return Intl.message(
      'Reset Password',
      name: 'resetPass',
      desc: '',
      args: [],
    );
  }

  /// ` or create a `
  String get orcreate {
    return Intl.message(
      ' or create a ',
      name: 'orcreate',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get newAccount {
    return Intl.message(
      'New Account',
      name: 'newAccount',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Must have atleast 8 characters`
  String get passHint {
    return Intl.message(
      'Must have atleast 8 characters',
      name: 'passHint',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPass {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPass',
      desc: '',
      args: [],
    );
  }

  /// `Please enter an Email`
  String get entEmail {
    return Intl.message(
      'Please enter an Email',
      name: 'entEmail',
      desc: '',
      args: [],
    );
  }

  /// `The format doesn't look right. Please check again`
  String get entVEmain {
    return Intl.message(
      'The format doesn`t look right. Please check again',
      name: 'entVEmain',
      desc: '',
      args: [],
    );
  }

  /// `PLease enter a Password`
  String get entPass {
    return Intl.message(
      'PLease enter a Password',
      name: 'entPass',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account ?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account ?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Individual User`
  String get individual {
    return Intl.message(
      'Individual User',
      name: 'individual',
      desc: '',
      args: [],
    );
  }

  /// `Corporate User`
  String get corporate {
    return Intl.message(
      'Corporate User',
      name: 'corporate',
      desc: '',
      args: [],
    );
  }

  /// `By Submitting, You agree to our `
  String get bySubmit {
    return Intl.message(
      'By Submitting, You agree to our ',
      name: 'bySubmit',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Unfortunately you are unable to sign up for a corporate account using the app. Please contact your employer to receive the login details if your company is registered with MiAid Services`
  String get corporateText {
    return Intl.message(
      'Unfortunately you are unable to sign up for a corporate account using the app. Please contact your employer to receive the login details if your company is registered with MiAid Services',
      name: 'corporateText',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPass {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPass',
      desc: '',
      args: [],
    );
  }

  /// `Save Password`
  String get savePass {
    return Intl.message(
      'Save Password',
      name: 'savePass',
      desc: '',
      args: [],
    );
  }

  /// `Re-type your new password here`
  String get rePass {
    return Intl.message(
      'Re-type your new password here',
      name: 'rePass',
      desc: '',
      args: [],
    );
  }

  /// `An Email with link to reset password has been sent to your email. Please check and try again`
  String get forgotPassMessage {
    return Intl.message(
      'An Email with link to reset password has been sent to your email. Please check and try again',
      name: 'forgotPassMessage',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePass {
    return Intl.message(
      'Change Password',
      name: 'changePass',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get currPass {
    return Intl.message(
      'Current Password',
      name: 'currPass',
      desc: '',
      args: [],
    );
  }

  /// `Link Send`
  String get linkSend {
    return Intl.message(
      'Link Send',
      name: 'linkSend',
      desc: '',
      args: [],
    );
  }

  /// `Okay`
  String get okay {
    return Intl.message(
      'Okay',
      name: 'okay',
      desc: '',
      args: [],
    );
  }

  /// `A Password reset link has been sent.\nPlease check your email.`
  String get linkSendMessage {
    return Intl.message(
      'A Password reset link has been sent.\nPlease check your email.',
      name: 'linkSendMessage',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get logoutAlertMessage {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'logoutAlertMessage',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Last Call`
  String get lastCall {
    return Intl.message(
      'Last Call',
      name: 'lastCall',
      desc: '',
      args: [],
    );
  }

  /// `Call History`
  String get callHistory {
    return Intl.message(
      'Call History',
      name: 'callHistory',
      desc: '',
      args: [],
    );
  }

  /// `Customer ID`
  String get customerId {
    return Intl.message(
      'Customer ID',
      name: 'customerId',
      desc: '',
      args: [],
    );
  }

  /// `Customer Name`
  String get customerName {
    return Intl.message(
      'Customer Name',
      name: 'customerName',
      desc: '',
      args: [],
    );
  }

  /// `MiAid Assistant`
  String get assistant {
    return Intl.message(
      'MiAid Assistant',
      name: 'assistant',
      desc: '',
      args: [],
    );
  }

  /// `Translator`
  String get tranlator {
    return Intl.message(
      'Translator',
      name: 'tranlator',
      desc: '',
      args: [],
    );
  }

  /// `Doctor`
  String get doctor {
    return Intl.message(
      'Doctor',
      name: 'doctor',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `MiAid`
  String get miaid {
    return Intl.message(
      'MiAid',
      name: 'miaid',
      desc: '',
      args: [],
    );
  }

  /// `Incoming Call`
  String get incomingCall {
    return Intl.message(
      'Incoming Call',
      name: 'incomingCall',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get myProfile {
    return Intl.message(
      'My Profile',
      name: 'myProfile',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `General Details`
  String get generalDetail {
    return Intl.message(
      'General Details',
      name: 'generalDetail',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Preferred Language`
  String get preLanguage {
    return Intl.message(
      'Preferred Language',
      name: 'preLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Other Settings`
  String get otherSettings {
    return Intl.message(
      'Other Settings',
      name: 'otherSettings',
      desc: '',
      args: [],
    );
  }

  /// `Account Details`
  String get accountDetails {
    return Intl.message(
      'Account Details',
      name: 'accountDetails',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get fname {
    return Intl.message(
      'First Name',
      name: 'fname',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lName {
    return Intl.message(
      'Last Name',
      name: 'lName',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Save Change`
  String get saveChange {
    return Intl.message(
      'Save Change',
      name: 'saveChange',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get tandc {
    return Intl.message(
      'Terms & Conditions',
      name: 'tandc',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `About MiAid`
  String get about {
    return Intl.message(
      'About MiAid',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Success!!`
  String get success {
    return Intl.message(
      'Success!!',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Password has been reset successfully`
  String get successMessage {
    return Intl.message(
      'Password has been reset successfully',
      name: 'successMessage',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Please Verify Your Account To`
  String get verifyAccountText {
    return Intl.message(
      'Please Verify Your Account To',
      name: 'verifyAccountText',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continues {
    return Intl.message(
      'Continue',
      name: 'continues',
      desc: '',
      args: [],
    );
  }

  /// `The verification code has been send to your `
  String get veryfyOTPText {
    return Intl.message(
      'The verification code has been send to your ',
      name: 'veryfyOTPText',
      desc: '',
      args: [],
    );
  }

  /// `your`
  String get your {
    return Intl.message(
      'your',
      name: 'your',
      desc: '',
      args: [],
    );
  }

  /// `dedecated Email`
  String get dedicatedEmail {
    return Intl.message(
      'dedecated Email',
      name: 'dedicatedEmail',
      desc: '',
      args: [],
    );
  }

  /// `Don't receive the verification code? `
  String get dontHaveCode {
    return Intl.message(
      'Don\'t receive the verification code? ',
      name: 'dontHaveCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resendOtp {
    return Intl.message(
      'Resend Code',
      name: 'resendOtp',
      desc: '',
      args: [],
    );
  }

  /// `Verify OTP`
  String get verifyOTP {
    return Intl.message(
      'Verify OTP',
      name: 'verifyOTP',
      desc: '',
      args: [],
    );
  }

  /// `DOB`
  String get dob {
    return Intl.message(
      'DOB',
      name: 'dob',
      desc: '',
      args: [],
    );
  }

  /// `Select a Language`
  String get selectLang {
    return Intl.message(
      'Select a Language',
      name: 'selectLang',
      desc: '',
      args: [],
    );
  }

  /// `Select a gender`
  String get selsctGender {
    return Intl.message(
      'Select a gender',
      name: 'selsctGender',
      desc: '',
      args: [],
    );
  }

  /// `Any`
  String get anys {
    return Intl.message(
      'Any',
      name: 'anys',
      desc: '',
      args: [],
    );
  }

  /// `Doctor Preference`
  String get doctorPre {
    return Intl.message(
      'Doctor Preference',
      name: 'doctorPre',
      desc: '',
      args: [],
    );
  }

  /// `Sample`
  String get sample {
    return Intl.message(
      'Sample',
      name: 'sample',
      desc: '',
      args: [],
    );
  }

  /// `Travel Agency Name`
  String get travelAgencyName {
    return Intl.message(
      'Travel Agency Name',
      name: 'travelAgencyName',
      desc: '',
      args: [],
    );
  }

  /// `Next Of Kin`
  String get nextOfKin {
    return Intl.message(
      'Next Of Kin',
      name: 'nextOfKin',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Regular Doctor`
  String get regularDoctor {
    return Intl.message(
      'Regular Doctor',
      name: 'regularDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Complete Profile`
  String get completeProfile {
    return Intl.message(
      'Complete Profile',
      name: 'completeProfile',
      desc: '',
      args: [],
    );
  }

  /// `Complete Your Profile`
  String get completeYourProfile {
    return Intl.message(
      'Complete Your Profile',
      name: 'completeYourProfile',
      desc: '',
      args: [],
    );
  }

  /// `Travel Care`
  String get travelCare {
    return Intl.message(
      'Travel Care',
      name: 'travelCare',
      desc: '',
      args: [],
    );
  }

  /// `Hi`
  String get hi {
    return Intl.message(
      'Hi',
      name: 'hi',
      desc: '',
      args: [],
    );
  }

  /// `You are in Australia`
  String get urinau {
    return Intl.message(
      'You are in Australia',
      name: 'urinau',
      desc: '',
      args: [],
    );
  }

  /// `How Can we help you today?`
  String get needHelp {
    return Intl.message(
      'How Can we help you today?',
      name: 'needHelp',
      desc: '',
      args: [],
    );
  }

  /// `Dial`
  String get dial {
    return Intl.message(
      'Dial',
      name: 'dial',
      desc: '',
      args: [],
    );
  }

  /// `In an Emergency`
  String get emergency {
    return Intl.message(
      'In an Emergency',
      name: 'emergency',
      desc: '',
      args: [],
    );
  }

  /// `Remaining video consultations`
  String get remainingVideo {
    return Intl.message(
      'Remaining video consultations',
      name: 'remainingVideo',
      desc: '',
      args: [],
    );
  }

  /// `ED and Clinics \nNear Me`
  String get edandClinic {
    return Intl.message(
      'ED and Clinics \nNear Me',
      name: 'edandClinic',
      desc: '',
      args: [],
    );
  }

  /// `MiAid \nAssistance`
  String get miaidAssistance {
    return Intl.message(
      'MiAid \nAssistance',
      name: 'miaidAssistance',
      desc: '',
      args: [],
    );
  }

  /// `E - Shop`
  String get eShop {
    return Intl.message(
      'E - Shop',
      name: 'eShop',
      desc: '',
      args: [],
    );
  }

  /// `Video Consult \nA Doctor`
  String get videoDoctor {
    return Intl.message(
      'Video Consult \nA Doctor',
      name: 'videoDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Other MiAid Services`
  String get otherService {
    return Intl.message(
      'Other MiAid Services',
      name: 'otherService',
      desc: '',
      args: [],
    );
  }

  /// `Alert`
  String get alert {
    return Intl.message(
      'Alert',
      name: 'alert',
      desc: '',
      args: [],
    );
  }

  /// `You don’t have any available video consultations left. You may get the required service through MiAid Services. Do you want to access MiAid Services?`
  String get consultAlertMessage {
    return Intl.message(
      'You don’t have any available video consultations left. You may get the required service through MiAid Services. Do you want to access MiAid Services?',
      name: 'consultAlertMessage',
      desc: '',
      args: [],
    );
  }

  /// `Schedualed Call`
  String get schedualCall {
    return Intl.message(
      'Schedualed Call',
      name: 'schedualCall',
      desc: '',
      args: [],
    );
  }

  /// `To be eligible for these services you should be subscribed to a travel care package`
  String get travelAlertMessage {
    return Intl.message(
      'To be eligible for these services you should be subscribed to a travel care package',
      name: 'travelAlertMessage',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe`
  String get subscribe {
    return Intl.message(
      'Subscribe',
      name: 'subscribe',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message(
      'Select',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Choose From Albums`
  String get chooseFromAlbums {
    return Intl.message(
      'Choose From Albums',
      name: 'chooseFromAlbums',
      desc: '',
      args: [],
    );
  }

  /// `View Receipt`
  String get viewReceipt {
    return Intl.message(
      'View Receipt',
      name: 'viewReceipt',
      desc: '',
      args: [],
    );
  }

  /// `Appoinment Receipt`
  String get appointmentReceipt {
    return Intl.message(
      'Appoinment Receipt',
      name: 'appointmentReceipt',
      desc: '',
      args: [],
    );
  }

  /// `Provider Number`
  String get providerNumber {
    return Intl.message(
      'Provider Number',
      name: 'providerNumber',
      desc: '',
      args: [],
    );
  }

  /// `Patient Name`
  String get patientName {
    return Intl.message(
      'Patient Name',
      name: 'patientName',
      desc: '',
      args: [],
    );
  }

  /// `Video Consultation`
  String get videoConsult {
    return Intl.message(
      'Video Consultation',
      name: 'videoConsult',
      desc: '',
      args: [],
    );
  }

  /// `Item Number`
  String get itmeNumber {
    return Intl.message(
      'Item Number',
      name: 'itmeNumber',
      desc: '',
      args: [],
    );
  }

  /// `Sub Total`
  String get subTotal {
    return Intl.message(
      'Sub Total',
      name: 'subTotal',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Active Package`
  String get activePackage {
    return Intl.message(
      'Active Package',
      name: 'activePackage',
      desc: '',
      args: [],
    );
  }

  /// `Package`
  String get package {
    return Intl.message(
      'Package',
      name: 'package',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get available {
    return Intl.message(
      'Available',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `Weeks`
  String get weeks {
    return Intl.message(
      'Weeks',
      name: 'weeks',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Add To Cart`
  String get addToCart {
    return Intl.message(
      'Add To Cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `All Categories`
  String get allCategories {
    return Intl.message(
      'All Categories',
      name: 'allCategories',
      desc: '',
      args: [],
    );
  }

  /// `Purchases`
  String get purchases {
    return Intl.message(
      'Purchases',
      name: 'purchases',
      desc: '',
      args: [],
    );
  }

  /// `Order Number`
  String get orderNumber {
    return Intl.message(
      'Order Number',
      name: 'orderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Order Date & Time`
  String get orderDate {
    return Intl.message(
      'Order Date & Time',
      name: 'orderDate',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Fees`
  String get deliveryFees {
    return Intl.message(
      'Delivery Fees',
      name: 'deliveryFees',
      desc: '',
      args: [],
    );
  }

  /// `Order Total`
  String get orderTotal {
    return Intl.message(
      'Order Total',
      name: 'orderTotal',
      desc: '',
      args: [],
    );
  }

  /// `Order Again`
  String get orderAgain {
    return Intl.message(
      'Order Again',
      name: 'orderAgain',
      desc: '',
      args: [],
    );
  }

  /// `Thank You for orderring with us`
  String get receiptMessage {
    return Intl.message(
      'Thank You for orderring with us',
      name: 'receiptMessage',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Receipt`
  String get purchaseReceipt {
    return Intl.message(
      'Purchase Receipt',
      name: 'purchaseReceipt',
      desc: '',
      args: [],
    );
  }

  /// `Total Order`
  String get totalOrder {
    return Intl.message(
      'Total Order',
      name: 'totalOrder',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Option`
  String get deliveryOption {
    return Intl.message(
      'Delivery Option',
      name: 'deliveryOption',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get delivery {
    return Intl.message(
      'Delivery',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Collect From the Pharmacy`
  String get inStore {
    return Intl.message(
      'Collect From the Pharmacy',
      name: 'inStore',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary`
  String get orderSummary {
    return Intl.message(
      'Order Summary',
      name: 'orderSummary',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete item Panadol Rapid Parace Panadol Rap.. from cart?`
  String get removeAlertMessage {
    return Intl.message(
      'Are you sure you want to delete item Panadol Rapid Parace Panadol Rap.. from cart?',
      name: 'removeAlertMessage',
      desc: '',
      args: [],
    );
  }

  /// `View Details`
  String get viewDetails {
    return Intl.message(
      'View Details',
      name: 'viewDetails',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Warnings`
  String get warning {
    return Intl.message(
      'Warnings',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `Ingredients`
  String get ingredient {
    return Intl.message(
      'Ingredients',
      name: 'ingredient',
      desc: '',
      args: [],
    );
  }

  /// `Direction`
  String get direction {
    return Intl.message(
      'Direction',
      name: 'direction',
      desc: '',
      args: [],
    );
  }

  /// `Buy Now`
  String get buyNow {
    return Intl.message(
      'Buy Now',
      name: 'buyNow',
      desc: '',
      args: [],
    );
  }

  /// `ED and Clinics Near Me`
  String get eandc {
    return Intl.message(
      'ED and Clinics Near Me',
      name: 'eandc',
      desc: '',
      args: [],
    );
  }

  /// `Emergency`
  String get emergencys {
    return Intl.message(
      'Emergency',
      name: 'emergencys',
      desc: '',
      args: [],
    );
  }

  /// `Clinic`
  String get clinic {
    return Intl.message(
      'Clinic',
      name: 'clinic',
      desc: '',
      args: [],
    );
  }

  /// `Dentist`
  String get dentist {
    return Intl.message(
      'Dentist',
      name: 'dentist',
      desc: '',
      args: [],
    );
  }

  /// `Physiotherapy`
  String get physiotherapy {
    return Intl.message(
      'Physiotherapy',
      name: 'physiotherapy',
      desc: '',
      args: [],
    );
  }

  /// `Call`
  String get call {
    return Intl.message(
      'Call',
      name: 'call',
      desc: '',
      args: [],
    );
  }

  /// `Get Direction`
  String get getDirection {
    return Intl.message(
      'Get Direction',
      name: 'getDirection',
      desc: '',
      args: [],
    );
  }

  /// `Opening hours`
  String get openingHr {
    return Intl.message(
      'Opening hours',
      name: 'openingHr',
      desc: '',
      args: [],
    );
  }

  /// `Monday`
  String get monday {
    return Intl.message(
      'Monday',
      name: 'monday',
      desc: '',
      args: [],
    );
  }

  /// `Tuesday`
  String get tuesday {
    return Intl.message(
      'Tuesday',
      name: 'tuesday',
      desc: '',
      args: [],
    );
  }

  /// `Wednesday`
  String get wednesday {
    return Intl.message(
      'Wednesday',
      name: 'wednesday',
      desc: '',
      args: [],
    );
  }

  /// `Thursday`
  String get thursday {
    return Intl.message(
      'Thursday',
      name: 'thursday',
      desc: '',
      args: [],
    );
  }

  /// `Friday`
  String get firday {
    return Intl.message(
      'Friday',
      name: 'firday',
      desc: '',
      args: [],
    );
  }

  /// `Saturday`
  String get saturday {
    return Intl.message(
      'Saturday',
      name: 'saturday',
      desc: '',
      args: [],
    );
  }

  /// `Sunday`
  String get sunday {
    return Intl.message(
      'Sunday',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }

  /// `Get This Service`
  String get getthisService {
    return Intl.message(
      'Get This Service',
      name: 'getthisService',
      desc: '',
      args: [],
    );
  }

  /// `Choose a Paymeny Method`
  String get chooseAPayment {
    return Intl.message(
      'Choose a Paymeny Method',
      name: 'chooseAPayment',
      desc: '',
      args: [],
    );
  }

  /// `PayPal`
  String get paypal {
    return Intl.message(
      'PayPal',
      name: 'paypal',
      desc: '',
      args: [],
    );
  }

  /// `Wechat Pay`
  String get wechatPay {
    return Intl.message(
      'Wechat Pay',
      name: 'wechatPay',
      desc: '',
      args: [],
    );
  }

  /// `AllPay`
  String get allpay {
    return Intl.message(
      'AllPay',
      name: 'allpay',
      desc: '',
      args: [],
    );
  }

  /// `Credit or Debit Card`
  String get creditOrDebit {
    return Intl.message(
      'Credit or Debit Card',
      name: 'creditOrDebit',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Add Card Details`
  String get addCardDetails {
    return Intl.message(
      'Add Card Details',
      name: 'addCardDetails',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get cardNumber {
    return Intl.message(
      'Card Number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a value`
  String get cardNumberMessage {
    return Intl.message(
      'Please enter a value',
      name: 'cardNumberMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid Card Number`
  String get cardNumberValidate {
    return Intl.message(
      'Please enter a valid Card Number',
      name: 'cardNumberValidate',
      desc: '',
      args: [],
    );
  }

  /// `Card Holder's Name`
  String get cardName {
    return Intl.message(
      'Card Holder\'s Name',
      name: 'cardName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a name`
  String get cardNameMessage {
    return Intl.message(
      'Please enter a name',
      name: 'cardNameMessage',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get expiryDate {
    return Intl.message(
      'Expiry Date',
      name: 'expiryDate',
      desc: '',
      args: [],
    );
  }

  /// `CVV`
  String get cvv {
    return Intl.message(
      'CVV',
      name: 'cvv',
      desc: '',
      args: [],
    );
  }

  /// `Pay and Continue`
  String get payandContinue {
    return Intl.message(
      'Pay and Continue',
      name: 'payandContinue',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid Expiry `
  String get expiryValidate {
    return Intl.message(
      'Enter a valid Expiry ',
      name: 'expiryValidate',
      desc: '',
      args: [],
    );
  }

  /// `Enter Expiry year`
  String get expiryYear {
    return Intl.message(
      'Enter Expiry year',
      name: 'expiryYear',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Month is Invalid`
  String get expiryMonth {
    return Intl.message(
      'Expiry Month is Invalid',
      name: 'expiryMonth',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid CVV`
  String get cvvValidate {
    return Intl.message(
      'Please enter a valid CVV',
      name: 'cvvValidate',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation`
  String get confirmation {
    return Intl.message(
      'Confirmation',
      name: 'confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get successs {
    return Intl.message(
      'Success',
      name: 'successs',
      desc: '',
      args: [],
    );
  }

  /// `Payment has been done.`
  String get SuccessMessage {
    return Intl.message(
      'Payment has been done.',
      name: 'SuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Please file the payment details accurately to continue`
  String get errorMessage {
    return Intl.message(
      'Please file the payment details accurately to continue',
      name: 'errorMessage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'cn'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}