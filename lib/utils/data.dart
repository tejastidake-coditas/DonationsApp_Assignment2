class Data {
  final String imageUrl;
  final String title;
  final String foundation;
  final double progress;
  final double amount;
  final int daysLeft;

  Data({
    required this.imageUrl,
    required this.title,
    required this.foundation,
    required this.progress,
    required this.amount,
    required this.daysLeft
  });
}


List<Data> cardData = [

    Data(
      imageUrl:
      'https://www.cry.org/wp-content/uploads/why-donation-matters-for-child-education-min.jpg',
      title: 'Education for All',
      foundation: 'Education Foundation',
      progress: 0.62,
      amount: 867.990,
      daysLeft: 54,
    ),
Data(
    imageUrl:
    'https://www.smilefoundationindia.org/blog/wp-content/uploads/2022/11/World-heart-day-1-645x430-1.jpg',
    title: 'Medical Aid for the Elderly',
    foundation: 'Elderly Health',
    progress: 0.41,
    amount: 540.250,
    daysLeft: 32,
),
Data(
    imageUrl:
    'https://www.rmit.edu.au/content/dam/rmit/au/en/news/news_homelessness.jpg',
    title: 'Shelter for the Homeless',
    foundation: 'Humanity Foundation',
    progress: 0.68,
    amount: 720.150,
    daysLeft: 14,
),
  Data(imageUrl:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0rIR0I6DGcyyjgayUkWnys9yYqc9_ry4iZw&s',
    title: 'Mental Health Aid',
    foundation: 'Health Community',
    progress: 0.59,
    amount: 235.450,
    daysLeft: 27,
  ),
  Data(
    imageUrl:
    'https://www.aljazeera.com/wp-content/uploads/2023/10/AP23287514627061-1697362042.jpg?fit=1170%2C780&quality=80',
    title: 'Solidarity for Palestine',
    foundation: 'Humanity Foundation',
    progress: 0.35,
    amount: 910.650,
    daysLeft: 77,
  ),
  Data(
imageUrl:
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3qgoeFPBe__PCUNfE_LntmhJRdDSl3pBICRRJeUdPUvJodk4zRuge5xXH2xaFJFCW-q8&usqp=CAU',
    title: 'Nutrition for Kids',
    foundation: "Children's Health Foundation",
    progress: 0.44,
    amount: 485.320,
    daysLeft: 68,
  ),
  Data(
    imageUrl:
    'https://factly.in/wp-content/uploads//2022/07/Disaster-relief-funds_Featured-Image.jpg',
    title: 'Disaster Relief Fund',
    foundation: 'Global Relief Foundation',
    progress: 0.51,
    amount: 658.100,
    daysLeft: 36,
),
  Data(
    imageUrl:
    'https://borgenproject.org/wp-content/uploads/Hunger-1-530x354.jpg',
    title: 'Global Hunger Relief',
    foundation: 'Food for All Foundation',
    progress: 0.63,
    amount: 124.500,
    daysLeft: 59,
)
];