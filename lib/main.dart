import 'package:flutter/material.dart';

void main() {
  runApp(const LaveaApp());
}

// ============================================================
// COLORS
// ============================================================

const Color kBackground = Color(0xFFF8F0E6);
const Color kCard = Color(0xFFFFFFFF);
const Color kBrown = Color(0xFF3F342D);
const Color kGold = Color(0xFFA57D46);
const Color kLightGold = Color(0xFFEBDDC7);
const Color kMuted = Color(0xFF8B7C70);
const Color kBorder = Color(0xFFE7D9C8);

// ============================================================
// APP
// ============================================================

class LaveaApp extends StatelessWidget {
  const LaveaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lavea',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: kBackground,
        colorScheme: ColorScheme.fromSeed(
          seedColor: kGold,
        ),
        fontFamily: 'Arial',
      ),
      home: const LoginPage(),
    );
  }
}

// ============================================================
// PRODUCT MODEL
// ============================================================

class Product {
  final String id;
  final String name;
  final String category;
  final double price;
  final double oldPrice;
  final String image;
  final String description;
  final bool isNew;

  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.oldPrice,
    required this.image,
    required this.description,
    this.isNew = true,
  });
}

// ============================================================
// PRODUCTS
// ============================================================

const List<Product> products = [
  Product(
    id: '1',
    name: 'Satin Flow Dress',
    category: 'Dresses',
    price: 2499,
    oldPrice: 3199,
    image:
        'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?auto=format&fit=crop&w=800&q=85',
    description:
        'An elegant satin silhouette designed for effortless evenings and special moments.',
  ),
  Product(
    id: '2',
    name: 'Soft Knit Top',
    category: 'Tops',
    price: 1299,
    oldPrice: 1799,
    image:
        'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=800&q=85',
    description:
        'A soft everyday knit with a relaxed premium finish.',
  ),
  Product(
    id: '3',
    name: 'Linen Wide Pants',
    category: 'Bottoms',
    price: 1899,
    oldPrice: 2399,
    image:
        'https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?auto=format&fit=crop&w=800&q=85',
    description:
        'Lightweight wide-leg pants designed for comfortable everyday styling.',
  ),
  Product(
    id: '4',
    name: 'Minimal Shoulder Bag',
    category: 'Accessories',
    price: 1699,
    oldPrice: 2099,
    image:
        'https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=800&q=85',
    description:
        'A minimal statement bag that pairs beautifully with every look.',
  ),
  Product(
    id: '5',
    name: 'Classic Denim',
    category: 'Bottoms',
    price: 1999,
    oldPrice: 2499,
    image:
        'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?auto=format&fit=crop&w=800&q=85',
    description:
        'Classic denim with a modern relaxed silhouette.',
  ),
  Product(
    id: '6',
    name: 'Everyday Blazer',
    category: 'Tops',
    price: 2799,
    oldPrice: 3499,
    image:
        'https://images.unsplash.com/photo-1591369822096-ffd140ec948f?auto=format&fit=crop&w=800&q=85',
    description:
        'A versatile blazer created to elevate your everyday wardrobe.',
  ),
  Product(
    id: '7',
    name: 'Pearl Drop Earrings',
    category: 'Accessories',
    price: 899,
    oldPrice: 1199,
    image:
        'https://images.unsplash.com/photo-1535632066927-ab7c9ab60908?auto=format&fit=crop&w=800&q=85',
    description:
        'Elegant pearl-inspired earrings for a subtle statement.',
  ),
  Product(
    id: '8',
    name: 'Rose Midi Dress',
    category: 'Dresses',
    price: 2299,
    oldPrice: 2899,
    image:
        'https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=800&q=85',
    description:
        'A feminine midi dress with a soft romantic finish.',
  ),
  Product(
    id: '9',
    name: 'Relaxed White Shirt',
    category: 'Tops',
    price: 1499,
    oldPrice: 1899,
    image:
        'https://images.unsplash.com/photo-1603252110481-7ba873bf42ab?auto=format&fit=crop&w=800&q=85',
    description:
        'A timeless white shirt with an effortless relaxed fit.',
  ),
  Product(
    id: '10',
    name: 'Structured Tote',
    category: 'Accessories',
    price: 2199,
    oldPrice: 2699,
    image:
        'https://images.unsplash.com/photo-1594223274512-ad4803739b7c?auto=format&fit=crop&w=800&q=85',
    description:
        'A structured tote designed for workdays and weekends.',
  ),
  Product(
    id: '11',
    name: 'Pleated Skirt',
    category: 'Bottoms',
    price: 1599,
    oldPrice: 1999,
    image:
        'https://images.unsplash.com/photo-1583496661160-fb5886a13d27?auto=format&fit=crop&w=800&q=85',
    description:
        'A graceful pleated skirt that adds movement to your look.',
  ),
  Product(
    id: '12',
    name: 'Silk Evening Top',
    category: 'Tops',
    price: 1799,
    oldPrice: 2299,
    image:
        'https://images.unsplash.com/photo-1564257577054-2e6b4b3e7a7b?auto=format&fit=crop&w=800&q=85',
    description:
        'A polished silk-inspired top for elegant occasions.',
  ),
];

