import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Location extends StatefulWidget {
  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<WorldTime> locations = [
    WorldTime(
        url: 'Asia/Ho_Chi_Minh', location: 'VietNam', flag: 'vietnam.png'),
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'berlin.png'),
    WorldTime(url: 'Europe/Brussels', location: 'Brussels', flag: 'brussels.png'),
    WorldTime(url: 'Europe/Moscow', location: 'Moscow', flag: 'moscow.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    WorldTime(url: 'Asia/Hong_Kong', location: 'Hong Kong', flag: 'hongkong.png'),
    WorldTime(url: 'Asia/Dubai', location: 'Dubai', flag: 'dubai.png'),
    WorldTime(url: 'Asia/Macau', location: 'Macau', flag: 'macau.png'),
    WorldTime(url: 'Australia/Sydney', location: 'Sydney', flag: 'sydney.png'),
    WorldTime(url: 'Indian/Christmas', location: 'Christmas', flag: 'christmas.png'),
    WorldTime(url: 'Indian/Chagos', location: 'Chagos', flag: 'chagos.png'),
    WorldTime(url: 'Pacific/Palau', location: 'Palau', flag: 'palau.png'),
    WorldTime(url: 'Pacific/Tahiti', location: 'Tahiti', flag: 'tahiti.png'),
  ];
  @override
  Widget build(BuildContext context) {
    void updateTime(index) async {
      WorldTime worldTime = locations[index];
      await worldTime.getTime();
      Navigator.pop(context, {
        'country': worldTime,
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Choose a location')),
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: locations.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 3.0),
                child: Card(
                    child: ListTile(
                        onTap: () {
                          updateTime(index);
                        },
                        title: Text(locations[index].location),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/${locations[index].flag}'),
                        ))),
              );
            })));
  }
}
