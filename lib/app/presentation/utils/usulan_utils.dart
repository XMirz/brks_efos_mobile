import 'package:efosm/app/domain/entities/loan_state.dart';
import 'package:efosm/core/constants/colors.dart';
import 'package:efosm/core/constants/strings.dart';

LoanState buildUsulanKonsumtifLoanState({
  required String id,
  required ProductCategory kategoriProduk,
  required String status,
  required String role,
  required String levelCabang,
  required List<String> authorities,
  required double limit,
  required double plafon,
  bool isUsulan = false,
}) {
  // final roleId = int.parse(role);
  // final typeCabang = int.parse(levelCabang);

  var statusDescription = 'Silahkan Buka aplikasi EFOS';
  // var canUpdate = false;
  // var showUpdate = false;
  // var canApprove = false;
  // var showApprove = false;
  // var canReject = false;
  // var showReject = false;
  // var canForward = false;
  // var showForward = false;
  // var identityValidation = false;
  // var nextStatus = status;
  // var approvalType = ApprovalType.none;
  var statusColor = AppColor.highlight;
  String? approveErrorMessage;
  // if (status == '0') {
  //   statusDescription = 'Draft';
  //   canUpdate = isAO(roleId);
  //   showUpdate = true;
  // } else if (status == '1') {
  //   statusDescription = 'Ditolak';
  //   canUpdate = isAO(roleId);
  //   showUpdate = true;
  //   statusColor = AppColor.error;
  // } else if (status == '2') {
  //   statusDescription = 'Lolos Skoring';
  //   canUpdate = isAO(roleId);
  //   showUpdate = true;
  //   statusColor = AppColor.info;
  // } else
  if (status == '3') {
    statusDescription = 'Belum Proses';
    // canUpdate = isAO(roleId);
    // showUpdate = true;
    statusColor = AppColor.info;
  } else if (status == '4') {
    // canReject = authorities.contains(ApprovalType.reject.typeName);
    // showApprove = true;
    // showReject = true;
    statusColor = AppColor.warning;
    statusDescription = 'Menunggu Apv Team Leader/Staff';

    // if (typeCabang == 1) {
    //   final canAuth = canAuthorizeAll(authorities, [
    //     ApprovalType.notisi1.typeName,
    //     ApprovalType.notisi2.typeName,
    //     ApprovalType.notisi3.typeName,
    //   ]);
    //   statusDescription = 'Menunggu Approval Pinkedai';
    //   canApprove = authorities.contains(ApprovalType.notisi3.typeName) && plafon <= limit;
    //   canForward = plafon > limit;
    //   showForward = true;
    //   approvalType = ApprovalType.notisi3;
    //   nextStatus = '13';
    //   approveErrorMessage = !canAuth ? 'Maaf, anda tidak dapat melakukan aksi ini!.' : null;
    // } else if (typeCabang == 2 || typeCabang == 3) {
    //   statusDescription = 'Menunggu Approval Team Leader';
    //   canApprove = authorities.contains(ApprovalType.notisi1.typeName);
    //   approvalType = ApprovalType.notisi1;
    //   nextStatus = '6';
    // } else if (typeCabang == 4) {
    //   statusDescription = 'Menunggu Approval Team Leader';
    //   canApprove = authorities.contains(ApprovalType.notisi1.typeName);
    //   approvalType = ApprovalType.notisi1;
    //   nextStatus = '6';
    // }
  } else if (status == '5') {
    // canUpdate = isAO(roleId);
    statusDescription = 'Review Data Nasabah';
    statusColor = AppColor.info;
    // identityValidation = true;
  } else if (status == '6') {
    statusDescription = 'Menunggu Apv Manager Bisnis/Pinbag';
    // canApprove = authorities.contains(ApprovalType.notisi2.typeName);
    // canReject = authorities.contains(ApprovalType.reject.typeName);
    // approvalType = ApprovalType.notisi2;
    statusColor = AppColor.warning;
    // nextStatus = '7';
  } else if (status == '7') {
    // canReject = authorities.contains(ApprovalType.reject.typeName);
    // canApprove = authorities.contains(ApprovalType.notisi3.typeName) && plafon <= limit;
    // canForward = plafon > limit;
    // showForward = true;
    // approvalType = ApprovalType.notisi3;
    statusColor = AppColor.warning;
    statusDescription = 'Menunggu Apv Branch Manager/Pindiv';
    // nextStatus = '13';
    // if (typeCabang == 2) {
    //   statusDescription = 'Menunggu Apv Pincapem';
    // } else if (typeCabang == 3) {
    //   statusDescription = 'Menunggu Apv Branch Manager';
    // } else if (typeCabang == 4) {
    //   statusDescription = 'Menunggu Apv General Manager';
    // }
  } else if (status == '8' || status == '9 ' || status == '10' || status == '11') {
    statusDescription = 'Menunggu Rekomendasi';
    statusColor = AppColor.warning;
  } else if (status == '12') {
    statusDescription = 'Usulan Ditolak';
    statusColor = AppColor.error;
  } else if (status == '13') {
    statusColor = AppColor.success;
    statusDescription = 'Usulan Disetujui';
    // if (typeCabang == 1) {
    //   statusDescription = 'Disetujui Apv Pinkedai';
    // } else if (typeCabang == 2) {
    //   statusDescription = 'Disetujui Apv Pincapem';
    // } else if (typeCabang == 3) {
    //   statusDescription = 'Disetujui Apv Branch Manager/ Pindiv';
    // } else if (typeCabang == 4) {
    //   statusDescription = 'Disetujui Apv General Manager/ Pindiv';
  }
  // } else if (status == '15') {
  //   statusDescription = 'Validasi Dokumen Persyaratan';
  //   statusColor = AppColor.warning;
  // } else if (status == '16') {
  //   statusDescription = 'Menunggu Persetujuan Akad';
  //   statusColor = AppColor.warning;
  // } else if (status == '17') {
  //   statusDescription = 'Disetujui Untuk Akad';
  //   statusColor = AppColor.success;
  // } else if (status == '18') {
  //   statusDescription = 'Selesai Akad (Menunggu Upload File Pencairan)';
  //   statusColor = AppColor.info;
  // } else if (status == '19A') {
  //   statusDescription = 'Menunggu Validasi File Pencairan';
  //   statusColor = AppColor.warning;
  // } else if (status == '19B') {
  //   statusDescription = 'Menunggu Persetujuan Pencairan';
  //   statusColor = AppColor.warning;
  // } else if (status == '20') {
  //   statusDescription = 'Cair';
  //   statusColor = AppColor.success;
  // } else if (status == '21') {
  //   statusDescription = 'Cancel Pencairan';
  //   statusColor = AppColor.error;
  // } else if (status == '22') {
  //   statusDescription = 'Review Skoring';
  //   statusColor = AppColor.info;
  // } else if (status == '23') {
  //   statusDescription = 'Cair (Flagging Manual)';
  //   statusColor = AppColor.success;
  // } else if (status == '24') {
  //   statusDescription = 'Pencairan  Dibatalkan';
  //   statusColor = AppColor.error;
  // } else if (status == '25') {
  //   statusDescription = 'Cancel Pengajuan';
  //   statusColor = AppColor.error;
  // }

  return LoanState(
    id: id,
    kategoriProduk: kategoriProduk,
    currentStatus: status,
    statusDescription: statusDescription,
    // nextStatus: nextStatus,
    // canForward: canForward,
    // showForward: showForward,
    // canUpdate: canUpdate,
    // showUpdate: showUpdate,
    // canReject: canReject,
    // showReject: showReject,
    // canApprove: canApprove,
    // showApprove: showApprove,
    // identityValidation: identityValidation,
    // approvalType: approvalType,
    approveErrorMessage: approveErrorMessage,
    statusColor: statusColor,
  );
}

