class ApiPath {
  // Authentication
  static const init = '/auth/init';
  static const login = '/auth/login';
  static const logout = '/auth/logout';

  // Dashboard
  static const dashboardContent = '/dashboard/target';
  static const dashboardStats = '/dashboard/stats';
  static const dashboardMakerUsers = '/users/maker';

  static const listPembiayaanProduktif = '/efos/listcalondebiturproduktif';
  static const listPembiayaanKonsumtif = '/efos/listcalondebitur';
  static const detailPembiayaanKonsumtif = '/konsumtif/detail';
  static const detailPembiayaanProduktif = '/produktif/detail';

  static const createLoan = '/efos/insertcalondebitur';
  static const editLoan = '/loan/edit';
  static const updateLoan = '/loan/update';
  static const insertAgunan = '/agunan/create';
  static const updateAgunan = '/agunan/update';
  static const deleteAgunan = '/agunan/delete';

// Review Notisi
  static const reviewKonsumtif = '/calondebitur/review';
  static const reviewProduktif = '/pembiayaan/review';

// Reject Notisi
  static const rejectKonsumtif = '/loan/cancel';
  static const rejectProduktif = '/mkm/cancel';

// Review document
  static const dokumenKonsumtif = '/ceklist/inquiry';
  static const dokumenProduktif = '/pembiayaan/getdokumenpersyaratan';

// Approve Notisi
  static const approvalOneKonsumtif = '/notisi/approve1';
  static const approvalTwoKonsumtif = '/notisi/approve2';
  static const approvalThreeKonsumtif = '/notisi/approve3mobile';
  static const approvalOneProduktif = '/pembiayaan/approve1';
  static const approvalTwoProduktif = '/pembiayaan/approve2';
  static const approvalThreeProduktif = '/pembiayaan/approve3mobile';

  // Usulan
  static const listUsulanKonsumtif = '/usulan/konsumtif';
  static const listUsulanProduktif = '/usulan/produktif';
}
