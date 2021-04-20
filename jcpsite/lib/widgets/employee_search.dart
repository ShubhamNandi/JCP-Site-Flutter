import 'package:flutter/material.dart';

class EmployeeSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF7F7F7),
      child: Column(
        children: <Widget>[
          Search(),
          SiteListTile(
              address: "15 Carr Lane, Grimsby, North East Lincolnshire",
              isSelected: true),
          SiteListTile(
              address:
                  "Convamore Road Development, Grimsby, North East Lincolnshire",
              isSelected: false),
          SiteListTile(address: "Convamore Road,\n Grimsby", isSelected: false),
        ],
      ),
    );
  }
}

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 13.0,
        horizontal: 13,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(41),
                ),
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
              ),
            ),
            flex: 7,
          ),
          Expanded(
            child: Container(
              child: Image.asset('lib/assets/images/circular_add.png'),
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}

class SiteListTile extends StatelessWidget {
  final String address;
  final bool isSelected;
  SiteListTile({required this.address, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      color: isSelected ? Color(0xffEAEAEA) : Colors.transparent,
      child: Row(
        children: [
          if (isSelected)
            Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                  ),
                )),
          Expanded(
            flex: 30,
            child: ListTile(
              selectedTileColor: Color(0xffEAEAEA),
              selected: isSelected,
              title: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Text(
                      address,
                      style: TextStyle(
                        fontSize: isSelected ? 18 : 16,
                        fontWeight:
                            isSelected ? FontWeight.w600 : FontWeight.w400,
                      ),
                    ),
                  ),
                  if (isSelected)
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              'lib/assets/images/edit.png',
                              height: 25,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            child: Image.asset(
                              'lib/assets/images/circular_close.png',
                              height: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (!isSelected)
                    Container(
                      child: Image.asset(
                        'lib/assets/images/circular_close.png',
                        height: 25,
                        color: Color(0xff747474),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
