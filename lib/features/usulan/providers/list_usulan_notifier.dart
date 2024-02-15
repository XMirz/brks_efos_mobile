import 'package:dartz/dartz.dart';
import 'package:efosm/app/data/dto/pagination_request.dart';
import 'package:efosm/core/error/failures.dart';
import 'package:efosm/features/home/presentations/states/pagination_state.dart';
import 'package:efosm/features/usulan/data/entities/paginated_usulan_entity.dart';
import 'package:efosm/features/usulan/data/entities/usulan_list_item_entity.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UsulanPaginationNotifier<T> extends StateNotifier<PaginationState<List<ListUsulanItemEntiy>>> {
  UsulanPaginationNotifier(
    super.state, {
    required this.idCabang,
    required this.paginatedFetcher,
  }) : super() {
    if (items.isEmpty) {
      fetchItems(0);
    }
  }

  final Future<Either<Failure, PaginatedUsulanEntity>> Function(
    PaginationRequest paginationRequest,
  ) paginatedFetcher;

  final List<ListUsulanItemEntiy> items = [];
  final String idCabang;
  String pageSize = '10';
  int totalPages = 0;
  int totalItems = 0;
  int totalFilteredItems = 0;
  int currentPageNumber = 0;
  String searchKeyword = '';
  bool isFetchingNextPage = false;

  Future<void> fetchItems(
    int pageNumber,
  ) async {
    if (pageNumber == 0) {
      state = const PaginationState.loading();
    } else {
      state = PaginationState.onGoingLoading(items);
    }
    final paginationRequest = PaginationRequest(
      idCabang: idCabang,
      keyword: searchKeyword,
      pageNumber: pageNumber.toString(),
      pageSize: pageSize,
    );
    final result = await paginatedFetcher(paginationRequest);
    await result.fold(
      (l) {
        if (pageNumber == 0) {
          state = PaginationState.error(l);
        } else {
          state = PaginationState.onGoingError(items, l);
        }
      },
      (r) async {
        await Future<void>.delayed(const Duration(milliseconds: 500));
        final responseItems = r.pembiayaanList.map(ListUsulanItemEntiy.fromJson).toList();
        if (r.pageNumber == 0) {
          totalPages = r.totalPages;
          totalItems = r.totalItems;
          totalFilteredItems = r.filteredItems;
          items.addAll(responseItems);
          state = PaginationState.data(responseItems);
        } else if (r.pageNumber > currentPageNumber && responseItems.isNotEmpty) {
          this.currentPageNumber = r.pageNumber;
          items.addAll(responseItems);
          state = PaginationState.data(items);
        } else {
          // state = PaginationState.data(items);
        }
      },
    );
  }

  Future<void> fetchNextPage() async {
    if (isFetchingNextPage) {
      debugPrint('Currently fetching nextPage');
      return;
    }
    if (currentPageNumber + 1 >= totalPages) {
      debugPrint('Last page reached');
      return;
    }

    final nextPage = currentPageNumber + 1;
    isFetchingNextPage = true;
    await fetchItems(nextPage);
    isFetchingNextPage = false;
  }

  Future<void> setKeyword(String keyword) async {
    searchKeyword = keyword;
    await fetchItems(0);
  }
}
