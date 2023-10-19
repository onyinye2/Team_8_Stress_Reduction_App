class Exercise {
  String title;
  String id;
  String task;
  String externalLink;

  Exercise(
      {required this.title,
      required this.id,
      required this.task,
      required this.externalLink});
}

List<Exercise> sampleExercises = [
  Exercise(
      title: "Guided Imagery",
      id: "0001",
      task:
          "Take a short vacation in your mind. Listen and follow the instructions from the video.",
      externalLink: "https://www.youtube.com/watch?v=t1rRo6cgM_E"),
  Exercise(
      title: "Meditate",
      id: "0002",
      task: "Relieve your stress with meditation",
      externalLink: "https://www.youtube.com/watch?v=Ix73CLI0Mo0"),
  Exercise(
      title: "Progressive Muscle Relaxation",
      id: "0003",
      task: "Progressive muscle relaxation involves relaxing all the muscles in your body, group by group. \nTo practice, you can start with a few deep breaths. \nThen, practice tightening and relaxing each muscle group, starting with your forehead and moving down to your toes." +
          "\nWith practice, you'll learn to recognize tension and tightness in your muscles and you'll be able to relax more easily. Each time you practice, however, you should experience a feeling of relaxation sweeping through your body.",
      externalLink: "https://www.youtube.com/watch?v=1nZEdqcGVzo"),
  Exercise(
      title: "Triangle Breathing",
      id: "0004",
      task:
          "\n1. Breathe in for 3 seconds, Hold for 3 seconds, Breathe out for 3 seconds",
      externalLink: "https://www.youtube.com/watch?v=OhO2YNMObkw"),
  Exercise(
      title: "One Minute Meditation",
      id: "0005",
      task: "Quickly reduce stress with this one minute mediation video",
      externalLink: "https://www.youtube.com/watch?v=F7PxEy5IyV4"),
  Exercise(
      title: "Take a Walk",
      id: "0006",
      task:
          "Get outside and take a walk! A change of scenery could be all you need. If you'd like, listen to the audio in the link.",
      externalLink: "https://youtu.be/0f5oFPmJ-T8?si=qhsFPTwMUPS9SBGQ")
];
