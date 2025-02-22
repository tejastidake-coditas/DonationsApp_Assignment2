import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  final int index;

  const InfoCard({super.key, required this.index});

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  List<Map<String, dynamic>> cardData = [
    {
      'imageUrl':
          'https://www.cry.org/wp-content/uploads/why-donation-matters-for-child-education-min.jpg',
      'title': 'Education for All',
      'foundation': 'Education Foundation',
      'progress': 0.62,
      'amount': 867.990,
      'daysLeft': 54,
    },
    {
      'imageUrl':
          'https://www.smilefoundationindia.org/blog/wp-content/uploads/2022/11/World-heart-day-1-645x430-1.jpg',
      'title': 'Medical Aid for the Elderly',
      'foundation': 'Elderly Health',
      'progress': 0.41,
      'amount': 540.250,
      'daysLeft': 32,
    },
    {
      'imageUrl':
          'https://www.rmit.edu.au/content/dam/rmit/au/en/news/news_homelessness.jpg',
      'title': 'Shelter for the Homeless',
      'foundation': 'Humanity Foundation',
      'progress': 0.68,
      'amount': 720.150,
      'daysLeft': 14,
    },
    {
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0rIR0I6DGcyyjgayUkWnys9yYqc9_ry4iZw&s',
      'title': 'Mental Health Aid',
      'foundation': 'Health Community',
      'progress': 0.59,
      'amount': 235.450,
      'daysLeft': 27,
    },
    {
      'imageUrl':
          'https://www.aljazeera.com/wp-content/uploads/2023/10/AP23287514627061-1697362042.jpg?fit=1170%2C780&quality=80',
      'title': 'Solidarity for Palestine',
      'foundation': 'Humanity Foundation',
      'progress': 0.35,
      'amount': 910.650,
      'daysLeft': 77,
    },
    {
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qgoeFPBe__PCUNfE_LntmhJRdDSl3pBICRRJeUdPUvJodk4zRuge5xXH2xaFJFCW-q8&usqp=CAU',
      'title': 'Nutrition for Kids',
      'foundation': "Children's Health Foundation",
      'progress': 0.44,
      'amount': 485.320,
      'daysLeft': 68,
    },
    {
      'imageUrl':
          'https://factly.in/wp-content/uploads//2022/07/Disaster-relief-funds_Featured-Image.jpg',
      'title': 'Disaster Relief Fund',
      'foundation': 'Global Relief Foundation',
      'progress': 0.51,
      'amount': 658.100,
      'daysLeft': 36,
    },
    {
      'imageUrl':
          'https://borgenproject.org/wp-content/uploads/Hunger-1-530x354.jpg',
      'title': 'Global Hunger Relief',
      'foundation': 'Food for All Foundation',
      'progress': 0.63,
      'amount': 124.500,
      'daysLeft': 59,
    }
  ];

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
                  "${cardData[widget.index].values.elementAt(0)}",
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
                      "${cardData[widget.index].values.elementAt(1)}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "${cardData[widget.index].values.elementAt(2)}",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black38,
                          fontSize: 13.5),
                    ),
                    SizedBox(height: 6),
                    LinearProgressIndicator(
                      value: cardData[widget.index].values.elementAt(3),
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
                              r"$"
                              "${cardData[widget.index].values.elementAt(4)}",
                              style: TextStyle(
                                  color: Color(0xFA0FA685),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Text(
                          "${cardData[widget.index].values.elementAt(5)} days left",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                              fontSize: 14),
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
