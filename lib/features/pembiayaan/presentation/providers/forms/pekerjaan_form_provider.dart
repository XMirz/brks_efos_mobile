import 'package:efosm/app/domain/entities/field.dart';
import 'package:efosm/app/domain/entities/parameters.dart';
import 'package:efosm/features/pembiayaan/domain/entities/pekerjaan_entity.dart';
import 'package:efosm/features/pembiayaan/presentation/states/pekerjaan_form_state.dart';
import 'package:efosm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PerkerjaanFormProvider extends StateNotifier<PekerjaanFormState> {
  PerkerjaanFormProvider() : super(PekerjaanFormState.empty());

  void setProfesi(String profesi, String shownValue) {
    print(state);
    const isValid = true;
    // final isValid = profesi.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      profesi: Field(
        isValid: isValid,
        value: profesi,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setNamaInstansi(String namaInstansi) {
    const isValid = true;
    // final isValid = namaInstansi.length > 7;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      namaInstansi: Field(
        isValid: isValid,
        value: namaInstansi,
        showValue: namaInstansi,
        errorMessage: message,
      ),
    );
  }

  void setStatusPerusahaan(String statusPerusahaan, String shownValue) {
    final isValid = statusPerusahaan.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      statusPerusahaan: Field(
        isValid: isValid,
        value: statusPerusahaan,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setJabatan(String jabatan, String shownValue) {
    final isValid = jabatan.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      jabatan: Field(
        isValid: isValid,
        value: jabatan,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setBidangUsaha(String bidangUsaha, String shownValue) {
    const isValid = true;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      bidangUsaha: Field(
        isValid: isValid,
        value: bidangUsaha,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setTahunBekerja(String tahunBekerja, String shownValue) {
    // final isValid = tahunBekerja.length == 4;
    const isValid = true;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      tahunBekerja: Field(
        isValid: isValid,
        value: tahunBekerja,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setStatusPekerjaan(String statusPekerjaan, String shownValue) {
    final isValid = statusPekerjaan.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      statusPekerjaan: Field(
        isValid: isValid,
        value: statusPekerjaan,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setSistemAngsuran(
    String sistemAngsuran,
    String shownValue,
  ) {
    final isValid = sistemAngsuran.isNotEmpty;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      sistemAngsuran: Field(
        isValid: isValid,
        value: sistemAngsuran,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setGajiAmprah(String gajiAmprah, String shownValue) {
    final isValid = gajiAmprah.isNotEmpty && int.tryParse(gajiAmprah) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      gajiAmprah: Field(
        isValid: isValid,
        value: gajiAmprah,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setTunjangan(String tunjangan, String shownValue) {
    final isValid = tunjangan.isNotEmpty && int.tryParse(tunjangan) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      tunjangan: Field(
        isValid: isValid,
        value: tunjangan,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setPotongan(String potongan, String shownValue) {
    final isValid = potongan.isNotEmpty && int.tryParse(potongan) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      potongan: Field(
        isValid: isValid,
        value: potongan,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setGajiBersih(String gajiBersih, String shownValue) {
    final isValid = gajiBersih.isNotEmpty && int.tryParse(gajiBersih) != null;
    final message = isValid ? '' : l10n.invalidInput;
    state = state.copyWith(
      gajiBersih: Field(
        isValid: isValid,
        value: gajiBersih,
        showValue: shownValue,
        errorMessage: message,
      ),
    );
  }

  void setPekerjaan(PekerjaanEntity data, AppParameter parameter) {
    final profesi = parameter.parProfesi.firstWhereOrNull(
        (element) => element.id.toString() == (data.profesi ?? ''));
    final statusPerusahaan = parameter.parStatusPerusahaan.firstWhereOrNull(
        (element) => element.id.toString() == (data.statusPerusahaan ?? ''));
    final bidangUsaha = parameter.parBidangUsaha.firstWhereOrNull(
        (element) => element.id.toString() == (data.bidangUsaha ?? ''));
    final statusPekerjaan = parameter.parStatusPekerjaan.firstWhereOrNull(
        (element) => element.id.toString() == (data.statusPekerjaan ?? ''));
    final sistemAngsuran = parameter.parKolektif.firstWhereOrNull((element) =>
        element.id.toString() == (data.sistemPembayaranAngsuran ?? ''));

    setProfesi(data.profesi ?? '', profesi?.label ?? '');
    setNamaInstansi(data.namaInstansi ?? '');
    setBidangUsaha(data.bidangUsaha ?? '', bidangUsaha?.label ?? '');
    setStatusPerusahaan(
        data.statusPerusahaan ?? '', statusPerusahaan?.label ?? '');
    setJabatan(data.jabatan ?? '', data.jabatan ?? '');
    final tahunBekerja =
        data.tahunBekerja != null ? data.tahunBekerja.toString() : '';
    setTahunBekerja(tahunBekerja, tahunBekerja);
    setStatusPekerjaan(
        data.statusPekerjaan ?? '', statusPekerjaan?.label ?? '');
    setSistemAngsuran(
        data.sistemPembayaranAngsuran ?? '', sistemAngsuran?.label ?? '');
    final gajiAmprah =
        data.gajiAmprah != null ? data.gajiAmprah.toString() : '';
    final tunjangan = data.tunjangan != null ? data.tunjangan.toString() : '';
    final gajiBersih =
        data.gajiBersih != null ? data.gajiBersih.toString() : '';
    final potongan = data.potongan != null ? data.potongan.toString() : '';
    setGajiAmprah(gajiAmprah, gajiAmprah);
    setTunjangan(tunjangan, tunjangan);
    setPotongan(potongan, potongan);
    setGajiBersih(gajiBersih, gajiBersih);
    state = state.copyWith(isUpdate: true);
  }
}

final pekerjaanFormProvider =
    StateNotifierProvider<PerkerjaanFormProvider, PekerjaanFormState>(
  (ref) => PerkerjaanFormProvider(),
);

final namaInstansiControllerProvider = Provider(
  (ref) => TextEditingController(
      text: ref.read(pekerjaanFormProvider).namaInstansi.value),
);
final jabatanControllerProvider = Provider(
  (ref) => TextEditingController(
      text: ref.read(pekerjaanFormProvider).jabatan.value),
);
final tahunBekerjaControllerProvider = Provider(
  (ref) => TextEditingController(
      text: ref.read(pekerjaanFormProvider).tahunBekerja.value),
);
final gajiAmprahControllerProvider = Provider(
  (ref) => TextEditingController(
      text: ref.read(pekerjaanFormProvider).gajiAmprah.value),
);
final tunjanganControllerProvider = Provider(
  (ref) => TextEditingController(
      text: ref.read(pekerjaanFormProvider).tunjangan.value),
);
final potonganControllerProvider = Provider(
  (ref) => TextEditingController(
      text: ref.read(pekerjaanFormProvider).potongan.value),
);
final gajiBersihControllerProvider = Provider(
  (ref) => TextEditingController(
      text: ref.read(pekerjaanFormProvider).gajiBersih.value),
);
