import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:sipmm/domain/core/failure/payment_failure/payment_failure.dart';
import 'package:sipmm/domain/payment/category_payment.dart';
import 'package:sipmm/domain/payment/i_payment_repository.dart';

part 'category_payment_bloc.freezed.dart';
part 'category_payment_event.dart';
part 'category_payment_state.dart';

@injectable
class CategoryPaymentBloc
    extends Bloc<CategoryPaymentEvent, CategoryPaymentState> {
  final IPaymentRepository _repository;
  CategoryPaymentBloc(
    this._repository,
  ) : super(const _Initial()) {
    on<_GetCategoryPayment>((event, emit) async {
      emit(const CategoryPaymentState.loadInProgress());
      return (await _repository.getCategoryPayment())
          .fold((l) => emit(CategoryPaymentState.loadFailure(l)), (r) {
        if (r.isEmpty) {
          emit(const CategoryPaymentState.loadEmpty());
        } else {
          emit(CategoryPaymentState.loadSuccess(r));
        }
      });
    });
    on<_NotReceived>((event, emit) async {
      return event.failureOrCategory.fold(
          (l) => emit(CategoryPaymentState.loadFailure(l)),
          (r) => emit(CategoryPaymentState.loadSuccess(r)));
    });
  }
}
