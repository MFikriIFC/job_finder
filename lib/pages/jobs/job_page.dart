import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class JobPage extends StatelessWidget {
  const JobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true, //to show appbar instanly after scrolling down
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true, //to show appbar instanly after scrolling down
            automaticallyImplyLeading: false, //remove drawer burger icon
            scrolledUnderElevation: 0, //prevent appbar bg change when scroll
            title: Row(
              children: [
                Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/profile/sule.jpeg",
                          fit: BoxFit.cover,
                          width: 30,
                          height: 30,
                        ),
                      ),
                    );
                  },
                ),

                const SizedBox(width: 16,),
                Expanded(
                  child: GestureDetector(
                          onTap: () {
                            // print('tes');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255,238, 243, 247),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                children: [
                                  Icon(Icons.search, color: Theme.of(context).iconTheme.color,),
                                  const SizedBox(width: 8.0),
                                  const Text('Search jobs', style: TextStyle(fontSize: 16),),
                                ],
                              ),
                            ),
                          ),
                        )

                ),
                const SizedBox(width: 16,),
                Icon(Icons.chat, color: Theme.of(context).iconTheme.color,),
              ],
            ),
          )],
          body: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      OutlinedButton(
                        onPressed: () {
                          // Add your onPressed function here
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(width: 1, color: Color.fromARGB(255, 140, 140, 140)), 
                          foregroundColor: const Color.fromARGB(255, 64, 64, 64),
                        ),
                        child: const Text('My jobs'),
                      ),
                      const SizedBox(width: 10,),
                      OutlinedButton(
                        onPressed: () {
                          // Add your onPressed function here
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(width: 1, color: Color.fromARGB(255, 140, 140, 140)), 
                          foregroundColor: const Color.fromARGB(255, 64, 64, 64),
                        ),
                        child: const Text('Preferences'),
                      ),
                      const SizedBox(width: 10,),
                      OutlinedButton(
                        onPressed: () {
                          // Add your onPressed function here
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(width: 1, color: Color.fromARGB(255, 140, 140, 140)), 
                          foregroundColor: const Color.fromARGB(255, 64, 64, 64),
                        ),
                        child: const Text('Post a free job'),
                      ),
                    ],
                  ),
                ),
            
                const Divider(
                  height: 30,
                  thickness: 15,
                  color: Color.fromARGB(255, 244, 242, 238),
                ),
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Recent searches', 
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          const Spacer(),
                          Text(
                            'Clear',
                            style: TextStyle(
                              color: Theme.of(context).textTheme.displayMedium!.color
                            ),)
                        ],
                      ),
                      
                      const SizedBox(height: 20,),
                      
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chef', 
                                style: TextStyle(fontWeight: FontWeight.w600),),
                              Text('Indonesia'),
                            ],
                          ),
                          SizedBox(width: 16,),
                          Text(
                            '1 new', 
                            style: TextStyle(color: Color.fromRGBO(5, 118, 66, 1)),)
                        ],
                      ),
            
                      const Divider(),
            
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Frontend dev', 
                                style: TextStyle(fontWeight: FontWeight.w600),),
                              Text('India'),
                            ],
                          ),
                          SizedBox(width: 16,),
                          Text(
                            '14 new', 
                            style: TextStyle(color: Color.fromRGBO(5, 118, 66, 1)),)
                        ],
                      ),
            
                      const Divider(),
            
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Racer', 
                                style: TextStyle(fontWeight: FontWeight.w600),),
                              Text('England'),
                            ],
                          ),
                          SizedBox(width: 16,),
                          Text(
                            '14 new', 
                            style: TextStyle(color: Color.fromRGBO(5, 118, 66, 1)),)
                        ],
                      ),
                    ],
                  ),
                ),
            
                const Divider(
                  height: 30,
                  thickness: 10,
                  color: Color.fromARGB(255, 244, 242, 238),
                ),
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/images/profile/sule.jpeg",
                          fit: BoxFit.cover,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      const SizedBox(width: 16,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "See the full list of jobs where youd'd be a top applicant",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            const SizedBox(height: 10,),
                            ElevatedButton(
                              onPressed: (){}, 
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 248, 191, 106),
                                foregroundColor: Colors.black
                              ),
                              child: const Text('Try Premium for IDR0') 
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              '1-day free trial. Cancel anytime.',
                              style: TextStyle(
                                color: Theme.of(context).textTheme.displayMedium!.color
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),          
            
                const Divider(
                  height: 30,
                  thickness: 10,
                  color: Color.fromARGB(255, 244, 242, 238),
                ),
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Hiring in your network', 
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Explore relevant jobs in your network',
                          style: TextStyle(color: Theme.of(context).textTheme.displayMedium!.color),
                        ),
                      ),
            
                      const SizedBox(height: 10,),
            
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                "https://opr.pt-ssss.com/assets/images/logos/PT-SSSS.png",
                                fit: BoxFit.cover,
                                width: 50,
                                height: 50,
                              ),
                              const SizedBox(width: 16,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'Frontend Developer',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                          ),
                                        Spacer(),
                                        Icon(Icons.cancel)
                                      ],
                                    ),
                                    const Text('Sumatra Sarana Sekar Sakti'),
                                    Text(
                                      'Medan, Indonesia (On-site)',
                                      style: TextStyle(
                                        color: Theme.of(context).textTheme.displayMedium!.color
                                      )
                                    ),
                                    const SizedBox(height: 6,),
                                    Row(
                                      children: [
                                        ClipOval(
                                          child: Image.network(
                                            'https://thumb.viva.co.id/media/frontend/tokoh/2017/10/16/59e4500ae2296-andre-taulany3_216_287.jpg',
                                            fit: BoxFit.cover,
                                            width: 25,
                                            height: 25,
                                          ),
                                        ),
                                        const Text('  1 mutual connection with the hiring team',
                                        style: TextStyle(fontWeight: FontWeight.w200))
                                      ],
                                    ),
                                    const SizedBox(height: 6,),
                                    Row(
                                      children: [
                                        const Text('6 months ago',
                                        style: TextStyle(fontWeight: FontWeight.w200)),
                                        const SizedBox(width: 8,),
                                        const Text('•'),
                                        const SizedBox(width: 8,),
                                        Image.asset(
                                          "assets/images/minima_logo.png",
                                          width: 16,
                                          height: 16,
                                        ),
                                        const SizedBox(width: 6,),
                                        const Text('Easy Apply',
                                        style: TextStyle(fontWeight: FontWeight.w200))
                                      ],
                                    ),
                                    const Divider()
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhxhOwtI3TkbGrxuxgCr-0l1vXyW9x_6RfopdDcnlMaA&s",
                                fit: BoxFit.cover,
                                width: 50,
                                height: 50,
                              ),
                              const SizedBox(width: 16,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'Chef',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                          ),
                                        Spacer(),
                                        Icon(Icons.cancel)
                                      ],
                                    ),
                                    const Text('Topremit'),
                                    Text(
                                      'Greater Medan (On-site)',
                                      style: TextStyle(
                                        color: Theme.of(context).textTheme.displayMedium!.color
                                      )
                                    ),
                                    const SizedBox(height: 6,),
                                    Row(
                                      children: [
                                        ClipOval(
                                          child: Image.network(
                                            'https://thumb.viva.co.id/media/frontend/tokoh/2017/10/16/59e4500ae2296-andre-taulany3_216_287.jpg',
                                            fit: BoxFit.cover,
                                            width: 25,
                                            height: 25,
                                          ),
                                        ),
                                        const Text('  1 mutual connection with the hiring team',
                                        style: TextStyle(fontWeight: FontWeight.w200))
                                      ],
                                    ),
                                    const SizedBox(height: 6,),
                                    Row(
                                      children: [
                                        const Text('1 week ago',
                                        style: TextStyle(fontWeight: FontWeight.w200)),
                                        const SizedBox(width: 8,),
                                        const Text('•'),
                                        const SizedBox(width: 8,),
                                        Image.asset(
                                          "assets/images/minima_logo.png",
                                          width: 16,
                                          height: 16,
                                        ),
                                        const SizedBox(width: 6,),
                                        const Text('Easy Apply',
                                        style: TextStyle(fontWeight: FontWeight.w200))
                                      ],
                                    ),
                                    const Divider()
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                "https://d3g5ywftkpzr0e.cloudfront.net/wp-content/uploads/2023/04/12113212/FIT-HUB-Logo.png",
                                fit: BoxFit.cover,
                                width: 50,
                                height: 50,
                              ),
                              const SizedBox(width: 16,),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'Fitness Manager',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                          ),
                                        Spacer(),
                                        Icon(Icons.cancel)
                                      ],
                                    ),
                                    const Text('FIT HUB'),
                                    Text(
                                      'Jakarta, Indonesia (On-site)',
                                      style: TextStyle(
                                        color: Theme.of(context).textTheme.displayMedium!.color
                                      )
                                    ),
                                    const SizedBox(height: 6,),
                                    Row(
                                      children: [
                                        ClipOval(
                                          child: Image.network(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxCWIZ7DJcuvrs-ck07PxK4TZQiHLZB12fpwLvkPOdWw&s',
                                            fit: BoxFit.cover,
                                            width: 25,
                                            height: 25,
                                          ),
                                        ),
                                        const Text('  1 mutual connection with the hiring team',
                                        style: TextStyle(fontWeight: FontWeight.w200))
                                      ],
                                    ),
                                    const SizedBox(height: 6,),
                                    Row(
                                      children: [
                                        const Text('2 weeks ago',
                                        style: TextStyle(fontWeight: FontWeight.w200)),
                                        const SizedBox(width: 8,),
                                        const Text('•'),
                                        const SizedBox(width: 8,),
                                        Image.asset(
                                          "assets/images/minima_logo.png",
                                          width: 16,
                                          height: 16,
                                        ),
                                        const SizedBox(width: 6,),
                                        const Text('Easy Apply',
                                        style: TextStyle(fontWeight: FontWeight.w200))
                                      ],
                                    ),
                                    const Divider()
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      TextButton(
                        onPressed: () {
                          // Add your onPressed function here
                        },
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Show all "),
                            Icon(Icons.arrow_right_alt_sharp, size: 18),
                          ],
                        ),
                      ),


                    ]
                  ),
                ),

                const Divider(
                  height: 30,
                  thickness: 10,
                  color: Color.fromARGB(255, 244, 242, 238),
                ),     
                        
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: const Text('Top job picks for you', 
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
                  ),
                ),
                
                const Divider(
                  height: 30,
                  thickness: 10,
                  color: Color.fromARGB(255, 244, 242, 238),
                ),   

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                  child: Expanded(
                    child: Column(
                      children: [
                        Image.network('https://static.licdn.com/aero-v1/sc/h/e7ufxrklstvt6scuvejy6t4sx'),
                        const Text('Want more jobs?'),
                        const Text("Search for jobs and we'll server recommendations that match your criteria"),
                        const SizedBox(height: 32,),
                        TextButton(
                          onPressed: (){}, 
                          child: const Text(
                            'Search jobs'
                          )
                        )
                      ],
                    ),
                  ),
                ),
                
                const Divider(
                  thickness: 10,
                  color: Color.fromARGB(255, 244, 242, 238),
                ),   

            
              ],
            ),
          ),
        ),
        
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Drawer Header"),
              ),
              ListTile(
                leading: Image.network(
                    "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"),
                title: const Text("Home"),
                selected: true,
              )
            ],
          ),
        ),
      );

  }
}