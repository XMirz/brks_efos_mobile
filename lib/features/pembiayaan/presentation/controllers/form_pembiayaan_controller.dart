import 'package:efosm/features/pembiayaan/presentation/providers/forms/agunan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/data_diri_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pasangan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/pekerjaan_form_provider.dart';
import 'package:efosm/features/pembiayaan/presentation/providers/forms/produk_pembiayaan_form_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void invalidateDataDiriFormController(WidgetRef ref) {
  ref
    ..invalidate(nikController)
    ..invalidate(namaController)
    ..invalidate(alamatController)
    ..invalidate(tempatLahirController)
    ..invalidate(tanggalLahirController)
    ..invalidate(jumlahTanggunganController)
    ..invalidate(kewajibanController)
    ..invalidate(biayaOperasionalController)
    ..invalidate(biayaRumahTanggaController);
}

void invalidatePekerjaanFormController(WidgetRef ref) {
  ref
    ..invalidate(jabatanControllerProvider)
    ..invalidate(tahunBekerjaControllerProvider)
    ..invalidate(gajiAmprahControllerProvider)
    ..invalidate(tunjanganControllerProvider)
    ..invalidate(potonganControllerProvider)
    ..invalidate(gajiBersihControllerProvider);
}

void invalidatePasanganForm(WidgetRef ref) {
  ref
    ..invalidate(pasanganFormProvider)
    ..invalidate(pasanganIndexProvider);
}

void invalidatePasanganFormController(WidgetRef ref) {
  ref
    ..invalidate(nikPasanganController)
    ..invalidate(namaPasanganController)
    ..invalidate(gajiAmprahPasanganController)
    ..invalidate(tunjanganPasanganController)
    ..invalidate(potonganPasanganController)
    ..invalidate(gajiBersihPasanganController);
}

void invalidatePembiayaanFormController(WidgetRef ref) {
  ref
    ..invalidate(tujuanPembiayaanController)
    ..invalidate(plafonController)
    ..invalidate(tenorController);
}

// void invalidateAgunanForm(WidgetRef ref) {
//   ref
//     ..invalidate(showAgunanFormProvider)
//     ..invalidate(agunanFormProvider)
//     ..invalidate(listAgunanProvider)
//     ..invalidate(agunanIndexProvider)
//     ..invalidate(agunanIndexProvider);
// }

void invalidateAgunanFormController(WidgetRef ref) {
  ref
    ..invalidate(deskripsiController)
    ..invalidate(deskripsi2Controller)
    ..invalidate(deskripsi3Controller)
    ..invalidate(deskripsi4Controller)
    ..invalidate(deskripsi5Controller)
    ..invalidate(alamatAgunanController);
}

void invalidateForms(WidgetRef ref) {
  ref.invalidate(dataDiriFormProvider);
  invalidateDataDiriFormController(ref);

  ref.invalidate(pekerjaanFormProvider);
  invalidatePekerjaanFormController(ref);

  invalidatePasanganForm(ref);
  invalidatePasanganFormController(ref);

  ref.invalidate(pembiayaanFormProvider);
  invalidatePembiayaanFormController(ref);

  // invalidateAgunanForm(ref);
  // invalidateAgunanFormController(ref);
  // ref.invalidate(listAgunanProvider);
}
