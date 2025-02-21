import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                  "https://www.cry.org/wp-content/uploads/why-donation-matters-for-child-education-min.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 18),
              Flexible(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Education for All",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "Education Foundation",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.black38, fontSize: 13.5),
                    ),
                    SizedBox(height: 6),
                    LinearProgressIndicator(
                      value: 0.5,
                      color: Color(0xFA0FA685),
                      backgroundColor: Colors.grey[300],
                      minHeight: 10,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Color(0xFAF0F4F4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                            child: Text(
                              r"$766.950",
                              style: TextStyle(
                                  color: Color(0xFA0FA685),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Text(
                          "50 days left",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: Colors.black54, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 14),
          Divider(height: 20, thickness: 2, color: Colors.black12),
        ],
      ),
    );
  }
}