// ============================================================
// LOGIN PAGE
// ============================================================

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  bool obscurePassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const HomePage(),
        ),
      );
    }
  }

  void message(String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        backgroundColor: kBrown,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 30,
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 500,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 15),

                    // LOGO
                    Image.asset(
                      'assets/images/logo.png',
                      width: 145,
                      height: 145,
                      fit: BoxFit.contain,
                      errorBuilder: (_, __, ___) {
                        return const Icon(
                          Icons.auto_awesome,
                          size: 80,
                          color: kGold,
                        );
                      },
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'LAVEA',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 7,
                        color: kBrown,
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      'STYLE THAT FEELS LIKE YOU',
                      style: TextStyle(
                        fontSize: 11,
                        letterSpacing: 2.5,
                        color: kMuted,
                      ),
                    ),

                    const SizedBox(height: 55),

                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Welcome back',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: kBrown,
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sign in to continue your Lavea journey.',
                        style: TextStyle(
                          fontSize: 14,
                          color: kMuted,
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    // EMAIL
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: inputDecoration(
                        'Email address',
                        Icons.email_outlined,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }

                        if (!value.contains('@')) {
                          return 'Please enter a valid email';
                        }

                        return null;
                      },
                    ),

                    const SizedBox(height: 18),

                    // PASSWORD
                    TextFormField(
                      controller: passwordController,
                      obscureText: obscurePassword,
                      decoration: inputDecoration(
                        'Password',
                        Icons.lock_outline,
                      ).copyWith(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscurePassword = !obscurePassword;
                            });
                          },
                          icon: Icon(
                            obscurePassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: kMuted,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }

                        if (value.length < 6) {
                          return 'Password must contain at least 6 characters';
                        }

                        return null;
                      },
                    ),

                    const SizedBox(height: 12),

                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          message('Password reset link will be sent.');
                        },
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: kGold,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // LOGIN
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: login,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kBrown,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text(
                          'SIGN IN',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 22),

                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: kBorder,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'OR',
                            style: TextStyle(
                              color: kMuted,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: kBorder,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 22),

                    // GOOGLE
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: OutlinedButton(
                        onPressed: () {
                          message('Google sign in selected.');
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            color: kBorder,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'G',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Continue with Google',
                              style: TextStyle(
                                color: kBrown,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: kMuted,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            message(
                              'Create account feature selected.',
                            );
                          },
                          child: const Text(
                            'Create account',
                            style: TextStyle(
                              color: kGold,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// INPUT DECORATION
// ============================================================

InputDecoration inputDecoration(
  String hint,
  IconData icon,
) {
  return InputDecoration(
    hintText: hint,
    hintStyle: const TextStyle(
      color: kMuted,
    ),
    prefixIcon: Icon(
      icon,
      color: kMuted,
    ),
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 17,
      horizontal: 16,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: kBorder,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: kGold,
        width: 1.5,
      ),
    ),
  );
}

// ============================================================
// HOME PAGE
// ============================================================

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  String selectedCategory = 'All';
  String searchText = '';
  String sortOption = 'Featured';

  final TextEditingController searchController =
      TextEditingController();

  final ScrollController scrollController =
      ScrollController();

  final Set<String> favorites = {};

  final Map<String, int> bag = {};

  int visibleCount = 6;
  bool loadingMore = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.position.pixels >
          scrollController.position.maxScrollExtent - 500) {
        loadMore();
      }
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  List<Product> get filteredProducts {
    List<Product> result = products.where((product) {
      final matchesCategory =
          selectedCategory == 'All' ||
              product.category == selectedCategory;

      final matchesSearch =
          product.name.toLowerCase().contains(
                searchText.toLowerCase(),
              ) ||
              product.category.toLowerCase().contains(
                searchText.toLowerCase(),
              );

      return matchesCategory && matchesSearch;
    }).toList();

    if (sortOption == 'Price: Low to High') {
      result.sort(
        (a, b) => a.price.compareTo(b.price),
      );
    }

    if (sortOption == 'Price: High to Low') {
      result.sort(
        (a, b) => b.price.compareTo(a.price),
      );
    }

    if (sortOption == 'Name') {
      result.sort(
        (a, b) => a.name.compareTo(b.name),
      );
    }

    return result;
  }

  void loadMore() {
    if (loadingMore) return;

    if (visibleCount >= filteredProducts.length) {
      return;
    }

    setState(() {
      loadingMore = true;
    });

    Future.delayed(
      const Duration(milliseconds: 700),
      () {
        if (!mounted) return;

        setState(() {
          visibleCount += 4;

          if (visibleCount > filteredProducts.length) {
            visibleCount = filteredProducts.length;
          }

          loadingMore = false;
        });
      },
    );
  }

  void changeCategory(String category) {
    setState(() {
      selectedCategory = category;
      visibleCount = 6;
    });
  }

  void toggleFavorite(Product product) {
    setState(() {
      if (favorites.contains(product.id)) {
        favorites.remove(product.id);
      } else {
        favorites.add(product.id);
      }
    });
  }

  void addToBag(Product product) {
    setState(() {
      bag[product.id] = (bag[product.id] ?? 0) + 1;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '${product.name} added to your bag',
        ),
        backgroundColor: kBrown,
        action: SnackBarAction(
          label: 'VIEW BAG',
          textColor: Colors.white,
          onPressed: openBag,
        ),
      ),
    );
  }

  int get bagItemCount {
    int total = 0;

    for (final quantity in bag.values) {
      total += quantity;
    }

    return total;
  }

  void openBag() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BagPage(
          bag: bag,
          onBagChanged: () {
            setState(() {});
          },
        ),
      ),
    );
  }

  void openProduct(Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ProductDetailsPage(
          product: product,
          isFavorite: favorites.contains(product.id),
          onFavorite: () {
            toggleFavorite(product);
          },
          onAddToBag: () {
            addToBag(product);
          },
        ),
      ),
    );
  }

  void showSortSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: kBackground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(28),
        ),
      ),
      builder: (context) {
        final options = [
          'Featured',
          'Price: Low to High',
          'Price: High to Low',
          'Name',
        ];

        return Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sort products',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: kBrown,
                ),
              ),
              const SizedBox(height: 18),
              ...options.map(
                (option) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(option),
                    trailing: sortOption == option
                        ? const Icon(
                            Icons.check,
                            color: kGold,
                          )
                        : null,
                    onTap: () {
                      setState(() {
                        sortOption = option;
                        visibleCount = 6;
                      });

                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: IndexedStack(
          index: currentIndex,
          children: [
            buildHome(),
            buildCategoriesPage(),
            buildWishlistPage(),
            buildProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        backgroundColor: Colors.white,
        indicatorColor: kLightGold,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.grid_view_outlined),
            selectedIcon: Icon(Icons.grid_view),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_border),
            selectedIcon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  // ==========================================================
  // HOME
  // ==========================================================

  Widget buildHome() {
    final displayedProducts =
        filteredProducts.take(visibleCount).toList();

    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(
            22,
            20,
            22,
            0,
          ),
          sliver: SliverToBoxAdapter(
            child: buildHomeHeader(),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(
            22,
            22,
            22,
            0,
          ),
          sliver: SliverToBoxAdapter(
            child: buildSearchBar(),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(
            22,
            15,
            22,
            0,
          ),
          sliver: SliverToBoxAdapter(
            child: buildCategoryChips(),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(
            22,
            28,
            22,
            0,
          ),
          sliver: SliverToBoxAdapter(
            child: buildHeroBanner(),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(
            22,
            30,
            22,
            15,
          ),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Curated for you',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: kBrown,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedCategory = 'All';
                      visibleCount =
                          filteredProducts.length;
                    });
                  },
                  child: const Text(
                    'View all',
                    style: TextStyle(
                      color: kGold,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        if (displayedProducts.isEmpty)
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                'No products found',
                style: TextStyle(
                  color: kMuted,
                  fontSize: 16,
                ),
              ),
            ),
          )
        else
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
            ),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final product =
                      displayedProducts[index];

                  return ProductCard(
                    product: product,
                    isFavorite:
                        favorites.contains(product.id),
                    onFavorite: () {
                      toggleFavorite(product);
                    },
                    onTap: () {
                      openProduct(product);
                    },
                  );
                },
                childCount: displayedProducts.length,
              ),
              gridDelegate:
                  const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 310,
                mainAxisExtent: 430,
                crossAxisSpacing: 16,
                mainAxisSpacing: 28,
              ),
            ),
          ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: loadingMore
                ? const Center(
                    child: CircularProgressIndicator(
                      color: kGold,
                    ),
                  )
                : const SizedBox(height: 20),
          ),
        ),
      ],
    );
  }

  Widget buildHomeHeader() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              const Text(
                'LAVEA',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                  color: kBrown,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'STYLE THAT FEELS LIKE YOU',
                style: TextStyle(
                  fontSize: 9,
                  letterSpacing: 1.8,
                  color: kMuted,
                ),
              ),
            ],
          ),
        ),

        GestureDetector(
          onTap: openBag,
          child: Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                const Icon(
                  Icons.shopping_bag_outlined,
                  color: kBrown,
                ),
                if (bagItemCount > 0)
                  Positioned(
                    top: 7,
                    right: 7,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                        color: kBrown,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '$bagItemCount',
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSearchBar() {
    return TextField(
      controller: searchController,
      onChanged: (value) {
        setState(() {
          searchText = value;
          visibleCount = 6;
        });
      },
      decoration: InputDecoration(
        hintText: 'Search your style...',
        hintStyle: const TextStyle(
          color: kMuted,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: kBrown,
        ),
        suffixIcon: IconButton(
          onPressed: showSortSheet,
          icon: const Icon(
            Icons.tune,
            color: kGold,
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget buildCategoryChips() {
    final categories = [
      'All',
      'New In',
      'Dresses',
      'Tops',
      'Bottoms',
      'Accessories',
    ];

    return SizedBox(
      height: 52,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) =>
            const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final category = categories[index];

          final selected =
              selectedCategory == category;

          return GestureDetector(
            onTap: () {
              changeCategory(
                category == 'New In'
                    ? 'All'
                    : category,
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                color: selected
                    ? kGold
                    : Colors.white,
                borderRadius:
                    BorderRadius.circular(30),
              ),
              child: Text(
                category,
                style: TextStyle(
                  color: selected
                      ? Colors.white
                      : kBrown,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildHeroBanner() {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFE6CBAA),
            Color(0xFFD5B48F),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -40,
            top: -30,
            child: Container(
              width: 230,
              height: 230,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(.14),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                const Text(
                  'NEW SEASON',
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    color: kBrown,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Effortless\nElegance',
                  style: TextStyle(
                    fontSize: 32,
                    height: 1.05,
                    fontWeight: FontWeight.bold,
                    color: kBrown,
                  ),
                ),
                const SizedBox(height: 18),
                ElevatedButton(
                  onPressed: () {
                    changeCategory('All');
                    scrollController.animateTo(
                      0,
                      duration:
                          const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBrown,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    padding:
                        const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 14,
                    ),
                  ),
                  child: const Text(
                    'SHOP NOW',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ==========================================================
  // CATEGORIES
  // ==========================================================

  Widget buildCategoriesPage() {
    final categories = [
      {
        'name': 'Dresses',
        'icon': Icons.checkroom_outlined,
      },
      {
        'name': 'Tops',
        'icon': Icons.dry_cleaning_outlined,
      },
      {
        'name': 'Bottoms',
        'icon': Icons.shopping_bag_outlined,
      },
      {
        'name': 'Accessories',
        'icon': Icons.watch_outlined,
      },
    ];

    return ListView(
      padding: const EdgeInsets.all(22),
      children: [
        const SizedBox(height: 10),
        const Text(
          'Explore',
          style: TextStyle(
            fontSize: 14,
            color: kMuted,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Categories',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: kBrown,
          ),
        ),
        const SizedBox(height: 25),
        ...categories.map(
          (category) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedCategory =
                      category['name'] as String;
                  currentIndex = 0;
                  visibleCount = 6;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(
                  bottom: 16,
                ),
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                        color: kLightGold,
                        borderRadius:
                            BorderRadius.circular(20),
                      ),
                      child: Icon(
                        category['icon']
                            as IconData,
                        color: kBrown,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 18),
                    Expanded(
                      child: Text(
                        category['name'] as String,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kBrown,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: kMuted,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  // ==========================================================
  // WISHLIST
  // ==========================================================

  Widget buildWishlistPage() {
    final likedProducts = products
        .where(
          (product) => favorites.contains(product.id),
        )
        .toList();

    return ListView(
      padding: const EdgeInsets.all(22),
      children: [
        const SizedBox(height: 10),
        const Text(
          'Your',
          style: TextStyle(
            fontSize: 14,
            color: kMuted,
          ),
        ),
        const Text(
          'Wishlist',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: kBrown,
          ),
        ),
        const SizedBox(height: 25),
        if (likedProducts.isEmpty)
          Container(
            padding: const EdgeInsets.all(45),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Column(
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 60,
                  color: kGold,
                ),
                SizedBox(height: 18),
                Text(
                  'Your wishlist is empty',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: kBrown,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Save your favourite styles here.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kMuted,
                  ),
                ),
              ],
            ),
          )
        else
          GridView.builder(
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(),
            itemCount: likedProducts.length,
            gridDelegate:
                const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 310,
              mainAxisExtent: 430,
              crossAxisSpacing: 16,
              mainAxisSpacing: 25,
            ),
            itemBuilder: (context, index) {
              final product = likedProducts[index];

              return ProductCard(
                product: product,
                isFavorite: true,
                onFavorite: () {
                  toggleFavorite(product);
                },
                onTap: () {
                  openProduct(product);
                },
              );
            },
          ),
      ],
    );
  }

  // ==========================================================
  // PROFILE
  // ==========================================================

  Widget buildProfilePage() {
    return ListView(
      padding: const EdgeInsets.all(22),
      children: [
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: const Row(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: kLightGold,
                child: Icon(
                  Icons.person,
                  color: kBrown,
                  size: 32,
                ),
              ),
              SizedBox(width: 18),
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Lavea',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kBrown,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Your style, your story.',
                    style: TextStyle(
                      color: kMuted,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),
        profileOption(
          Icons.shopping_bag_outlined,
          'My Orders',
        ),
        profileOption(
          Icons.location_on_outlined,
          'Saved Addresses',
        ),
        profileOption(
          Icons.payment_outlined,
          'Payment Methods',
        ),
        profileOption(
          Icons.notifications_none,
          'Notifications',
        ),
        profileOption(
          Icons.settings_outlined,
          'Settings',
        ),
        profileOption(
          Icons.help_outline,
          'Help & Support',
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (_) => const LoginPage(),
              ),
              (route) => false,
            );
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: kBrown,
            side: const BorderSide(
              color: kBorder,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
          ),
          child: const Text('LOG OUT'),
        ),
      ],
    );
  }

  Widget profileOption(
    IconData icon,
    String title,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: kBrown,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: kBrown,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 15,
          color: kMuted,
        ),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('$title selected'),
              backgroundColor: kBrown,
            ),
          );
        },
      ),
    );
  }
}

// ============================================================
// PRODUCT CARD
// ============================================================

class ProductCard extends StatelessWidget {
  final Product product;
  final bool isFavorite;
  final VoidCallback onFavorite;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.product,
    required this.isFavorite,
    required this.onFavorite,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8DED2),
                    borderRadius:
                        BorderRadius.circular(24),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    product.image,
                    fit: BoxFit.cover,
                    errorBuilder:
                        (_, __, ___) {
                      return const Center(
                        child: Icon(
                          Icons.image_outlined,
                          size: 45,
                          color: kGold,
                        ),
                      );
                    },
                  ),
                ),

                if (product.isNew)
                  Positioned(
                    top: 15,
                    left: 15,
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: kBrown,
                        borderRadius:
                            BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'NEW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                Positioned(
                  top: 14,
                  right: 14,
                  child: GestureDetector(
                    onTap: onFavorite,
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration:
                          const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: isFavorite
                            ? Colors.redAccent
                            : kBrown,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 13),

          Text(
            product.category.toUpperCase(),
            style: const TextStyle(
              fontSize: 11,
              letterSpacing: 1.5,
              color: kGold,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            product.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: kBrown,
            ),
          ),

          const SizedBox(height: 7),

          Row(
            children: [
              Text(
                '₹${product.price.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: kBrown,
                ),
              ),
              const SizedBox(width: 9),
              Text(
                '₹${product.oldPrice.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 12,
                  color: kMuted,
                  decoration:
                      TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ============================================================
// PRODUCT DETAILS
// ============================================================

class ProductDetailsPage extends StatefulWidget {
  final Product product;
  final bool isFavorite;
  final VoidCallback onFavorite;
  final VoidCallback onAddToBag;

  const ProductDetailsPage({
    super.key,
    required this.product,
    required this.isFavorite,
    required this.onFavorite,
    required this.onAddToBag,
  });

  @override
  State<ProductDetailsPage> createState() =>
      _ProductDetailsPageState();
}

class _ProductDetailsPageState
    extends State<ProductDetailsPage> {
  String selectedSize = 'M';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: kBrown,
                      ),
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          'Product Details',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight:
                                FontWeight.bold,
                            color: kBrown,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        widget.onFavorite();
                        setState(() {});
                      },
                      icon: Icon(
                        widget.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: widget.isFavorite
                            ? Colors.redAccent
                            : kBrown,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(28),
                  child: AspectRatio(
                    aspectRatio: .78,
                    child: Image.network(
                      widget.product.image,
                      fit: BoxFit.cover,
                      errorBuilder:
                          (_, __, ___) {
                        return const Center(
                          child: Icon(
                            Icons.image_outlined,
                            size: 70,
                            color: kGold,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.category
                          .toUpperCase(),
                      style: const TextStyle(
                        fontSize: 12,
                        letterSpacing: 2,
                        color: kGold,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      widget.product.name,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: kBrown,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Text(
                          '₹${widget.product.price.toStringAsFixed(0)}',
                          style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: kBrown,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          '₹${widget.product.oldPrice.toStringAsFixed(0)}',
                          style: const TextStyle(
                            color: kMuted,
                            decoration:
                                TextDecoration
                                    .lineThrough,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 22),

                    Text(
                      widget.product.description,
                      style: const TextStyle(
                        color: kMuted,
                        height: 1.6,
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 30),

                    const Text(
                      'Select Size',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: kBrown,
                      ),
                    ),

                    const SizedBox(height: 14),

                    Row(
                      children: [
                        'S',
                        'M',
                        'L',
                        'XL',
                      ].map(
                        (size) {
                          final selected =
                              selectedSize == size;

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSize =
                                    size;
                              });
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets
                                      .only(
                                right: 12,
                              ),
                              width: 55,
                              height: 50,
                              decoration: BoxDecoration(
                                color: selected
                                    ? kBrown
                                    : Colors.white,
                                borderRadius:
                                    BorderRadius
                                        .circular(15),
                                border: Border.all(
                                  color: selected
                                      ? kBrown
                                      : kBorder,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  size,
                                  style: TextStyle(
                                    color: selected
                                        ? Colors.white
                                        : kBrown,
                                    fontWeight:
                                        FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),

                    const SizedBox(height: 30),

                    SizedBox(
                      width: double.infinity,
                      height: 58,
                      child: ElevatedButton(
                        onPressed: () {
                          widget.onAddToBag();

                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(
                            SnackBar(
                              content: Text(
                                '${widget.product.name} added to your bag',
                              ),
                              backgroundColor:
                                  kBrown,
                            ),
                          );
                        },
                        style:
                            ElevatedButton.styleFrom(
                          backgroundColor: kGold,
                          foregroundColor:
                              Colors.white,
                          elevation: 0,
                          shape:
                              RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(
                              18,
                            ),
                          ),
                        ),
                        child: const Text(
                          'ADD TO BAG',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// BAG PAGE
// ============================================================

class BagPage extends StatefulWidget {
  final Map<String, int> bag;
  final VoidCallback onBagChanged;

  const BagPage({
    super.key,
    required this.bag,
    required this.onBagChanged,
  });

  @override
  State<BagPage> createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  Product? productForId(String id) {
    for (final product in products) {
      if (product.id == id) {
        return product;
      }
    }

    return null;
  }

  double get subtotal {
    double total = 0;

    widget.bag.forEach(
      (id, quantity) {
        final product = productForId(id);

        if (product != null) {
          total += product.price * quantity;
        }
      },
    );

    return total;
  }

  int get itemCount {
    int total = 0;

    for (final quantity in widget.bag.values) {
      total += quantity;
    }

    return total;
  }

  void updateQuantity(
    String id,
    int change,
  ) {
    final current = widget.bag[id] ?? 0;
    final newValue = current + change;

    setState(() {
      if (newValue <= 0) {
        widget.bag.remove(id);
      } else {
        widget.bag[id] = newValue;
      }
    });

    widget.onBagChanged();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        backgroundColor: kBackground,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Bag',
          style: TextStyle(
            color: kBrown,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: kBrown,
          ),
        ),
      ),
      body: widget.bag.isEmpty
          ? buildEmptyBag()
          : Column(
              children: [
                Expanded(
                  child: ListView(
                    padding:
                        const EdgeInsets.all(22),
                    children: [
                      ...widget.bag.entries.map(
                        (entry) {
                          final product =
                              productForId(
                            entry.key,
                          );

                          if (product == null) {
                            return const SizedBox();
                          }

                          return buildBagItem(
                            product,
                            entry.value,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                buildSummary(),
              ],
            ),
    );
  }

  Widget buildEmptyBag() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.shopping_bag_outlined,
              size: 75,
              color: kGold,
            ),
            const SizedBox(height: 20),
            const Text(
              'Your bag is empty',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: kBrown,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Add something beautiful to your bag.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kMuted,
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kBrown,
                foregroundColor: Colors.white,
              ),
              child: const Text('START SHOPPING'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBagItem(
    Product product,
    int quantity,
  ) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(18),
            child: Image.network(
              product.image,
              width: 115,
              height: 145,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 17),
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  product.category.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 10,
                    letterSpacing: 1.5,
                    color: kGold,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kBrown,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '₹${product.price.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kBrown,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    quantityButton(
                      Icons.remove,
                      () {
                        updateQuantity(
                          product.id,
                          -1,
                        );
                      },
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Text(
                        '$quantity',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    quantityButton(
                      Icons.add,
                      () {
                        updateQuantity(
                          product.id,
                          1,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                widget.bag.remove(product.id);
              });

              widget.onBagChanged();
            },
            icon: const Icon(
              Icons.delete_outline,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }

  Widget quantityButton(
    IconData icon,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: kBackground,
          borderRadius:
              BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          size: 17,
          color: kBrown,
        ),
      ),
    );
  }

  Widget buildSummary() {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        22,
        20,
        22,
        25,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Items',
                style: TextStyle(
                  color: kMuted,
                ),
              ),
              Text(
                '$itemCount',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kBrown,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Subtotal',
                style: TextStyle(
                  color: kMuted,
                ),
              ),
              Text(
                '₹${subtotal.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kBrown,
                ),
              ),
            ],
          ),
          const Divider(
            height: 30,
            color: kBorder,
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: kBrown,
                ),
              ),
              Text(
                '₹${subtotal.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: kBrown,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 58,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        CheckoutPage(
                      total: subtotal,
                      itemCount: itemCount,
                      bag: widget.bag,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: kGold,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(18),
                ),
              ),
              child: const Text(
                'PROCEED TO CHECKOUT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// CHECKOUT
// ============================================================

class CheckoutPage extends StatefulWidget {
  final double total;
  final int itemCount;
  final Map<String, int> bag;

  const CheckoutPage({
    super.key,
    required this.total,
    required this.itemCount,
    required this.bag,
  });

  @override
  State<CheckoutPage> createState() =>
      _CheckoutPageState();
}

class _CheckoutPageState
    extends State<CheckoutPage> {
  String paymentMethod = 'UPI';

  void placeOrder() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => OrderConfirmedPage(
          bag: widget.bag,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        backgroundColor: kBackground,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Checkout',
          style: TextStyle(
            color: kBrown,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: kBrown,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(22),
        children: [
          sectionTitle('Delivery Address'),

          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(22),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: kGold,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                          fontWeight:
                              FontWeight.bold,
                          color: kBrown,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Thrissur, Kerala, India',
                        style: TextStyle(
                          color: kMuted,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: kMuted,
                ),
              ],
            ),
          ),

          const SizedBox(height: 28),

          sectionTitle('Payment Method'),

          ...[
            'UPI',
            'Credit / Debit Card',
            'Cash on Delivery',
          ].map(
            (method) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    paymentMethod = method;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    bottom: 12,
                  ),
                  padding:
                      const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(18),
                    border: Border.all(
                      color: paymentMethod == method
                          ? kGold
                          : kBorder,
                      width: paymentMethod == method
                          ? 1.5
                          : 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        method == 'UPI'
                            ? Icons.phone_android
                            : method.contains('Card')
                                ? Icons.credit_card
                                : Icons
                                    .local_shipping_outlined,
                        color: kBrown,
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          method,
                          style: const TextStyle(
                            fontWeight:
                                FontWeight.w600,
                            color: kBrown,
                          ),
                        ),
                      ),
                      Radio<String>(
                        value: method,
                        groupValue:
                            paymentMethod,
                        activeColor: kGold,
                        onChanged: (value) {
                          setState(() {
                            paymentMethod =
                                value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

          const SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(22),
            ),
            child: Column(
              children: [
                summaryRow(
                  'Items',
                  '${widget.itemCount}',
                ),
                const SizedBox(height: 13),
                summaryRow(
                  'Subtotal',
                  '₹${widget.total.toStringAsFixed(0)}',
                ),
                const Divider(
                  height: 30,
                  color: kBorder,
                ),
                summaryRow(
                  'Total',
                  '₹${widget.total.toStringAsFixed(0)}',
                  bold: true,
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          SizedBox(
            height: 58,
            child: ElevatedButton(
              onPressed: placeOrder,
              style: ElevatedButton.styleFrom(
                backgroundColor: kGold,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(18),
                ),
              ),
              child: const Text(
                'PLACE ORDER',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 14,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: kBrown,
        ),
      ),
    );
  }

  Widget summaryRow(
    String title,
    String value, {
    bool bold = false,
  }) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: bold ? kBrown : kMuted,
            fontSize: bold ? 19 : 14,
            fontWeight:
                bold ? FontWeight.bold : null,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: kBrown,
            fontSize: bold ? 19 : 15,
            fontWeight:
                bold ? FontWeight.bold : null,
          ),
        ),
      ],
    );
  }
}

// ============================================================
// ORDER CONFIRMED
// ============================================================

class OrderConfirmedPage extends StatelessWidget {
  final Map<String, int> bag;

  const OrderConfirmedPage({
    super.key,
    required this.bag,
  });

  String get firstProductName {
    if (bag.isEmpty) {
      return 'Item';
    }

    final id = bag.keys.first;

    for (final product in products) {
      if (product.id == id) {
        return product.name;
      }
    }

    return 'Item';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,

      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),

          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 25,
          ),

          children: [

            const SizedBox(height: 10),

            // ==================================================
            // SUCCESS ICON
            // ==================================================

            Center(
              child: Container(
                width: 130,
                height: 130,

                decoration: const BoxDecoration(
                  color: kLightGold,
                  shape: BoxShape.circle,
                ),

                child: const Icon(
                  Icons.check,
                  size: 65,
                  color: kGold,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ==================================================
            // TITLE
            // ==================================================

            const Text(
              'Order Confirmed!',
              textAlign: TextAlign.center,

              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: kBrown,
              ),
            ),

            const SizedBox(height: 12),

            // ==================================================
            // MESSAGE
            // ==================================================

            const Text(
              'Thank you for shopping with Lavea.',
              textAlign: TextAlign.center,

              style: TextStyle(
                fontSize: 17,
                color: kMuted,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Your order has been placed successfully.',
              textAlign: TextAlign.center,

              style: TextStyle(
                fontSize: 15,
                color: kMuted,
              ),
            ),

            const SizedBox(height: 28),

            // ==================================================
            // ORDER ID CARD
            // ==================================================

            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 20,
                ),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),

                child: const Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [

                    Text(
                      'ORDER ID',

                      style: TextStyle(
                        fontSize: 11,
                        letterSpacing: 2,
                        color: kGold,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      '#LAV20261006',

                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: kBrown,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 28),

            // ==================================================
            // CONTINUE SHOPPING BUTTON
            // ==================================================

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed: () {

                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomePage();
                      },
                    ),
                    (route) => false,
                  );

                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: kGold,
                  foregroundColor: Colors.white,
                  elevation: 0,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),

                child: const Text(
                  'CONTINUE SHOPPING',

                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // ==================================================
            // ORDER MESSAGE
            // ==================================================

            Text(
              '$firstProductName added to your order',
              textAlign: TextAlign.center,

              style: const TextStyle(
                color: kMuted,
                fontSize: 13,
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}