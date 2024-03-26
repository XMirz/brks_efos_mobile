enum Permission {
  indexDashboard('index-dashboard'),
  deleteDashboard('delete-dashboard'),
  // Pembiayaan
  indexPembiayaan('index-pembiayaan'),
  createPembiayaan('create-pembiayaan'),
  detailPembiayaan('detail-pembiayaan'),
  editPembiayaan('edit-pembiayaan'),
  uploadPembiayaan('upload-pembiayaan'),
  downloadPembiayaan('download-pembiayaan'),
  deletePembiayaan('delete-pembiayaan'),

  // Pembiayaan Konsumtif
  indexPembiayaanKonsumtif('index-pmkonsumtif'),
  createPembiayaanKonsumtif('create-pmkonsumtif'),
  detailPembiayaanKonsumtif('detail-pmkonsumtif'),
  editPembiayaanKonsumtif('edit-pmkonsumtif'),
  akadPembiayaanKonsumtif('akad-pmkonsumtif'),
  uploadPembiayaanKonsumtif('upload-pmkonsumtif'),
  downloadPembiayaanKonsumtif('download-pmkonsumtif'),
  deletePembiayaanKonsumtif('delete-pmkonsumtif'),

  // Pembiayaan Produktif
  indexPembiayaanProduktif('index-pmproduktif'),
  createPembiayaanProduktif('create-pmproduktif'),
  detailPembiayaanProduktif('detail-pmproduktif'),
  editPembiayaanProduktif('edit-pmproduktif'),
  akadPembiayaanProduktif('akad-pmproduktif'),
  uploadPembiayaanProduktif('upload-pmproduktif'),
  downloadPembiayaanProduktif('download-pmproduktif'),
  deletePembiayaanProduktif('delete-pmproduktif'),

  a('a');

  const Permission(this.name);
  final String name;
}
