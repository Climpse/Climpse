body: Column(
        children: <Widget>[
          Container(
            width: width,
            height: height,
            child: Text(
              "CLIMPSE.",
              textAlign: TextAlign.center,
              textScaleFactor: 4.0,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w900,
                fontSize: 18.0,
              ),
            ),
            margin: EdgeInsets.fromLTRB(0, 270, 0, 0),
          ),
          Container(
            margin: EdgeInsets.all(0),
            child: ElevatedButton(
              child: Text(
                'SignUp',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),