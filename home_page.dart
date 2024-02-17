import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Demo'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(22.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Explore the restaurant's delicious menu items below!",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: ListView(
                children: [
                  _buildListItem('assets/hamburger.png', 'Burguer'),
                  _buildListItem('assets/hot-dog-2.png', 'Hot dog'),
                  _buildListItem('assets/french-fries.png', 'Fries'),
                  _buildListItem('assets/soda.png', 'Soda'),
                  _buildListItem('assets/ice-cream.png', 'Ice Cream'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  child: Text("Pickup"),
                  color: Color.fromARGB(255, 222, 213, 213),
                  onPressed: () {
                    _mostrarDialogAlert(context, "Pickup");
                  },
                ),
                Column(
                  children: [
                    SizedBox(
                        height:
                            10), // Ajusta el espacio entre los botones y la línea
                    Container(
                      width: 5.0,
                      height: 40.0,
                      color: Color.fromARGB(255, 222, 213, 213),
                    ),
                    SizedBox(
                        height:
                            10), // Ajusta el espacio entre la línea y el segundo botón
                  ],
                ),
                MaterialButton(
                  child: Text("Delivery"),
                  color: Color.fromARGB(255, 222, 213, 213),
                  onPressed: () {
                    _mostrarDialogAlert(context, "Delivery");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(String imageUrl, String title) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 26.0),
      leading: Image.asset(
        imageUrl,
        width: 30,
        height: 30,
        fit: BoxFit.cover,
      ),
      title: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      onTap: () {},
    );
  }

  void _mostrarDialogAlert(BuildContext context, String boton) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Button pressed'),
          content: Text('You pressed the button: $boton'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close the tab'),
            ),
          ],
        );
      },
    );
  }
}
