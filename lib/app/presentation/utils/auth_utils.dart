import 'package:efosm/app/domain/entities/loan_state.dart';
import 'package:efosm/core/constants/integer.dart';
import 'package:efosm/core/constants/strings.dart';

bool isSupervisorAO(int roleId) {
  return AppInteger.idsRoleSupervisorAO.contains(roleId);
}

bool isAO(int roleId) {
  return AppInteger.idsRoleAO.contains(roleId);
}

LoanState buildKonsumtifLoanState({
  required String status,
  required String role,
  required String levelCabang,
  required List<String> authorities,
  required double limit,
  required double plafon,
}) {
  final roleId = int.parse(role);
  final typeCabang = int.parse(levelCabang);

  var statusDescription = 'Buka aplikasi EFOS';
  var canUpdate = false;
  var canApprove = false;
  var canReject = false;
  // const canForward = false;
  var nextStatus = status;
  if (status == '0') {
    statusDescription = 'Draft';
    canUpdate = isAO(roleId);
  } else if (status == '1') {
    statusDescription = 'Ditolak';
    canUpdate = isAO(roleId);
  } else if (status == '2') {
    statusDescription = 'Lolos Skoring';
    canUpdate = isAO(roleId);
  } else if (status == '3') {
    statusDescription = 'Data Lengkap';
    canUpdate = isAO(roleId);
  } else if (status == '4') {
    canUpdate = isAO(roleId);
    canReject = authorities.contains(EAuth.reject);
    if (typeCabang == 1) {
      statusDescription = 'Menunggu Approval Pinkedai';
      canApprove = authorities.contains(EAuth.approvalThree) && plafon <= limit;
      nextStatus = '13';
    } else if (typeCabang == 2) {
      statusDescription = 'Menunggu Approval Team Leader';
      canApprove = authorities.contains(EAuth.approvalOne);
      nextStatus = '7';
    } else if (typeCabang == 3) {
      statusDescription = 'Menunggu Approval Team Leader';
      canApprove = authorities.contains(EAuth.approvalOne);
      nextStatus = '7';
    } else if (typeCabang == 4) {
      statusDescription = 'Menunggu Approval Team Leader';
      canApprove = authorities.contains(EAuth.approvalOne);
      nextStatus = '6';
    }
  } else if (status == '5') {
    canUpdate = isAO(roleId);
    statusDescription = 'Review Data Nasabah';
  } else if (status == '6') {
    statusDescription = 'Menunggu Apv Manager Bisnis';
    canApprove = authorities.contains(EAuth.approvalTwo);
    canReject = authorities.contains(EAuth.reject);
    nextStatus = '7';
  } else if (status == '7') {
    canReject = authorities.contains(EAuth.reject);
    canApprove = authorities.contains(EAuth.approvalThree) && plafon <= limit;
    nextStatus = '13';
    if (typeCabang == 2) {
      statusDescription = 'Menunggu Apv Team Leader';
    } else if (typeCabang == 3) {
      statusDescription = 'Menunggu Apv Branch Manager';
    } else if (typeCabang == 4) {
      statusDescription = 'Menunggu Apv General Manager';
    }
  } else if (status == '8 ' ||
      status == '9 ' ||
      status == '10' ||
      status == '12') {
    statusDescription = 'Menunggu Apv Cabang Induk';
  } else if (status == '12') {
    statusDescription = 'Ditolak Cabang Induk';
  } else if (status == '13') {
    if (typeCabang == 1) {
      statusDescription = 'Menunggu Apv Pinkedai';
    } else if (typeCabang == 2) {
      statusDescription = 'Menunggu Apv Pincapem';
    } else if (typeCabang == 3) {
      statusDescription = 'Menunggu Apv Branch Manager/ Pindiv';
    } else if (typeCabang == 4) {
      statusDescription = 'Menunggu Apv General Manager/ Pindiv';
    }
  } else if (status == '15') {
    statusDescription = 'Menunggu Validasi Dokumen Persyaratan';
  } else if (status == '16') {
    statusDescription = 'Menunggu Persetujuan Akad';
  } else if (status == '17') {
    statusDescription = 'Disetujui Untuk Akad';
  } else if (status == '18') {
    statusDescription = 'Selesai Akad (Menunggu Upload File Pencairan)';
  } else if (status == '19A') {
    statusDescription = 'Menunggu Validasi File Pencairan';
  } else if (status == '19B') {
    statusDescription = 'Menunggu Persetujuan Pencairan';
  } else if (status == '20') {
    statusDescription = 'Cair';
  } else if (status == '21') {
    statusDescription = 'Cancel Pencairan';
  } else if (status == '22') {
    statusDescription = 'Review Skoring';
  } else if (status == '23') {
    statusDescription = 'Cair (Flagging Manual)';
  } else if (status == '24') {
    statusDescription = 'Pencairan  Dibatalkan';
  } else if (status == '25') {
    statusDescription = 'Cancel Pengajuan';
  }

  return LoanState(
    currentStatus: status,
    statusDescription: statusDescription,
    nextStatus: nextStatus,
    // canForward: canForward,
    canUpdate: canUpdate,
    canReject: canReject,
    canApprove: canApprove,
  );
}

