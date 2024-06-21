import 'package:flutter/material.dart';
import 'package:flutter_test_freemo_app/widgets/notification_widget.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: Column(
        children: [
          // Section de la Home Page
          AmountSection(),
          SizedBox(height: 16,),
          PaymentSection(),
          SizedBox(height: 16,),
          NotificationSection(),
          NotificationWidget(
            photosFuture: getPhotos(),
          ),
        ],) ,)
    );
  }
}


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.menu_rounded, 
          color: Colors.grey[800],
          size: 25,
      ),
        onPressed: null,
      ),

      actions: [
        Text('Hi, Cabrel',
        style: GoogleFonts.nunito(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        ),
        SizedBox(width: 20,
        ),
        CircleAvatar(
          //backgroundImage: Image.asset(''),
          child:Image.asset('')
        ),
        SizedBox(width: 20,
        )
     ],
      titleSpacing: 40.0,
      backgroundColor: Colors.white,
    );
    }
}


class AmountSection extends StatelessWidget {
  const AmountSection({super.key});

  @override

  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children: [
        Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text('Total Savings',
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),

              ),
              SizedBox(
                height: 10,
              ),
              Text('XFA 145 000 125',
                style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),),
            ],
          ),
          margin: EdgeInsets.all(10),
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(15),),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3),
              )
            ]
          ),
        ),
      ],
    )
    );
  }

}


class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(10),
      height: 220,
      
      child: GridView(
        
        children: [
          Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.add_rounded, 
                  color: Colors.white,
                  size: 25,
              ),
                onPressed: null,
              ),
              SizedBox(
                height: 2,
              ),
              Text('Dépôt',
                style: GoogleFonts.oswald(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),),
            ],
          ),

          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.all(Radius.circular(15),),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3),
              )
            ]
          ),),
          Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.add_rounded, 
                  color: Colors.white,
                  size: 25,
                  weight: 20,
              ),
                onPressed: null,
              ),
              SizedBox(
                height: 2,
              ),
              Text('Paiement',
                style: GoogleFonts.oswald(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),),
            ],
          ),

          decoration: BoxDecoration(
            color: Colors.red.shade300,
            borderRadius: BorderRadius.all(Radius.circular(15),),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3),
              )
            ]
          ),),
          Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.add_rounded, 
                  color: Colors.white,
                  size: 25,
                  weight: 20,
              ),
                onPressed: null,
              ),
              SizedBox(
                height: 2,
              ),
              Text('Retrait',
                style: GoogleFonts.oswald(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),),
            ],
          ),

          decoration: BoxDecoration(
            color: Colors.blue.shade500,
            borderRadius: BorderRadius.all(Radius.circular(15),),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3),
              )
            ]
          ),),
          Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.add_rounded, 
                  color: Colors.white,
                  size: 25,
              ),
                onPressed: null,
              ),
              Text('Tontine',
                style: GoogleFonts.oswald(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
              ),
            ],
          ),

          decoration: BoxDecoration(
            color: Colors.yellow.shade500,
            borderRadius: BorderRadius.all(Radius.circular(15),),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3),
              )
            ]
          ),),
          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 5, childAspectRatio: 2, crossAxisSpacing: 5, ),
          
      ),
    );
  }
  
}


class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Actions à venir',
                  style: GoogleFonts.oswald(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}