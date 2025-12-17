import 'package:flutter/material.dart';
import '../data/coach_data.dart';
import 'coaches_profile_screen.dart';
import '/core/theme/app_theme.dart';

class CoachesScreen extends StatelessWidget {
  const CoachesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          children: [
            // 🔹 Header
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.primary,
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.secondary.withOpacity(0.5),
                    width: 1,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Find Your Coach",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ClashDisplay',
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColors.secondary.withOpacity(0.6),
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      style: const TextStyle(
                        color: AppColors.white,
                        fontFamily: 'ClashDisplay',
                      ),
                      decoration: InputDecoration(
                        hintText: "Search coaches or specialties...",
                        hintStyle: TextStyle(
                          color: AppColors.white.withOpacity(0.5),
                          fontFamily: 'ClashDisplay',
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: AppColors.accent,
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        _FilterChip(label: "Strength"),
                        _FilterChip(label: "HIIT"),
                        _FilterChip(label: "Yoga"),
                        _FilterChip(label: "Sports"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // 🔹 Coaches List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: coaches.length,
                itemBuilder: (context, index) {
                  final coach = coaches[index];

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.secondary,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: AppColors.secondary.withOpacity(0.6),
                          width: 1,
                        ),
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CoachProfileScreen(coach: coach),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // 🖼 Image
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.accent.withOpacity(0.1),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    coach.image,
                                    height: 96,
                                    width: 96,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Name
                                    Text(
                                      coach.name,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'ClashDisplay',
                                        color: AppColors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    // Specialty
                                    Text(
                                      coach.specialty,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'ClashDisplay',
                                        color: AppColors.accent,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    // ⭐ Rating
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          size: 16,
                                          color: AppColors.accent,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          coach.rating.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'ClashDisplay',
                                            color: AppColors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    // Certifications
                                    Wrap(
                                      spacing: 6,
                                      runSpacing: 4,
                                      children: coach.certifications
                                          .take(3)
                                          .map(
                                            (cert) => Container(
                                              padding: const EdgeInsets.symmetric(
                                                horizontal: 10,
                                                vertical: 4,
                                              ),
                                              decoration: BoxDecoration(
                                                color: AppColors.primary,
                                                borderRadius: BorderRadius.circular(8),
                                                border: Border.all(
                                                  color: AppColors.accent.withOpacity(0.3),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Text(
                                                cert,
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontFamily: 'ClashDisplay',
                                                  color: AppColors.white.withOpacity(0.8),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;

  const _FilterChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppColors.accent.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontFamily: 'ClashDisplay',
            color: AppColors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}