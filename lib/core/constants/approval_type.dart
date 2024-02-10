enum ApprovalType {
  none(''),
  reject('REJECT'),
  submit('SUBMIT'),
  notisi1('APPROVENOTISI1'),
  notisi2('APPROVENOTISI2'),
  notisi3('APPROVENOTISI3'),
  usulan1('APPROVEUSULAN1'),
  usulan2('APPROVEUSULAN2'),
  usulan3('APPROVEUSULAN3'),
  pencairan1('APPROVEPENCAIRAN1'),
  pencairan2('APPROVEPENCAIRAN2'),
  pencairan3('APPROVEPENCAIRAN3');

  const ApprovalType(this.typeName);
  final String typeName;
}