LoanState buildProduktifLoanState({
  required String status,
  required String role,
  required String levelCabang,
  required List<String> authorities,
  required double limit,
  required double plafon,
}) {
  final roleId = int.parse(role);
  final typeCabang = int.parse(levelCabang);

  var statusDescription = 'Buka aplikasi EFOS';
  var canUpdate = false;
  var canApprove = false;
  var canReject = false;
  // const canForward = false;
  var nextStatus = status;
  if (status == '0') {
    statusDescription = 'Draft';
    canUpdate = isAO(roleId);
  } else if (status == '1') {
    statusDescription = 'Ditolak';
    canUpdate = isAO(roleId);
  } else if (status == '2') {
    statusDescription = 'Lolos Skoring';
    canUpdate = isAO(roleId);
  } else if (status == '3') {
    statusDescription = 'Data Lengkap';
    canUpdate = isAO(roleId);
  } else if (status == '4') {
    canUpdate = isAO(roleId);
    canReject = authorities.contains(EAuth.reject);
    if (typeCabang == 1) {
      statusDescription = 'Menunggu Approval Pinkedai';
      canApprove = authorities.contains(EAuth.approvalThree) && plafon <= limit;
      nextStatus = '13';
    } else if (typeCabang == 2) {
      statusDescription = 'Menunggu Approval Team Leader';
      canApprove = authorities.contains(EAuth.approvalOne);
      nextStatus = '7';
    } else if (typeCabang == 3) {
      statusDescription = 'Menunggu Approval Team Leader';
      canApprove = authorities.contains(EAuth.approvalOne);
      nextStatus = '7';
    } else if (typeCabang == 4) {
      statusDescription = 'Menunggu Approval Team Leader';
      canApprove = authorities.contains(EAuth.approvalOne);
      nextStatus = '6';
    }
  } else if (status == '5') {
    canUpdate = isAO(roleId);
    statusDescription = 'Review Data Nasabah';
  } else if (status == '6') {
    statusDescription = 'Menunggu Apv Manager Bisnis';
    canApprove = authorities.contains(EAuth.approvalTwo);
    canReject = authorities.contains(EAuth.reject);
    nextStatus = '7';
  } else if (status == '7') {
    canReject = authorities.contains(EAuth.reject);
    canApprove = authorities.contains(EAuth.approvalThree) && plafon <= limit;
    nextStatus = '13';
    if (typeCabang == 2) {
      statusDescription = 'Menunggu Apv Team Leader';
    } else if (typeCabang == 3) {
      statusDescription = 'Menunggu Apv Branch Manager';
    } else if (typeCabang == 4) {
      statusDescription = 'Menunggu Apv General Manager';
    }
  } else if (status == '8 ' ||
      status == '9 ' ||
      status == '10' ||
      status == '12') {
    statusDescription = 'Menunggu Apv Cabang Induk';
  } else if (status == '12') {
    statusDescription = 'Ditolak Cabang Induk';
  } else if (status == '13') {
    if (typeCabang == 1) {
      statusDescription = 'Menunggu Apv Pinkedai';
    } else if (typeCabang == 2) {
      statusDescription = 'Menunggu Apv Pincapem';
    } else if (typeCabang == 3) {
      statusDescription = 'Menunggu Apv Branch Manager/ Pindiv';
    } else if (typeCabang == 4) {
      statusDescription = 'Menunggu Apv General Manager/ Pindiv';
    }
  } else if (status == '15') {
    statusDescription = 'Menunggu Validasi Dokumen Persyaratan';
  } else if (status == '16') {
    statusDescription = 'Menunggu Persetujuan Akad';
  } else if (status == '17') {
    statusDescription = 'Disetujui Untuk Akad';
  } else if (status == '18') {
    statusDescription = 'Selesai Akad (Menunggu Upload File Pencairan)';
  } else if (status == '19A') {
    statusDescription = 'Menunggu Validasi File Pencairan';
  } else if (status == '19B') {
    statusDescription = 'Menunggu Persetujuan Pencairan';
  } else if (status == '20') {
    statusDescription = 'Cair';
  } else if (status == '21') {
    statusDescription = 'Cancel Pencairan';
  } else if (status == '22') {
    statusDescription = 'Review Skoring';
  } else if (status == '23') {
    statusDescription = 'Cair (Flagging Manual)';
  } else if (status == '24') {
    statusDescription = 'Pencairan  Dibatalkan';
  } else if (status == '25') {
    statusDescription = 'Cancel Pengajuan';
  }

  return LoanState(
    currentStatus: status,
    statusDescription: statusDescription,
    nextStatus: nextStatus,
    // canForward: canForward,
    canUpdate: canUpdate,
    canReject: canReject,
    canApprove: canApprove,
  );
}

