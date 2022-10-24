import 'package:flutter/material.dart';
import 'package:imobis/contants.dart';
import 'package:imobis/models/item_model.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen(this.item, {Key? key}) : super(key: key);

  Item item;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: background,
        iconTheme: const IconThemeData(
          color: lightBlue,
        ),
        title: Text(
          widget.item.title!,
          style: const TextStyle(
            color: title,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(top: 16, bottom: 70, right: 20, left: 20),
        child: IntrinsicHeight(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 300.0,
                decoration: BoxDecoration(
                  color: grey,
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(
                    image: NetworkImage(widget.item.thumb_url!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                widget.item.category!,
                style: const TextStyle(
                  color: lightBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                widget.item.title!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: title,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: darkGrey,
                  ),
                  Text(
                    widget.item.location!,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                      color: darkGrey,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "R\$${widget.item.price} / Mês",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: darkTypography,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline,
                      color: red,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  facilities(
                    Icons.bed,
                    "${widget.item.rooms}",
                    "Dorms",
                  ),
                  facilities(
                    Icons.shower_outlined,
                    "${widget.item.bathrooms}",
                    "Banheiros",
                  ),
                  facilities(
                    Icons.directions_car_filled_rounded,
                    "${widget.item.car_spaces}",
                    "Vagas",
                  ),
                  facilities(
                    Icons.area_chart_outlined,
                    "${widget.item.area}",
                    "Área m²",
                  ),
                  // facilities(Icons.bed),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Descrição",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: title,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "${widget.item.description}",
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18.0,
                      color: darkTypography,
                    ),
                  ),
                ],
              )

              // Expanded(
              //   child: Container(),
              // ),

              // Container(
              //   width: double.infinity,
              //   height: 60.0,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(16.0),
              //   ),
              //   child: RawMaterialButton(
              //     onPressed: () {},
              //     elevation: 0.0,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(6.0),
              //     ),
              //     fillColor: Colors.blue.shade600,
              //     child: const Text(
              //       "Alugue Agora",
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 18.0,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Entrar em contato'),
        icon: const Icon(Icons.whatsapp_outlined),
        backgroundColor: lightBlue,
      ),
    );
  }

  Container facilities(
      IconData iconData, String numberFacilitie, String nameFacilitie) {
    return Container(
      color: background,
      child: Column(
        children: [
          Icon(
            iconData,
            color: darkGrey,
          ),
          Text(
            numberFacilitie,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: darkGrey,
            ),
          ),
          Text(
            nameFacilitie,
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18.0,
              color: darkGrey,
            ),
          ),
        ],
      ),
    );
  }
}
