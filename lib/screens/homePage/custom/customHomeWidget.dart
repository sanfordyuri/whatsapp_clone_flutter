import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customHomeWidget({
  required String nome_contato,
  required String mensagem,
  required String data,
  required String imagem,
}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 16.0 , 8.0, 0.0),
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(imagem),
                  )
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 4.0, 8.0, 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(nome_contato, style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18.0
                            ),),
                          ),
                          Container(
                            child: Text(data),
                          ),
                        ],
                      ),
                      Text(mensagem,style: TextStyle(fontSize: 16.0
                      )),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      )
    ],
  );
}