LoanState buildUsulanProduktifLoanState({
  required String id,
  required ProductCategory kategoriProduk,
  required String status,
  required String role,
  required String levelCabang,
  required List<String> authorities,
  required double limit,
  required double plafon,
  bool isUsulan = false,
}) {
  // final roleId = int.parse(role);
  // final typeCabang = int.parse(levelCabang);

  var statusDescription = 'Buka aplikasi EFOS';
  // var canUpdate = false;
  // var showUpdate = false;
  // var canApprove = false;
  // var showApprove = false;
  // var canReject = false;
  // var showReject = false;
  // var canForward = false;
  // var showForward = false;
  // var identityValidation = false;
  // var nextStatus = status;
  // var approvalType = ApprovalType.none;
  var statusColor = AppColor.textSecondary;
  String? approveErrorMessage;
  // if (status == '0') {
  //   statusDescription = 'Draft';
  //   canUpdate = isAO(roleId);
  //   showUpdate = true;
  // } else if (status == '1') {
  //   statusDescription = 'Lolos Wallet Analysis';
  //   canUpdate = isAO(roleId);
  //   showUpdate = true;
  //   statusColor = AppColor.info;
  // } else if (status == '2') {
  //   statusDescription = 'Ditolak';
  //   canUpdate = isAO(roleId);
  //   showUpdate = true;
  //   statusColor = AppColor.error;
  // } else if (status == '3') {
  //   statusDescription = 'Lolos Skoring';
  //   canUpdate = isAO(roleId);
  //   showUpdate = true;
  //   statusColor = AppColor.info;
  // } else if (status == '4') {
  //   statusDescription = 'Data Lengkap';
  //   canUpdate = isAO(roleId);
  //   showUpdate = true;
  //   statusColor = AppColor.info;
  // } else if (status == '5') {
  //   canReject = authorities.contains(ApprovalType.reject.typeName);
  //   showApprove = true;
  //   showReject = true;
  //   statusColor = AppColor.warning;
  //   identityValidation = true;
  //   if (typeCabang == 1) {
  //     final canAuth = canAuthorizeAll(authorities, [
  //       ApprovalType.notisi1.typeName,
  //       ApprovalType.notisi2.typeName,
  //       ApprovalType.notisi3.typeName,
  //     ]);
  //     statusDescription = 'Menunggu Approval Pinkedai';
  //     canApprove = canAuth && plafon <= limit;
  //     canForward = canAuth && plafon > limit;
  //     showForward = true;
  //     nextStatus = '9';
  //     approvalType = ApprovalType.notisi3;
  //     approveErrorMessage = !canAuth ? 'Maaf, anda tidak dapat melakukan aksi ini!.' : null;
  //   } else if (typeCabang == 2 || typeCabang == 3 || typeCabang == 4) {
  //     final canAuth = canAuthorizeAll(authorities, [
  //       ApprovalType.notisi1.typeName,
  //       ApprovalType.notisi2.typeName,
  //     ]);
  //     statusDescription = 'Menunggu Approval Team Leader';
  //     canApprove = canAuth;
  //     nextStatus = '8';
  //     approvalType = ApprovalType.notisi1;
  //     approveErrorMessage = !canAuth ? 'Maaf, anda tidak dapat melakukan aksi ini!.' : null;
  //   }
  //   //  else if (typeCabang == 4) {
  //   //   statusDescription = 'Menunggu Approval Team Leader';
  //   //   canApprove = canAuthorize(authorities, ApprovalType.notisi1.typeName);
  //   //   nextStatus = '7';
  //   //   approvalType = ApprovalType.notisi1;
  //   // }
  // } else if (status == '6') {
  //   canUpdate = isAO(roleId);
  //   statusDescription = 'Review Data Nasabah';
  //   statusColor = AppColor.info;
  // } else if (status == '7') {
  //   statusDescription = 'Menunggu Apv Manager Bisnis';
  //   canApprove = authorities.contains(ApprovalType.notisi2.typeName);
  //   canReject = authorities.contains(ApprovalType.reject.typeName);
  //   approvalType = ApprovalType.notisi2;
  //   nextStatus = '8';
  //   approveErrorMessage =
  //       !authorities.contains(ApprovalType.notisi2.typeName) ? 'Maaf, anda tidak dapat melakukan aksi ini!.' : null;
  //   statusColor = AppColor.info;
  // } else if (status == '8') {
  //   final canAuth = authorities.contains(ApprovalType.notisi3.typeName);
  //   canApprove = canAuth && plafon <= limit;
  //   canForward = canAuth && plafon > limit;
  //   canReject = authorities.contains(ApprovalType.reject.typeName);
  //   showForward = true;
  //   approvalType = ApprovalType.notisi3;
  //   statusColor = AppColor.warning;
  //   nextStatus = '9';
  //   approveErrorMessage = !canAuth ? 'Maaf, anda tidak dapat melakukan aksi ini!.' : null;
  //   if (typeCabang == 2) {
  //     statusDescription = 'Menunggu Apv Pincapem';
  //   } else if (typeCabang == 3) {
  //     statusDescription = 'Menunggu Apv Branch Manager';
  //   } else if (typeCabang == 4) {
  //     statusDescription = 'Menunggu Apv General Manager';
  //   }
  // } else if (status == '9') {
  //   statusColor = AppColor.success;
  //   if (typeCabang == 1) {
  //     statusDescription = 'Disetujui Pinkedai';
  //   } else if (typeCabang == 3) {
  //     statusDescription = 'Disetujui Pincapem';
  //   } else if (typeCabang == 3) {
  //     statusDescription = 'Desetujui Branch Manager';
  //   } else if (typeCabang == 4) {
  //     statusDescription = 'Desetujui General Manager';
  //   }
  // } else
  if (status == '10') {
    statusDescription = 'Belum Proses';
  } else if (status == '11') {
    statusDescription = 'Review Usulan';
  } else if (status == '12') {
    statusDescription = 'Usulan Ditolak';
  } else if (status == '13') {
    statusDescription = 'Menunggu ';
    statusColor = AppColor.warning;
  } else if (status == '14') {
    statusDescription = 'Menunggu Apv Team Leader/Staff';
    statusColor = AppColor.warning;
  } else if (status == '15') {
    statusDescription = 'Menunggu Apv Manager Bisnis/Pinbag';
    statusColor = AppColor.warning;
  } else if (status == '16') {
    statusDescription = 'Menunggu Apv Branch Manager/Pindiv';
    statusColor = AppColor.warning;
  } else if (status == '17') {
    statusDescription = 'Usulan Disetujui';
    statusColor = AppColor.success;
  } else if (status == '18') {
    // if (typeCabang == 1) {
    //   statusDescription = 'Disetujui Pinkedai';
    // } else if (typeCabang == 2) {
    //   statusDescription = 'Disetujui Pincapem';
    // } else if (typeCabang == 3) {
    //   statusDescription = 'Disetujui Branch Manager/ Pindiv';
    // } else
    // if (typeCabang == 4) {
    statusDescription = 'Selesai';
    statusColor = AppColor.success;
    // }
  }
  // else if (status == '20') {
  //   statusDescription = 'Menunggu Validasi Dokumen Persyaratan';
  //   statusColor = AppColor.warning;
  // } else if (status == '21') {
  //   statusDescription = 'Review Data Pembiayaan';
  //   statusColor = AppColor.info;
  // } else if (status == '22') {
  //   statusDescription = 'Batal';
  //   statusColor = AppColor.error;
  // } else if (status == '23') {
  //   statusDescription = 'Menunggu Persetujuan Akad';
  //   statusColor = AppColor.warning;
  // } else if (status == '24') {
  //   statusDescription = 'Disetujui untuk Akad';
  //   statusColor = AppColor.success;
  // } else if (status == '25') {
  //   statusDescription = 'Selesai Akad (Menunggu Upload File Pencairan)';
  //   statusColor = AppColor.info;
  // } else if (status == '26') {
  //   statusDescription = 'Menunggu Validasi File Pencairan';
  //   statusColor = AppColor.warning;
  // } else if (status == '28') {
  //   statusDescription = 'Menunggu Persetujuan Pencairan';
  //   statusColor = AppColor.warning;
  // } else if (status == '29') {
  //   statusDescription = 'Cair';
  //   statusColor = AppColor.success;
  // } else if (status == '30') {
  //   statusDescription = 'Cair (Flagging Manual)';
  //   statusColor = AppColor.success;
  // } else if (status == '31') {
  //   statusDescription = 'Pencairan  Dibatalkan';
  //   statusColor = AppColor.error;
  // } else if (status == '32') {
  //   statusDescription = 'Tidak Lolos Wallet Analysis';
  //   statusColor = AppColor.error;
  // }

  return LoanState(
    id: id,
    kategoriProduk: kategoriProduk,
    currentStatus: status,
    statusDescription: statusDescription,
    // nextStatus: nextStatus,
    // canForward: canForward,
    // showForward: showForward,
    // canUpdate: canUpdate,
    // showUpdate: showUpdate,
    // canReject: canReject,
    // showReject: showReject,
    // canApprove: canApprove,
    // showApprove: showApprove,
    // identityValidation: identityValidation,
    // approvalType: approvalType,
    approveErrorMessage: approveErrorMessage,
    statusColor: statusColor,
  );
}

