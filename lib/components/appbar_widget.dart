// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppbarWidget({super.key});

  TextEditingController searchTextCtrl = TextEditingController();

  @override
  Size get preferredSize => const Size.fromHeight(90);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      floating: false,
      pinned: true,
      snap: false,
      centerTitle: false,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Icon(
          Icons.qr_code_scanner,
          color: Colors.grey[800],
        ),
      ),
      title: Row(
        children: [
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              'เหรียญ',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'หน้าหลัก',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'ไลฟ์สด',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Spacer(),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: IconButton(
            icon: Icon(
              Icons.account_balance_wallet_outlined,
              color: Colors.grey[800],
            ),
            onPressed: () {},
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title: Container(
            width: double.infinity,
            height: 40,
            child: Center(
              child: TextFormField(
                controller: searchTextCtrl,
                showCursor: true,
                cursorColor: Colors.grey[500],
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  suffixIcon: Row(
                    children: [
                      Spacer(),
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.grey[700],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple[900],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            elevation: 0,
                          ),
                          onPressed: () {},
                          child: Text(
                            'ค้นหา',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
