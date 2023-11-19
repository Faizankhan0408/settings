import 'package:flutter/material.dart';


class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  String selectedValue = 'Option 1';
  List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  String defaultReply="0";
  String hoverActions="1";
  String sendAndAchive="0";
  String images="1";
  String personalIndicator="1";
  String snippets="1";
  String contact="1";
  String grammar="1";
  String spelling="1";
  String autoCorrect="1";
  String suggestion="1";
  String personalisation="1";
  String conversation="1";
  String button="1";
  String keyboard="1";
  var controller=TextEditingController(text: "18-11-23");
  var subjectController=TextEditingController();

  List<String> items = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
           children: [
             //language
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Text("Language"),
                 SizedBox(width: 20,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Row(
                       children: [
                         SizedBox(height: 30,),
                         Text("Gmail display language:"),
                         SizedBox(width: 3,),
                         DropdownButton(
                           value: selectedValue,
                           items: options.map((String value) {
                             return DropdownMenuItem(
                               value: value,
                               child: Text(value),
                             );
                           }).toList(),
                           onChanged: (newValue) {
                             setState(() {
                               selectedValue = newValue!;
                             });
                           },
                         ),
                         Text("Change language settings for other Google products")
                       ],
                     ),
                     Text("Show all language options",style: TextStyle(color: Color(0xFF3055cc),fontWeight: FontWeight.w500),),
                   ],
                 ),
               ],
             ),
             // Divider
             Divider(),

             //phone number
             Row(
               children: [
                 Text("Phone number:",),
                 SizedBox(width: 30,),
                 Text("Default country code:"),
                 DropdownButton(
                   value: selectedValue,
                   items: options.map((String value) {
                     return DropdownMenuItem(
                       value: value,
                       child: Text(value),
                     );
                   }).toList(),
                   onChanged: (newValue) {
                     setState(() {
                       selectedValue = newValue!;
                     });
                   },
                 ),
               ],
             ),
             Divider(),

             // max page size
             Row(
               children: [
                 Text("Maximum page size:"),
                 SizedBox(width: 30,),
                 Text("Show"),
                 DropdownButton(
                   value: selectedValue,
                   items: options.map((String value) {
                     return DropdownMenuItem(
                       value: value,
                       child: Text(value),
                     );
                   }).toList(),
                   onChanged: (newValue) {
                     setState(() {
                       selectedValue = newValue!;
                     });
                   },
                 ),
                 Text("conversations per page"),
               ],
             ),
             Divider(),

             // undo send
             Row(
               children: [
                 Text("Undo Send:"),
                 SizedBox(width: 30,),
                 Text("Send cancellation period: "),
                 DropdownButton(
                   value: selectedValue,
                   items: options.map((String value) {
                     return DropdownMenuItem(
                       value: value,
                       child: Text(value),
                     );
                   }).toList(),
                   onChanged: (newValue) {
                     setState(() {
                       selectedValue = newValue!;
                     });
                   },
                 ),
                 Text("seconds"),
               ],
             ),
             Divider(),

             //default reply
             Row(
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Default reply behaviour:"),
                     SizedBox(height: 3,),
                     Text("Learn more",style: TextStyle(color: Color(0xFF3055cc)),),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: defaultReply, onChanged: (val){
                       setState(() {
                         defaultReply=val!;
                       });
                     }, child: Text("reply",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(
                       value: "2", groupValue: defaultReply, onChanged: (val){
                       setState(() {
                         defaultReply=val!;
                       });
                     }, child: Text("reply all",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),

             //Hover actions
             Row(
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text("Hover actions:"),
                     SizedBox(height: 3,),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     RadioMenuButton(value: "1", groupValue: hoverActions, onChanged: (val){
                       setState(() {
                         hoverActions=val!;
                       });
                     }, child: Text("Enable hover actions ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: hoverActions, onChanged: (val){
                       setState(() {
                         hoverActions=val!;
                       });
                     }, child: Text("Disable hover actions",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),

             // send and achieve
             //default reply
             Row(
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Send and Archive:"),
                     SizedBox(height: 3,),
                     Text("Learn more",style: TextStyle(color: Color(0xFF3055cc)),),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: sendAndAchive, onChanged: (val){
                       setState(() {
                         sendAndAchive=val!;
                       });
                     }, child: Text('Show "Send & Archive" button in reply',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15)),),
                     RadioMenuButton(
                         value: "2", groupValue: sendAndAchive, onChanged: (val){
                       setState(() {
                         sendAndAchive=val!;
                       });
                     }, child: Text('Hide "Send & Archive" button in reply',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),

             // default text style
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Default text style:"),
                     Text("(Use the 'Remove formatting' button on",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 11),),
                     Text("the toolbar to reset the default text style)",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 11),),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Card(
                   elevation: 3,
                   child: Container(
                     padding: EdgeInsets.all(10),
                     child: Column(
                       children: [
                         Row(
                           children: [
                             DropdownButton(
                               value: selectedValue,
                               items: options.map((String value) {
                                 return DropdownMenuItem(
                                   value: value,
                                   child: Text(value),
                                 );
                               }).toList(),
                               onChanged: (newValue) {
                                 setState(() {
                                   selectedValue = newValue!;
                                 });
                               },
                             ),
                             DropdownButton(
                               value: selectedValue,
                               items: options.map((String value) {
                                 return DropdownMenuItem(
                                   value: value,
                                   child: Text(value),
                                 );
                               }).toList(),
                               onChanged: (newValue) {
                                 setState(() {
                                   selectedValue = newValue!;
                                 });
                               },
                             ),
                             DropdownButton(
                               value: selectedValue,
                               items: options.map((String value) {
                                 return DropdownMenuItem(
                                   value: value,
                                   child: Text(value),
                                 );
                               }).toList(),
                               onChanged: (newValue) {
                                 setState(() {
                                   selectedValue = newValue!;
                                 });
                               },
                             ),
                             Card(elevation: 5,
                                 child: Text("T"))
                           ],
                         ),
                         Text("This is what your body text will look like.",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
             Divider(),

             // Images
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text("Images:"),
                     SizedBox(height: 3,),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: images, onChanged: (val){
                       setState(() {
                         images=val!;
                       });
                     }, child: Text("Ask before displaying external images",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: images, onChanged: (val){
                           setState(() {
                             images=val!;
                           });
                         }, child:Text("Ask before displaying external images",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),


             //dynamic email
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(children: [
                   Text("Dynamic mail:"),
                   Text("Learn more",style: TextStyle(color: Color(0xFF3055cc),fontSize: 13),),
                 ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Developer settings",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.normal),)
                   ],
                 )
               ],
             ),
             Divider(),
             // grammar
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text("Grammar:"),
                     SizedBox(height: 3,),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: grammar, onChanged: (val){
                       setState(() {
                         grammar=val!;
                       });
                     }, child: Text("Grammar suggestions on",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: grammar, onChanged: (val){
                           setState(() {
                             grammar=val!;
                           });
                         }, child:Text("Grammar suggestions off",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),
             //spelling
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text("Spelling:"),
                     SizedBox(height: 3,),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: spelling, onChanged: (val){
                       setState(() {
                         spelling=val!;
                       });
                     }, child: Text("Spelling suggestions on",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: spelling, onChanged: (val){
                           setState(() {
                             spelling=val!;
                           });
                         }, child:Text("Spelling suggestions off",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),

             // auto-correct
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text("Auto-correct:"),
                     SizedBox(height: 3,),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: autoCorrect, onChanged: (val){
                       setState(() {
                         autoCorrect=val!;
                       });
                     }, child: Text("Auto-correct on",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: autoCorrect, onChanged: (val){
                           setState(() {
                             autoCorrect=val!;
                           });
                         }, child:Text("Auto-correct off",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),

             //smart compose
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Smart Compose:"),
                     SizedBox(height: 1,),
                     Text("(predictive writing suggestions appear",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 11),),
                     Text("as you compose an email)",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 11),),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: suggestion, onChanged: (val){
                       setState(() {
                         suggestion=val!;
                       });
                     }, child: Text("Writing suggestions on",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: suggestion, onChanged: (val){
                           setState(() {
                             suggestion=val!;
                           });
                         }, child:Text("Writing suggestions off",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),
             //smart compose personalisation
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Smart Compose"),
                     Text("personalisation:"),
                     SizedBox(height: 1,),
                     Text("(sets whether emails of the same topic",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 11),),
                     Text("are grouped together)",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 11),),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: personalisation, onChanged: (val){
                       setState(() {
                         personalisation=val!;
                       });
                     }, child: Text("Personalisation on",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: personalisation, onChanged: (val){
                           setState(() {
                             personalisation=val!;
                           });
                         }, child:Text("Personalisation off",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),
             //conversation view
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text("Conversation view:"),
                     SizedBox(height: 1,),
                     Text("(sets whether emails of the same topic",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 11),),
                     Text("sets whether emails of the same topic are grouped together)",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 11),),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: conversation, onChanged: (val){
                       setState(() {
                         conversation=val!;
                       });
                     }, child: Text("Conversation view on",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: conversation, onChanged: (val){
                           setState(() {
                             conversation=val!;
                           });
                         }, child:Text("Conversation view off",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),
             //Nudges

             //smart reply
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text("Smart Compose:"),
                     SizedBox(height: 1,),
                     Text("(predictive writing suggestions appear",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 11),),
                     Text("as you compose an email)",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 11),),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: suggestion, onChanged: (val){
                       setState(() {
                         suggestion=val!;
                       });
                     }, child: Text("Writing suggestions on",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: suggestion, onChanged: (val){
                           setState(() {
                             suggestion=val!;
                           });
                         }, child:Text("Writing suggestions off",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),
             //Smart features and personalisation

             //Smart features and personalisation in other Google products

             //package tracking

             //desktop notification

             //stars
             Row(
               children: [
                 Text("Stars"),
                 SizedBox(width: 50,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Drag the stars between the lists.The stars will rotate in the order shown below when you click successively. To learn the name of a star for search, hover your mouse over the image.",overflow: TextOverflow.visible,),
                      SizedBox(height: 4,),
                     Row(),
                     SizedBox(height: 4,),
                     Row(
                       children: [
                         Text("In use:"),
                         SizedBox(width: 20,),
                         Icon(Icons.star,color: Colors.yellow,)
                       ],
                     ),
                     Row(
                       children: [
                         Text("Not in use:"),
                         SizedBox(width: 10,),
                         Row(
                           children: [
                             Icon(Icons.star),
                             Icon(Icons.star,color:Colors.blue),
                             Icon(Icons.star,color:Colors.red),
                             Icon(Icons.star,color:Colors.green),
                             Icon(Icons.star,color:Colors.cyan),
                           ],
                         )
                       ],
                     ),

                   ],
                 )
               ],
             ),
             Divider(),

             //keyboard shortcuts
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text("Keyboard Shortcut:"),
                     SizedBox(height: 1,),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: keyboard, onChanged: (val){
                       setState(() {
                         keyboard=val!;
                       });
                     }, child: Text("Keyboard shortcut on",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: keyboard, onChanged: (val){
                           setState(() {
                             keyboard=val!;
                           });
                         }, child:Text("Keyboard shortcut on",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),

             //button labels
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text("Button labels::"),
                     SizedBox(height: 1,),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: button, onChanged: (val){
                       setState(() {
                         button=val!;
                       });
                     }, child: Text("Icons",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: button, onChanged: (val){
                           setState(() {
                             button=val!;
                           });
                         }, child:Text("Text",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),

             // my picture

             //create contacts
             Row(
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text("Create contacts for auto-complete:"),
                     SizedBox(height: 3,),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: contact, onChanged: (val){
                       setState(() {
                         contact=val!;
                       });
                     }, child: Text("When I send a message to a new person, add them to Other Contacts so that I can auto-complete to them next time",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: contact, onChanged: (val){
                           setState(() {
                             contact=val!;
                           });
                         }, child: Text("I'll add contacts myself",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),

             // important ads
              Row(
                children: [
                  Text("Importance signals for ads:"),
                  SizedBox(width: 30,),
                  Text("	You can view and change your preferences here.",style: TextStyle(fontWeight: FontWeight.normal),)
                ],
              ),
             //Signature



             //personal indicator
             Row(
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text("Personal level indicators:"),
                     SizedBox(height: 3,),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     RadioMenuButton(value: "1", groupValue: personalIndicator, onChanged: (val){
                       setState(() {
                         personalIndicator=val!;
                       });
                     }, child: Text("No indicators ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: personalIndicator, onChanged: (val){
                           setState(() {
                             personalIndicator=val!;
                           });
                         }, child: Text("Show indicators",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),

             //snippets
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text("Snippets:"),
                     SizedBox(height: 3,),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     RadioMenuButton(value: "1", groupValue: snippets, onChanged: (val){
                       setState(() {
                         snippets=val!;
                       });
                     }, child: Text("Show snippets ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: snippets, onChanged: (val){
                           setState(() {
                             snippets=val!;
                           });
                         }, child: Text("No snippets",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                   ],
                 ),
               ],
             ),
             Divider(),
             // out of office
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text("Out-of-Office AutoReply:"),
                     SizedBox(height: 1,),
                     Text("(sends an automated reply to incoming messages",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 11),),
                     Text(" If a contact sends you several messages)",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 11),),
                   ],
                 ),
                 SizedBox(width: 30,),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     RadioMenuButton(value: "1", groupValue: suggestion, onChanged: (val){
                       setState(() {
                         suggestion=val!;
                       });
                     }, child: Text("Out of Office AutoReply off",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                     RadioMenuButton(style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blue), ),
                         value: "2", groupValue: suggestion, onChanged: (val){
                           setState(() {
                             suggestion=val!;
                           });
                         }, child:Text("Out of Office AutoReply on",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15))),
                      SizedBox(height: 3,),
                      Row(
                        children: [
                          Text("First day:"),
                          SizedBox(width: 10,),
                          Container(
                            width: 200,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.grey[200],
                            ),
                            child: TextField(
                              controller: controller,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(15.0),
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                     SizedBox(height: 14,),
                     Row(
                       children: [
                         Text("Subject:"),
                         SizedBox(width: 10,),
                         Container(
                           width: 300,
                           height: 30,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(4.0),
                             color: Colors.grey[200],
                           ),
                           child: TextField(
                             controller: subjectController,
                             textAlignVertical: TextAlignVertical.center,
                             decoration: InputDecoration(
                               contentPadding: EdgeInsets.all(15.0),
                               border: InputBorder.none,
                             ),
                           ),
                         )
                       ],
                     ),
                     SizedBox(height: 14,),
                     Row(
                       children: [
                         Text("Message:"),
                         SizedBox(width: 10,),
                        Row(
                          children: [
                            DropdownButton(
                              value: selectedValue,
                              items: options.map((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                            ),
                            DropdownButton(
                              value: selectedValue,
                              items: options.map((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                            ),
                            Card(
                              shape: RoundedRectangleBorder(),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Center(child: Text("B",style: TextStyle(fontWeight: FontWeight.bold),))),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Center(child: Text("I",style: TextStyle(fontWeight: FontWeight.bold),))),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Center(child: Text("U",style: TextStyle(fontWeight: FontWeight.bold),))),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Center(child: Text("A",style: TextStyle(fontWeight: FontWeight.bold),))),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Center(child: Icon(Icons.link))),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Center(child: Icon(Icons.image))),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Center(child: Icon(Icons.line_weight_sharp))),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Center(child: Icon(Icons.line_style_sharp))),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(),
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Center(child: Icon(Icons.format_quote))),
                            ),
                          ],
                        ),
                         SizedBox(height: 10,),
                       ],
                     ),
                     Container(
                       width: 600.0,
                       height: 300.0,
                       decoration: BoxDecoration(
                         border: Border.all(color: Colors.black),
                         borderRadius: BorderRadius.circular(10.0),
                       ),
                       child: TextField(
                         controller: TextEditingController(),
                         decoration: InputDecoration(
                           hintText: 'Enter text',
                           border: InputBorder.none,
                           contentPadding: EdgeInsets.all(16.0),
                         ),
                       ),
                     )
                   ],
                 ),
               ],
             ),

             SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 // checkBox
                  Text("checkbox"),
                 Text("Only send a response to people in my Contacts"),
               ],
             ),
             Divider(),

             // buttons
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Card(
                   shape: RoundedRectangleBorder(),
                   child: Container(
                     padding: EdgeInsets.all(2),
                     height: 30,
                       child: Center(child: Text("Save changes"))),
                 ),
                 SizedBox(width: 10,),
                 Card(
                   shape: RoundedRectangleBorder(),
                   child: Container(
                       padding: EdgeInsets.all(2),
                       height: 30,
                       child: Center(child: Text("cancel"))),
                 ),
               ],
             )
           ],
          ),
        ),
      ),
    );

  }
}