// LoanState buildProduktifLoanState({
//   required String status,
//   required String role,
//   required String levelCabang,
//   required List<String> authorities,
//   required double limit,
// }) {
//   final roleId = int.parse(role);
//   final typeCabang = int.parse(levelCabang);

//   var statusDescription = 'Buka aplikasi EFOS';
//   var canUpdate = false;
//   var canApprove = false;
//   var canReject = false;
//   // const canForward = false;
//   var nextStatus = status;
//   if (status == '0') {
//     statusDescription = 'Draft';
//     canUpdate = isAO(roleId);
//   } else if (status == '1') {
//     statusDescription = 'Ditolak';
//   } else if (status == '2') {
//     statusDescription = 'Lolos Skoring';
//     canUpdate = isAO(roleId);
//   } else if (status == '3') {
//     statusDescription = 'Data Lengkap';
//     canUpdate = isAO(roleId);
//   } else if (status == '4') {
//     canUpdate = isAO(roleId);
//     canReject = authorities.contains(EAuth.reject);
//     if (typeCabang == 1) {
//       statusDescription = 'Menunggu Approval Pinkedai';
//       canApprove = authorities.contains(EAuth.approvalThree);
//       nextStatus = '13';
//     } else if (typeCabang == 2) {
//       statusDescription = 'Menunggu Approval Team Leader';
//       canApprove = authorities.contains(EAuth.approvalOne);
//       nextStatus = '7';
//     } else if (typeCabang == 3) {
//       statusDescription = 'Menunggu Approval Team Leader';
//       canApprove = authorities.contains(EAuth.approvalOne);
//       nextStatus = '7';
//     } else if (typeCabang == 4) {
//       statusDescription = 'Menunggu Approval Team Leader';
//       canApprove = authorities.contains(EAuth.approvalOne);
//       nextStatus = '6';
//     }
//   } else if (status == '5') {
//     canUpdate = isAO(roleId);
//     statusDescription = 'Review Data Nasabah';
//   } else if (status == '6') {
//     statusDescription = 'Menunggu Apv Manager Bisnis';
//     canApprove = authorities.contains(EAuth.approvalTwo);
//     canReject = authorities.contains(EAuth.reject);
//     nextStatus = '7';
//   } else if (status == '7') {
//     canReject = authorities.contains(EAuth.reject);
//     canApprove = authorities.contains(EAuth.approvalThree);
//     nextStatus = '13';
//     if (typeCabang == 2) {
//       statusDescription = 'Menunggu Apv Team Leader';
//     } else if (typeCabang == 3) {
//       statusDescription = 'Menunggu Apv Branch Manager';
//     } else if (typeCabang == 4) {
//       statusDescription = 'Menunggu Apv General Manager';
//     }
//   } else if (status == '8 ' ||
//       status == '9 ' ||
//       status == '10' ||
//       status == '12') {
//     statusDescription = 'Menunggu Apv Cabang Induk';
//   } else if (status == '12') {
//     statusDescription = 'Ditolak Cabang Induk';
//   } else if (status == '13') {
//     if (typeCabang == 1) {
//       statusDescription = 'Menunggu Apv Pinkedai';
//     } else if (typeCabang == 2) {
//       statusDescription = 'Menunggu Apv Pincapem';
//     } else if (typeCabang == 3) {
//       statusDescription = 'Menunggu Apv Branch Manager/ Pindiv';
//     } else if (typeCabang == 4) {
//       statusDescription = 'Menunggu Apv General Manager/ Pindiv';
//     }
//   } else if (status == '15') {
//     statusDescription = 'Menunggu Validasi Dokumen Persyaratan';
//   } else if (status == '16') {
//     statusDescription = 'Menunggu Persetujuan Akad';
//   } else if (status == '17') {
//     statusDescription = 'Disetujui Untuk Akad';
//   } else if (status == '18') {
//     statusDescription = 'Selesai Akad (Menunggu Upload File Pencairan)';
//   } else if (status == '19A') {
//     statusDescription = 'Menunggu Validasi File Pencairan';
//   } else if (status == '19B') {
//     statusDescription = 'Menunggu Persetujuan Pencairan';
//   } else if (status == '20') {
//     statusDescription = 'Cair';
//   } else if (status == '21') {
//     statusDescription = 'Cancel Pencairan';
//   } else if (status == '22') {
//     statusDescription = 'Review Skoring';
//   } else if (status == '23') {
//     statusDescription = 'Cair (Flagging Manual)';
//   } else if (status == '24') {
//     statusDescription = 'Pencairan  Dibatalkan';
//   } else if (status == '25') {
//     statusDescription = 'Cancel Pengajuan';
//   }
//   return LoanState(
//     currentStatus: status,
//     statusDescription: statusDescription,
//     nextStatus: nextStatus,
//     // canForward: canForward,
//     canUpdate: canUpdate,
//     canReject: canReject,
//     canApprove: canApprove,
//   );
// }
