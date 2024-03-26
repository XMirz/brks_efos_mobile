class ApiPath {
  static const init = '/mobile/efos/init';

  static const listPembiayaanProduktif = '/mobile/efos/listcalondebiturproduktif';
  static const listPembiayaanKonsumtif = '/mobile/efos/listcalondebitur';
  static const detailPembiayaanKonsumtif = '/mobile/konsumtif/detail';
  static const detailPembiayaanProduktif = '/mobile/produktif/detail';
  static const dashboardContent = '/mobile/loan/dashboard';
  static const createLoan = '/mobile/efos/insertcalondebitur';
  static const editLoan = '/mobile/loan/edit';
  static const updateLoan = '/mobile/loan/update';
  static const insertAgunan = '/mobile/agunan/create';
  static const updateAgunan = '/mobile/agunan/update';
  static const deleteAgunan = '/mobile/agunan/delete';

// Review Notisi
  static const reviewKonsumtif = '/mobile/calondebitur/review';
  static const reviewProduktif = '/mobile/pembiayaan/review';

// Reject Notisi
  static const rejectKonsumtif = '/mobile/pembiayaan/cancel';
  static const rejectProduktif = '/mobile/mkm/cancel';

// Review document
  static const dokumenKonsumtif = '/mobile/ceklist/inquiry';
  static const dokumenProduktif = '/mobile/pembiayaan/getdokumenpersyaratan';

// Approve Notisi
  static const approvalOneKonsumtif = '/mobile/notisi/approve1';
  static const approvalTwoKonsumtif = '/mobile/notisi/approve2';
  static const approvalThreeKonsumtif = '/mobile/notisi/approve3mobile';
  static const approvalOneProduktif = '/mobile/pembiayaan/approve1';
  static const approvalTwoProduktif = '/mobile/pembiayaan/approve2';
  static const approvalThreeProduktif = '/mobile/pembiayaan/approve3mobile';

  // Usulan
  static const listUsulanKonsumtif = '/mobile/usulan/konsumtif';
  static const listUsulanProduktif = '/mobile/usulan/produktif';
}
