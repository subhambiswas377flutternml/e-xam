import 'package:exam/util/barrel.dart';
import 'package:exam/screens/auth_page.dart';

class TypePage extends StatelessWidget
{
  final AuthType _authType = AuthType();
  TypePage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context)
  {
    MediaQueryData _info = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          // Orange Widget
          SizedBox(
            height: _info.size.height*0.6,
            width: _info.size.width,
            child: Stack(
              children: [
                Container(
                  height: _info.size.height*0.4,
                  width: _info.size.width,
                  decoration: const BoxDecoration(
                      color: KColors.themeColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                      )
                  ),
                ),

                // Image
                Positioned(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Assets.images.exam1.image(),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          // Faculty Buttons
          SizedBox(
            height: _info.size.height*0.07,
            width: _info.size.width*0.7,
            child: ElevatedButton(
              child: const Text("Faculty"),
              onPressed: (){
                _authType.currentAuthType = authPerson.faculty;
                Navigator.of(context).push(
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const AuthPage(),
                    )
                );
              },
              style: ElevatedButton.styleFrom(
                primary: KColors.themeColor,
                textStyle: TextStyle(
                  fontSize: _info.size.width*0.05,
                  fontWeight: FontWeight.w500,
                )
              ),
            ),
          ),
          SizedBox(height: _info.size.height*0.04,),
          // Student
          SizedBox(
            height: _info.size.height*0.07,
            width: _info.size.width*0.7,
            child: ElevatedButton(
              child: const Text("Student"),
              onPressed: (){
                _authType.currentAuthType = authPerson.faculty;
                Navigator.of(context).push(
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: const AuthPage(),
                  )
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: KColors.themeColor,
                  textStyle: TextStyle(
                    fontSize: _info.size.width*0.05,
                    fontWeight: FontWeight.w500,
                  )
              ),
            ),
          ),
          SizedBox(height: _info.size.height*0.07,),
        ],
      ),
    );
  }
}