import 'package:exam/util/barrel.dart';

class AuthPage extends StatelessWidget
{
  const AuthPage({Key? key,
  }):super(key: key);

  @override
  Widget build(BuildContext context)
  {
  MediaQueryData _info = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          // Custom AppBar
          Container(
            height: _info.size.height*0.14,
            width: _info.size.width,
            color: KColors.themeColor,
            child: Stack(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: (){Navigator.of(context).pop();},
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),

          SizedBox(height: _info.size.height*0.05,),

          // Enrollment No
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _info.size.width*0.03),
            child: TextFormField(
              style: TextStyle(
                fontSize: _info.size.width*0.05,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                labelText: "Enrollment No",

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 3,
                    color: KColors.themeColor,
                  )
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 3,
                      color: KColors.themeColor,
                    )
                )
              ),
            ),
          ),

          SizedBox(height: _info.size.height*0.05,),

          // Password
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _info.size.width*0.03),
            child: TextFormField(
              style: TextStyle(
                fontSize: _info.size.width*0.05,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                  labelText: "Password",

                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 3,
                        color: KColors.themeColor,
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 3,
                        color: KColors.themeColor,
                      )
                  )
              ),
            ),
          ),
          const Spacer(),
          // Sign up /  Login Button
          SizedBox(
            height: _info.size.height*0.07,
            width: _info.size.width*0.5,
            child: ElevatedButton(
              child: const Text("Lets Go"),
              onPressed: (){
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                  primary: KColors.themeColor,
                  textStyle: TextStyle(
                    fontSize: _info.size.width*0.05,
                    fontWeight: FontWeight.w500,
                  )
              ),
            ),
          ),
          SizedBox(height: _info.size.height*0.1,),
        ],
      ),
    );
  }
}