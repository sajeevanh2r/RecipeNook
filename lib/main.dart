import 'package:flutter/material.dart';
import 'routes/app_router.dart'; // <--- Ensure this path is correct
import 'theme/app_theme.dart';

void main() {
  runApp(const RecipeNookApp());
}

class RecipeNookApp extends StatelessWidget {
  const RecipeNookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Recipe Nook',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      
      // THIS IS THE KEY FIX:
      // AppRouter (the class) .router (the static variable)
      routerConfig: AppRouter.router, 
    );
  }
}