ProductCategory getProductCategory(String idKategoriProduk) {
  if (idKategoriProduk == ProductCategory.konsumtif.typeName) {
    return ProductCategory.konsumtif;
  } else if (idKategoriProduk == ProductCategory.produktif.typeName) {
    return ProductCategory.produktif;
  } else {
    return ProductCategory.komersil;
  }
}

LoanState buildUsulanState({
  required String idLoan,
  required String idKategoriProduk,
  required String status,
  required String role,
  required String levelCabang,
  required List<String> authorities,
  required double limitKonsumtif,
  required double limitProduktif,
  required double plafon,
}) {
  final kategoriProduk = getProductCategory(idKategoriProduk);
  if (idKategoriProduk == ProductCategory.konsumtif.typeName) {
    return buildUsulanKonsumtifLoanState(
      id: idLoan,
      kategoriProduk: kategoriProduk,
      status: status,
      role: role,
      levelCabang: levelCabang,
      authorities: authorities,
      limit: limitKonsumtif,
      plafon: plafon,
    );
  } else {
    return buildUsulanProduktifLoanState(
      id: idLoan,
      kategoriProduk: kategoriProduk,
      status: status,
      role: role,
      levelCabang: levelCabang,
      authorities: authorities,
      limit: limitProduktif,
      plafon: plafon,
    );
  }
}
