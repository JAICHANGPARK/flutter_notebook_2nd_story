
class WorkHour {
  final String date;
  final String time;

  WorkHour({this.date, this.time});
}


class Booking {
  final String title;
  final String subTitle;
  final List<WorkHour> hours;
  final int floor;
  final int rooms;
  final List<String> img;

  Booking(
      {this.title, this.subTitle, this.hours, this.floor, this.rooms, this.img});
}

List<Booking> items =[
  Booking(
    title: "Hoffman building",
    subTitle: "Jefferson street, 64",
    hours: [
      WorkHour(date: "Monday-Friday", time: "11:00 am-6:00pm"),
      WorkHour(date: "Saturday-Sunday", time: "9:00 am-9:00pm"),
    ],
    floor: 6,
    rooms: 45,
    img: [
      "https://cdn.pixabay.com/photo/2016/03/09/09/22/workplace-1245776__340.jpg",
      "https://cdn.pixabay.com/photo/2015/05/15/14/22/conference-room-768441__340.jpg",
      "https://cdn.pixabay.com/photo/2015/04/20/06/46/office-730681__340.jpg",
      "https://cdn.pixabay.com/photo/2017/05/04/16/37/meeting-2284501__340.jpg",
      "https://cdn.pixabay.com/photo/2018/05/02/10/33/computer-3368242__340.jpg"
    ]
  ),
  Booking(
      title: "Trustcorp building",
      subTitle: "Linedin street, 182",
      hours: [
        WorkHour(date: "Monday-Sunday", time: "Day and night"),
      ],
      floor: 25,
      rooms: 159,
      img: [
        "https://cdn.pixabay.com/photo/2016/03/09/09/22/workplace-1245776__340.jpg",
        "https://cdn.pixabay.com/photo/2015/05/15/14/22/conference-room-768441__340.jpg",
        "https://cdn.pixabay.com/photo/2015/04/20/06/46/office-730681__340.jpg",
        "https://cdn.pixabay.com/photo/2017/05/04/16/37/meeting-2284501__340.jpg",
        "https://cdn.pixabay.com/photo/2018/05/02/10/33/computer-3368242__340.jpg"
      ]
  )
];




























