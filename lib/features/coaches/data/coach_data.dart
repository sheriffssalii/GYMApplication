import '../models/coach_model.dart';

final List<Coach> coaches = [
  Coach(
    name: "Marcus Rodriguez",
    specialty: "Strength & Conditioning",
    image: "assets/images/Marcus.jpg",
    rating: 5.0,
    experience: 10,
    bio: "With over 10 years of experience in strength training and athletic performance...",
    certifications: ["NASM-CPT", "ACE-SCS", "CrossFit L2"],
    schedule: ["Mon 6:00 AM", "Tue 7:00 AM", "Wed 5:00 PM", "Thu 6:00 PM"],
  ),
  Coach(
    name: "Sarah Chen",
    specialty: "HIIT & Weight Loss",
    image: "assets/images/Sara.png",
    rating: 4.9,
    experience: 7,
    bio: "Sarah specializes in high-intensity interval training and weight loss programs...",
    certifications: ["ACE-CPT", "NASM-WLS"],
    schedule: ["Mon 6:00 AM", "Tue 7:00 AM", "Fri 5:00 PM"],
  ),
  Coach(
    name: "David Thompson",
    specialty: "Functional Training",
    image: "assets/images/David.png",
    rating: 4.8,
    experience: 8,
    bio: "David focuses on functional training to improve mobility and strength...",
    certifications: ["NSCA-CSCS", "FMS Level 2"],
    schedule: ["Wed 6:00 AM", "Thu 7:00 AM", "Sat 8:00 AM"],
  ),
];
