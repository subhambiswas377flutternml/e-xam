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
      body: Column(
        children: [
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
        ],
      ),
    );
  }
}