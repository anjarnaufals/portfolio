import 'package:portfolio/model/latest_company.dart';
import 'package:portfolio/model/latest_work.dart';
import 'package:portfolio/model/section_model.dart';
import 'package:portfolio/model/skillset_tool.dart';
import 'package:portfolio/screen/section/about_screen.dart';
import 'package:portfolio/screen/section/home_screen.dart';
import 'package:portfolio/screen/section/portfolio_screen.dart';
import 'package:portfolio/screen/section/skills_screen.dart';
import 'package:portfolio/string/string_assets.dart';
import 'package:portfolio/string/string_text.dart';

const Section initialSection = Section(
  id: 0,
  label: "Home",
  asset: Assets.homeIcon,
  section: HomeScreen(),
);

const List<Section> sectionList = [
  Section(
    id: 0,
    label: "ANJAR",
    asset: Assets.homeIcon,
    section: HomeScreen(),
  ),
  Section(
    id: 1,
    label: "ABOUT",
    asset: Assets.aboutIcon,
    section: AboutScreen(),
  ),
  Section(
    id: 2,
    label: "SERVICE",
    asset: Assets.stackIcon,
    section: SkillsScreen(),
  ),
  Section(
    id: 3,
    label: "PORTFOLIO",
    asset: Assets.workIcon,
    section: PortfolioScreen(),
  ),
];

List<LatestWork> latestWorkRilo = const [
  LatestWork(
    company: rilotechCompany,
    periode: 'Agustus 2022 - Agustus 2023',
    work: Work(
      projectName: kingkolMobile,
      projectPreview: [
        Assets.kingkolMobile,
        Assets.kingkolMobile2,
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
    company: rilotechCompany,
    periode: 'Agustus 2022 - Agustus 2023',
    work: Work(
      projectName: "3Second Online",
      projectPreview: [
        Assets.threeSecondOnline,
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
    company: rilotechCompany,
    periode: 'Agustus 2022 - Agustus 2023',
    work: Work(
      projectName: bedasMarket,
      projectPreview: [
        Assets.bedasMarket,
        Assets.bedasMarket2,
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

List<LatestWork> latestWorkInkare = const [
  LatestWork(
    company: inkareCompany,
    work: Work(
      projectName: anggoApp,
      projectPreview: [
        Assets.anggoAppEx1,
        Assets.anggoAppEx2,
      ],
      descriptionRole: [
        "Reconstructing the application structure including folder management, router, state management and rest API handler with the aim of facilitating development and improvement. ",
        "Translating UI/UX Figma design into Flutter code to ensure the application appears as expected.",
        "Creating and developing several agreed-upon features with the aim of making the application function properly.",
        "Integrating the REST API from the backend team to ensure all features function properly.",
        "Integrating Firebase Cloud Messaging for Notification.",
        "Integrating Google Map to complete one of the application features.",
        "Integrating MapBox for alternative Vector Tile funcionality to complete one of the application features.",
        "Implement Local Alarm use Local Notification to complete one of the application features.",
      ],
    ),
    periode: 'Agustus 2023 - Present',
  ),
  LatestWork(
    company: inkareCompany,
    work: Work(
      projectName: nusaRitel,
      projectPreview: [
        Assets.nusaRitelEx0,
        Assets.nusaRitelEx1,
      ],
      descriptionRole: [
        "Translating UI/UX Figma design into Flutter code to ensure the application appears as expected.",
        "Creating and developing several agreed-upon features with the aim of making the application function properly.",
        "Integrating the REST API from the backend team to ensure all features function properly.",
        "Integrating Firebase Cloud Messaging for Notification.",
        "Uploading Apps to playstore, bug fixing, & manage update.",
      ],
    ),
    periode: 'Agustus 2023 - Present',
  ),
  LatestWork(
    company: inkareCompany,
    work: Work(
      projectName: khudiAI,
      projectPreview: [
        Assets.khudiAIEx0,
        Assets.khudiAIEx1,
        Assets.khudiAIEx2,
        Assets.khudiAIEx3,
      ],
      descriptionRole: [
        "Translating UI/UX Figma design into Flutter code to ensure the application appears as expected.",
        "Creating and developing several agreed-upon features with the aim of making the application function properly.",
        "Integrating the REST API from the backend team to ensure all features function properly.",
        "Implementing Localizations for Arabic - English Language to complete one of the application features.",
      ],
    ),
    periode: 'Agustus 2023 - Present',
  ),
  LatestWork(
    company: inkareCompany,
    work: Work(
      projectName: chargeIon,
      projectPreview: [
        Assets.chargeIonEx0,
        Assets.chargeIonEx1,
        Assets.chargeIonEx2,
        Assets.chargeIonEx3,
      ],
      descriptionRole: [
        "Translating UI/UX Figma design into Flutter code to ensure the application appears as expected.",
        "Implementing Geocoding, Geolocator and Mapbox Vector Tiles to complete one of the application prototype features ",
      ],
    ),
    periode: 'Agustus 2023 - Present',
  ),
];

List<SkillsetTool> skillsetTools = const [
  SkillsetTool(name: 'Flutter', icon: Assets.flutterIconSVG),
  SkillsetTool(name: 'Dart', icon: Assets.dartIconPNG),
  SkillsetTool(name: 'Visual Studio Code', icon: Assets.vsCodeIconPng),
  SkillsetTool(name: 'Git', icon: Assets.gitIconSVG),
  SkillsetTool(name: 'Insomnia', icon: Assets.insomniaIconSVG),
  SkillsetTool(name: 'Postman', icon: Assets.postmanIconSvg),
  SkillsetTool(name: 'Firebase', icon: Assets.firebaseIconSVG),
];

List<LatestCompany> latestCompany = const [
  rilotechCompany,
  inkareCompany,
];

const rilotechCompany = LatestCompany(
  name: 'Rilotech',
);
const inkareCompany = LatestCompany(
  name: 'Inonvasi Karya Resman',
);
