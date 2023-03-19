part of '../detail_payment.dart';

class BodyDetailPayment extends StatefulWidget {
  final PaymentHistory history;
  const BodyDetailPayment({
    Key? key,
    required this.history,
  }) : super(key: key);

  @override
  State<BodyDetailPayment> createState() => _BodyDetailPaymentState();
}

class _BodyDetailPaymentState extends State<BodyDetailPayment> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 350,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Struk Pembayaran',
                      style: FontApp.primaryStyle.copyWith(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Nama',
                        style: FontApp.primaryStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          '${widget.history.name}',
                          maxLines: 1,
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          style: FontApp.primaryStyle,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: UtilsApp.generateDashedDivider(
                        MediaQuery.of(context).size.width - 2 * 44),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Nama Pembayaran',
                        style: FontApp.primaryStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          '${widget.history.payment_name}',
                          maxLines: 1,
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          style: FontApp.primaryStyle,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: UtilsApp.generateDashedDivider(
                        MediaQuery.of(context).size.width - 2 * 44),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Metode Pembayaran',
                        style: FontApp.primaryStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          '${widget.history.method}',
                          maxLines: 1,
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          style: FontApp.primaryStyle,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: UtilsApp.generateDashedDivider(
                        MediaQuery.of(context).size.width - 2 * 44),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Media Pembayaran',
                        style: FontApp.primaryStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          '${widget.history.media_payment}',
                          maxLines: 1,
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          style: FontApp.primaryStyle,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: UtilsApp.generateDashedDivider(
                        MediaQuery.of(context).size.width - 2 * 44),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Tanggal Pembayaran',
                        style: FontApp.primaryStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          '${widget.history.date}',
                          maxLines: 1,
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          style: FontApp.primaryStyle,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: UtilsApp.generateDashedDivider(
                        MediaQuery.of(context).size.width - 2 * 44),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Total Pembayaran',
                        style: FontApp.primaryStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          formatCurrency
                              .format(double.parse(widget.history.total!)),
                          maxLines: 1,
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          style: FontApp.primaryStyle,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: UtilsApp.generateDashedDivider(
                        MediaQuery.of(context).size.width - 2 * 44),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Status',
                        style: FontApp.primaryStyle,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          widget.history.status == null
                              ? 'Menunggu verifikasi'
                              : widget.history.status == 1
                                  ? 'Di Terima'
                                  : 'Di Tolak',
                          maxLines: 1,
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          style: FontApp.primaryStyle.copyWith(
                              color: widget.history.status == 1
                                  ? Colors.green.shade800
                                  : widget.history.status == null
                                      ? const Color.fromARGB(255, 194, 175, 1)
                                      : Colors.red),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              'Bukti Pembayaran',
              style: FontApp.primaryStyle.copyWith(fontSize: 20),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        !kIsWeb
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(widget.history.photo == Config.storage
                          ? 'https://via.placeholder.com/150'
                          : widget.history.photo!),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    height: 250,
                    alignment: FractionalOffset.center,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                      shape: BoxShape.rectangle,
                    ),
                    child: TextButton(
                        onPressed: () {
                          UtilsApp.dialogCustom(
                            context,
                            height: 400,
                            width: 400,
                            child: SizedBox(
                              height: 400,
                              width: 400,
                              child: CachedNetworkImage(
                                imageUrl: "${widget.history.photo}",
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                placeholder: (context, url) => Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          ColorApp.primaryColor),
                                    ),
                                  ],
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'Lihat',
                          style: FontApp.primaryStyle
                              .copyWith(fontSize: 20, color: Colors.white),
                        )),
                  ),
                ),
              )
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: ImageNetwork(
                            image: widget.history.photo == Config.storage
                                ? 'https://via.placeholder.com/150'
                                : widget.history.photo!,
                            height: 250,
                            width: MediaQuery.of(context).size.width),
                      ),
                      Container(
                        height: 250,
                        alignment: FractionalOffset.center,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.rectangle,
                        ),
                        child: TextButton(
                            onPressed: () {
                              UtilsApp.dialogCustom(
                                context,
                                height: 400,
                                width: 400,
                                child: SizedBox(
                                    height: 400,
                                    width: 400,
                                    child: ImageNetwork(
                                      image: "${widget.history.photo}",
                                      height: 400,
                                      fitAndroidIos: BoxFit.fill,
                                      width: 400,
                                      debugPrint: false,
                                      imageCache:
                                          const CachedNetworkImageProvider(
                                              'https://via.placeholder.com/400'),
                                      fitWeb: BoxFitWeb.fill,
                                      onLoading: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                ColorApp.primaryColor),
                                      ),
                                      onError: const Icon(
                                        Icons.error,
                                        color: Colors.red,
                                      ),
                                    )),
                              );
                            },
                            child: Text(
                              'Lihat',
                              style: FontApp.primaryStyle
                                  .copyWith(fontSize: 20, color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ),
              )
      ],
    );
  }
}
