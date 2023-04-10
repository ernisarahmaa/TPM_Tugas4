class DataSitus {
  String developer;
  String imageLink;
  String link;
  String title;
  String description;
  bool isFavorite;

  DataSitus({
    required this.developer,
    required this.imageLink,
    required this.link,
    required this.title,
    required this.description,
    required this.isFavorite
  });
}

var listSitus = [
  DataSitus(
    developer: "Pomofocus",
    imageLink:
    "https://www.macsofter.com/wp-content/uploads/2022/01/iShot2022-01-28-15.41.25.jpg",
    link: "https://pomofocus.io/",
    title: "Pomofocus.io",
    description: "A simple Pomodoro Timer app that works on a desktop & mobile browser. Pomofucus will help you manage your time and let you focus on any tasks.",
    isFavorite: false,
  ),
  DataSitus(
    developer: "Cassidylearns",
    imageLink:
    "https://pomodorokitty.com/img/pomodoro-twitter.jpg",
    link: "https://pomodorokitty.com/",
    title: "Pomodoro Kitty",
    description: "An aesthetic timer with multiple themes. Let a cat watch you work! Pomodoro is a time management method that breaks work into manageable chunks of time.",
    isFavorite: false,
  ),
  DataSitus(
    developer: "Clockify",
    imageLink:
    "https://clockify.me/assets/images/tags-fb-tw/pomodoro-timer.png",
    link: "https://clockify.me/pomodoro-timer",
    title: "Pomodoro Timer",
    description: "Flexible and easy to use online Pomodoro timer. Track time spent on tasks, stay focused, analyze data, and improve productivity. Completely FREE.",
    isFavorite: false,
  ),
  DataSitus(
    developer: "Breeze",
    imageLink:
    "https://d3dexbrq797glq.cloudfront.net/20/pomodoro_timer.jpg",
    link: "https://www.breeze.pm/tools/pomodoro-timer/#/",
    title: "Online Pomodoro Timer",
    description: "Breeze is an easy-to-use project management tool that lets you track your projects, tasks, time, and more. Breeze is the only project management software that your team will actually love to use. Breeze is designed to be used by anybody on your team - from accountants and marketeers to software developers.",
    isFavorite: false,
  ),
  DataSitus(
    developer: "Tori Pugh",
    imageLink:
    "https://res.cloudinary.com/dmocgebcq/image/upload/v1639095201/portfolio/laptop-images/pomodoro-laptop-mock_atfyzm.png",
    link: "https://vpugh.github.io/vue-pomodoro-timer/",
    title: "Work - Pomodoro Timer",
    description: "Successfully participate in the Scotch.io challenge and create a working pomodoro timer based on their starting point. Then take that knowledge and create my own version using Vue and host it.",
    isFavorite: false,
  ),
  DataSitus(
    developer: "AGF",
    imageLink:
    "https://www.thewindowsclub.com/wp-content/uploads/2020/07/Tomato-Timers.png",
    link: "https://www.tomatotimers.com/",
    title: "Tomato Timers",
    description: "Online Pomodoro Timer. TomatoTimers is a customizable and easy to use looping pomodoro timer to boost your efficiency.",
    isFavorite: false,
  ),
  DataSitus(
    developer: "NetHustler",
    imageLink:
    "https://nethustler.com/wp-content/uploads/2021/03/pomodoro-timer.jpg",
    link: "https://nethustler.com/pomodoro/",
    title: "Pomodoro Timer - Free Online Pomodoro Tracker",
    description: "Free online pomodoro timer. Boost your productivity and focus more using the pomodoro technique with this web based pomodoro tracker.",
    isFavorite: false,
  ),
];
