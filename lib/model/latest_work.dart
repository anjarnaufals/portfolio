// ignore_for_file: public_member_api_docs, sort_constructors_first
class LatestWork {
  final String company;
  final Work work;
  final String periode;
  final String? storeUrl;
  const LatestWork({
    required this.company,
    required this.work,
    required this.periode,
    this.storeUrl,
  });
}

class Work {
  final String projectName;
  final List<String> projectPreview;
  final List<String> descriptionRole;
  const Work({
    required this.projectName,
    required this.projectPreview,
    required this.descriptionRole,
  });
}
