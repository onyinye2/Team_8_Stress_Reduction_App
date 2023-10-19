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
          "Guided imagery is a relaxation technique that involves using your imagination to create calming mental images. It can help reduce stress by transporting your mind to a peaceful and serene place, allowing you to focus on positive and calming thoughts.",
      externalLink: "https://www.youtube.com/watch?v=t1rRo6cgM_E"),
  Exercise(
      title: "Meditate",
      id: "0002",
      task:
          "Meditation is a practice that involves focused attention and mindfulness. It can help reduce stress by promoting relaxation, improving self-awareness, and calming the mind. Various meditation techniques, such as mindfulness and loving-kindness meditation, are used for stress relief.",
      externalLink: "https://www.youtube.com/watch?v=Ix73CLI0Mo0"),
  Exercise(
      title: "Progressive Muscle Relaxation",
      id: "0003",
      task:
          "Progressive muscle relaxation is a method that involves systematically tensing and relaxing different muscle groups in your body. This exercise helps release physical tension and promotes relaxation, making it an effective stress management tool.",
      externalLink: "https://www.youtube.com/watch?v=1nZEdqcGVzo"),
  Exercise(
      title: "Triangle Breathing",
      id: "0004",
      task:
          "Triangle breathing, also known as box breathing, is a simple and structured breathing exercise. It involves inhaling, holding the breath, exhaling, and holding the breath again, each for the same duration. This method can help regulate your breath and reduce stress.",
      externalLink: "https://www.youtube.com/watch?v=OhO2YNMObkw"),
  Exercise(
      title: "One Minute Meditation",
      id: "0005",
      task:
          "One-minute meditation is a brief mindfulness exercise designed to quickly center your thoughts and reduce stress. In just a minute, you can focus on your breath, clear your mind, and regain a sense of calm.",
      externalLink: "https://www.youtube.com/watch?v=F7PxEy5IyV4"),
  Exercise(
      title: "Take a Walk",
      id: "0006",
      task:
          "Going for a walk, especially in a natural setting like a park or near water, can be a simple yet effective way to relieve stress. Physical activity, fresh air, and a change of scenery all contribute to relaxation and stress reduction.",
      externalLink: "https://youtu.be/0f5oFPmJ-T8?si=qhsFPTwMUPS9SBGQ")
];
