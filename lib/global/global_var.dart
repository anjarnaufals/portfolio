import 'package:portfolio/model/latest_work.dart';
import 'package:portfolio/model/section_model.dart';
import 'package:portfolio/screen/section/about_screen.dart';
import 'package:portfolio/screen/section/home_screen.dart';
import 'package:portfolio/screen/section/portfolio_screen.dart';
import 'package:portfolio/screen/section/skills_screen.dart';
import 'package:portfolio/string/string_assets.dart';
import 'package:portfolio/string/string_text.dart';

const Section initialSection = Section(
  id: 0,
  label: "Home",
  asset: StringAsset.homeIcon,
  section: HomeScreen(),
);

const List<Section> sectionList = [
  Section(
    id: 0,
    label: "ANJAR",
    asset: StringAsset.homeIcon,
    section: HomeScreen(),
  ),
  Section(
    id: 1,
    label: "ABOUT",
    asset: StringAsset.aboutIcon,
    section: AboutScreen(),
  ),
  Section(
    id: 2,
    label: "SERVICE",
    asset: StringAsset.stackIcon,
    section: SkillsScreen(),
  ),
  Section(
    id: 3,
    label: "PORTFOLIO",
    asset: StringAsset.workIcon,
    section: PortfolioScreen(),
  ),
];

List<LatestWork> latestWork = const [
  LatestWork(
    company: 'RiloTech',
    periode: 'Agustus 2022 - present',
    work: Work(
      projectName: kingkolMobile,
      projectPreview: [
        StringAsset.kingkolMobile,
        StringAsset.kingkolMobile2,
      ],
      descriptionRole: [
        "Translating UI/UX Figma design into Flutter code to ensure the application appears as expected.",
        "Syncing the mobile application flow to align with the web application.",
        "Implementing a clean code architecture using the Bloc pattern with adjustments for application scalability, aiming to facilitate easy modifications.",
        "Integrating the REST API from the backend team to ensure all features function properly",
        "Creating and developing several agreed-upon features with the aim of making the application function properly.",
        "Implementing custom widgets for reusability purposes, aiming to avoid code duplication.",
        "Uploading Apps to playstore, bug fixing, & manage update.",
      ],
    ),
    storeUrl:
        "https://play.google.com/store/apps/details?id=com.mobile.kingkol",
  ),
  LatestWork(
    company: 'RiloTech',
    periode: 'Agustus 2022 - present',
    work: Work(
      projectName: "3Second Online",
      projectPreview: [
        StringAsset.threeSecondOnline,
      ],
      descriptionRole: [
        "Contributing to the implementation of Flutter Lints guidelines with the goal of improving code quality.",
        "Contributing to securing the env file using the envied package's method to prevent information leakage from APK file extraction.",
      ],
    ),
    storeUrl:
        "https://play.google.com/store/apps/details?id=com.threesecondmobile",
  ),
  LatestWork(
    company: 'RiloTech',
    periode: 'Agustus 2022 - present',
    work: Work(
      projectName: bedasMarket,
      projectPreview: [
        StringAsset.bedasMarket,
        StringAsset.bedasMarket2,
      ],
      descriptionRole: [
        "Translating UI/UX Figma design into Flutter code to ensure the application appears as expected.",
        "Implementing Getx pattern with adjustments for application scalability, aiming to facilitate easy modifications.",
        "Integrating the REST API from the backend team to ensure all features function properly",
        "Creating and developing several agreed-upon features with the aim of making the application function properly.",
        "Implementing custom widgets for reusability purposes, aiming to avoid code duplication.",
      ],
    ),
    storeUrl:
        "https://play.google.com/store/apps/details?id=com.bedasmarket.app",
  ),
];
