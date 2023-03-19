part of '../payment_category_page.dart';

class BodyPaymentCategoryPage extends StatefulWidget {
  const BodyPaymentCategoryPage({super.key});

  @override
  State<BodyPaymentCategoryPage> createState() =>
      _BodyPaymentCategoryPageState();
}

class _BodyPaymentCategoryPageState extends State<BodyPaymentCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoryPaymentBloc>()
        ..add(const CategoryPaymentEvent.getCategoryPayment()),
      child: BlocBuilder<CategoryPaymentBloc, CategoryPaymentState>(
        builder: (context, state) {
          return state.map(
            initial: (value) => const LoadingPage(isNotSubmit: true),
            loadInProgress: (value) => const LoadingPage(isNotSubmit: true),
            loadSuccess: (value) {
              return RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<CategoryPaymentBloc>()
                      .add(const CategoryPaymentEvent.getCategoryPayment());
                },
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics()),
                  itemCount: value.payment.length,
                  itemBuilder: (context, index) {
                    final data = value.payment[index];
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.only(
                          top: index == 0 ? 20 : 0,
                          bottom:
                              (index == value.payment.length - 1) ? 100 : 10),
                      child: ItemCategoryPayment(
                          data: data,
                          onTap: (id) {
                             getIt<AppRouter>().replace(
                              HistoryPaymentRoute(
                                  name: data.payment_name, idCategory: id),
                            );
                          }),
                    );
                  },
                ),
              );
            },
            loadFailure: (value) => RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<CategoryPaymentBloc>()
                      .add(const CategoryPaymentEvent.getCategoryPayment());
                },
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics()),
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: CriticalFailureDisplayPayment(
                            failure: value.failure),
                      )
                    ],
                  ),
                )),
            loadEmpty: (value) => RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<CategoryPaymentBloc>()
                      .add(const CategoryPaymentEvent.getCategoryPayment());
                },
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(
                        parent: BouncingScrollPhysics()),
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: const ItemEmptyPayment(),
                      )
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
