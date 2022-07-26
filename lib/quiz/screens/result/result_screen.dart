import 'package:capi/quiz/controllers/question_controller.dart';
import 'package:capi/quiz/models/Job.dart';
import 'package:capi/quiz/screens/result/job_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



TextStyle result =TextStyle(
    fontSize: 25,
    color: Colors.black,fontWeight: FontWeight.bold,
    fontFamily: 'Comfort');

TextStyle result2 =TextStyle(
    fontSize: 13,
    color: Colors.black,
    fontFamily: 'Comfort');


class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  List<JobModel> jobList = [


    JobModel(
        image: 'assets/quiz/network.jpg',
        name: 'Network Administrator',
        description: '''
1-Responsibilities:\n\n•Designing and implementing new network solutions and/or improving the efficiency of current networks. \n\n•Installing, configuring and supporting network equipment including routers, proxy servers, switches, WAN accelerators, DNS and DHCP.\n\n•Procuring network equipment and managing subcontractors involved with network installation.\n\n•Configuring firewalls, routing and switching to maximize network efficiency and security \n\n•Arranging scheduled upgrades\n\n•Investigating faults in the network and reporting network status to key stakeholders\n\n•Secure network systems by establishing and enforcing policies, and defining and monitoring access\n\n•Upgrade network equipment to the latest stable firmware releases\n\n•Provide remote support to on-site engineers and end users/customers during installation\n\n•Provide remote troubleshooting and fault finding if issues occur upon initial installation.\n\n2-Skill-Set:\n\n•Bachelor degree in information technology related field of study with a network engineering focus\n\n•Cisco certifications, CCNA, CCNP\n\n•Strong understanding of network infrastructure and network hardware.\n\n•Ability to implement, administer, and troubleshoot network infrastructure devices, including wireless access points, firewall, routers, switches, controllers.\n\n•Ability to create accurate network diagrams and documentation for design and planning network communication systems.\n\n•Analytical, data driven problem solver\n\n•Excellent communication skills, particularly the ability to communicate with staff who are not technically trained.\n\n•Teamwork skills and the ability to feel comfortable working with different teams, clients and groups of staff across an organization.\n\n3-Salary:\n\nThe average salary is 87,248\$ in the United States.'''
    )
    ,

    JobModel(
        image: 'assets/quiz/web.jpg',
        name: 'Web Developer',
        description:
        "1-Responsibilities:\n\n• Website and software application designing, building, or maintaining.\n\n •Using scripting or authoring languages, management tools, content creation tools, applications, and digital media.\n\n •Conferring with teams to resolve conflicts, prioritize needs, develop content criteria, or choose solutions.\n• Directing or performing Website updates.\n• Developing or validating test routines and schedules to ensure that test cases mimic external interfaces and address all browser and device types.\n\n •Identifying problems uncovered by customer feedback and testing, and correcting or referring problems to appropriate personnel for correction.\n• Determining user needs by analyzing technical requirements.\n\n2-Skill-Set:\n\n• Bachelor's degree in Web development or related field, or relevant experience.\n\n •Proficient in JavaScript, HTML, CSS , programming language and My SQL.\n\n •Ability to thrive in a fast-paced environment.\n\n •Solid ability in both written and verbal communication.\n\n •Able to develop ideas and processes and clearly express them.\n\n •High degree of independent judgment.\n\n •Able to solve complex problems.\n\n3-Salary:\n\nAverage salary for a Web Developer is \$70,863 in United State."

    ),

    JobModel(
        image: 'assets/quiz/UX.jpg',
        name: 'UX Designer',
        description:
        '1-Responsibilities\n\n •Plan and conduct user research and competitor analysis.\n\n •Interpret data and qualitative feedback.\n\n •Create user stories, personas, and storyboards.\n\n •Determine information architecture and create sitemaps.\n\n •Create prototypes and wireframes.\n\n •Conduct usability testing.\n\n\2-nSkill-Set:\n\n •Prototyping, wire framing, user flows, mockups\n\n •Visual design and design software\n\n •User research and usability testing\n\n •Application development\n\n •Collaboration.\n\n •Communication and presentation\n\n •Prioritization and time management\n\n\3-nSalary:\n\nThe average salary is \$97,045 in the United States.'
    )
    ,
    JobModel(
        image: 'assets/quiz/mobile.jpg',
        name: 'Mobile Developer',
        description:
        '1-Responsibilities\n\n •Support the entire application lifecycle (concept, design, test, release and support)\n\n •Produce fully functional mobile applications writing clean code\n\n •Gather specific requirements and suggest solutions\n\n •Troubleshoot and debug to optimize performance\n\n •Design interfaces to improve user experience\n\n •Liaise with Product development team to plan new features\n• Ensure new and legacy applications meet quality standards\n• Research and suggest new mobile products, applications and protocols\n• Stay up-to-date with new technology trends\n\n2-Skill-Set:\n\n• BSc degree in Computer Science or relevant field\n\n •In-depth knowledge of at least one programming language like Swift and Java\n\n •Experience with third-party libraries and APIs\n\n •Familiarity with OOP design principles .\n\n •Excellent analytical skills with a good problem-solving attitude\n\n •Ability to perform in a team environment\n\n •Strong oral and written communication skills\n\n •Ability to interpret and follow technical plans.\n\n3-Salary:\n\nThe average is \$97,217 in the United State.')
    ,
    JobModel(
        image: 'assets/quiz/test.png',
        name: 'Software Test Engineer',
        description:
        '1-Responsibilities\n\n •Gather product requirements (e.g. functionalities, speed, safety standards)\n\n •Inspect raw materials and machinery to identify defects and malfunctions\n\n•Monitor all production stages to ensure safety procedures are followed\n\n •Run quality controls on components and final products\n\n •Develop test environments and test cases for all mechanical and electrical systems\n\n •Analyze test results, detect issues and track root causes\n\n •Suggest fixes and improvements\n\n •Document technical issues and solutions\n\n •Build automated testing systems for regular checks\n\n •Ensure our products and procedures meet industry standards (e.g. ISO).\n\n2-Skill-Set:\n\n •Previous experience as a Test Engineer or similar role\n\n •Familiarity with various testing techniques\n\n •Hands-on experience with Quality Management Systems (QMS)\n\n •Knowledge of quality standards and regulations\n\n •Great troubleshooting skills\n\n •Analytical mindset\n\n •BSc in Mechanical Engineering, Industrial Engineering or relevant field.\n\n •Additional certification in Quality Assurance is a plus.\n\n3-Salary:\n\nThe average salary is \$84,456 in the United States.')
    ,
    JobModel(
        image: 'assets/quiz/GraphicDesigner.jpg',
        name: 'Graphic Designer',
        description:
        "1-Responsibilities\n\n •Study design briefs and determine requirements\n\n •Schedule projects and define budget constraints\n\n •Conceptualize visuals based on requirements\n\n •Prepare rough drafts and present ideas\n\n •Develop illustrations, logos and other designs using software or by hand\n\n •Use the appropriate colors and layouts for each graphic\n\n •Work with copywriters and creative director to produce final design\n\n •Test graphics across various media\n•\n Amend designs after feedback\n\n •Ensure final graphics and layouts are visually appealing and on-brand.\n\n2-Skill-Set:\n\n •Proven graphic designing experience\n\n •A strong portfolio of illustrations or other graphics\n\n •Familiarity with design software and technologies (such as InDesign, Illustrator, Dreamweaver, Photoshop)\n\n •A keen eye for aesthetics and details\n\n •Excellent communication skills\n\n •Ability to work methodically and meet deadlines\n\n •Degree in Design, Fine Arts or related field is a plus.\n\n3-Salary:\n\n •The average salary is \$58,956 in the United States.")
    ,
    JobModel(
        image: 'assets/quiz/GameDev.jpg' ,
        name: 'Game Developer',
        description:
        '1-Responsibilities\n\n •Translate requirements into complicated but clean and efficient code\n\n •Construct the base or the engine on which the game will run\n\n •Produce prototypes of gameplay ideas and features\n\n •Develop schedules and determine milestones\n\n •Generate game scripts and storyboards\n\n •Animate characters and objects\n\n •Contribute to the design and audio features of the game\n\n •Create unit tests and validation procedures to assure quality\n\n •Detect identification and resolution and document technical specifications\n\n •“Polish” the game, maintain code, fix bugs and iron out occurring problems.\n\n2-Skill-Set:\n\n •Proven working experience in full lifecycle game development\n\n •Hands on experience primarily with C++ or other programming languages (Java, C, etc)\n\n •High level knowledge of APIs and libraries\n\n •Expert in one or more programming specialties (artificial intelligence, 3D Rendering, 3D animation, physics, multiplayer/networking, or audio)\n\n •Up-to-date with the latest gaming trends, techniques, best practices and technologies\n\n •Work and collaborate well with others\n\n •Strong social and communicative skills .\n\n3-Salary:\n\n The average salary is \$101,644 in the United States.')
    ,
    JobModel(
        image: 'assets/quiz/Embedded.jpg' ,
        name: 'Embedded Systems',
        description:
        '1-Responsibilities\n\n •Design and implement software of embedded devices and systems from requirements to production and commercial deployment\n\n •Design, develop, code, test and debug system software\n\n •Review code and design\n\n •Analyze and enhance efficiency, stability and Scalability of system resources\n\n •Integrate and validate new product designs\n\n •Support software QA and optimize l/O performance\n\n •Provide post production support\n\n •Interface with hardware design and development\n\n •Assess third party and open-source software .\n\n2-Skill-Set:\n\n •Proven working experience in software engineering\n\n •BS degree in Computer Science or Engineering\n\n •Experience in hands-on development and troubleshooting on embedded targets\n\n •Solid programming experience in C or C++\n\n •Proven experience in embedded systems design with preemptive, multitasking realtime operating systems\n\n •Familiarity with software configuration management tools, defect tracking tools, and peer review\n\n •Excellent knowledge of OS coding techniques, IP protocols, interfaces and hardware subsystems\n\n •Adequate knowledge of reading schematics and data sheets for components\n\n •Strong documentation and writing skills\n\n •Work and collaborate well with others\n\n •Strong communication skills\n\n •Strong analytical and problem-solving skills .\n\n3-Salary:\n\n Average salary is \$90,854 in United States.')
    ,
    JobModel(
        image: 'assets/quiz/Cloud.jpg' ,
        name: 'Cloud Engineer' ,
        description:
        '1-Responsibilities:\n\n •Collaborating with engineering and development teams to evaluate and identify optimal cloud solutions.\n\n •Modifying and improving existing systems.\n\n •Educating teams on the implementation of new cloud technologies and initiatives.\n\n •Designing, developing and deploying modular cloud-based systems.\n\n •Developing and maintaining cloud solutions in accordance with best practices.\n\n •Ensuring efficient functioning of data storage and processing functions in accordance with company security policies and best practices in cloud security.\n\n •Identifying, analyzing, and resolving infrastructure vulnerabilities and application deployment issues.\n\n •Regularly reviewing existing systems and making recommendations for improvements.\n\n •Identifying, analyzing, and resolving infrastructure vulnerabilities and application deployment issues.\n\n •Regularly reviewing existing systems and making recommendations for improvements.\n\n •Interacting with clients, providing cloud support, and making recommendations based on client needs.\n\n2-Skill-Set:\n\n •Degree in computer science or a similar field.\n\n •At least 3 years of experience in the field of cloud computing.\n\n •Experience with CI/CD systems and System Operations .\n\n •Troubleshooting and analytical skills.\n\n •Good communication and collaboration skills.\n\n •Client management skills\n\n3-Salary:\n\n Average salary is \$118,356 in United States.')
    ,
    JobModel(
        image: 'assets/quiz/Control.jpg' ,
        name: 'Control Engineer',
        description:
        '1-Responsibilities\n\n• Development and construction of controls\n\n •Research, design, and management of control systems\n\n •Definition of control algorithms and selection of tools\n\n •Purchasing and overseeing installation of ICT equipment\n\n •Development of hardware and software for control equipment\n\n •Control and maintenance of existing controls\n\n •Develop, write, and optimize PLC, HMI, Vision and Robot programs\n\n •Ensuring that the process works safely and efficiently in accordance with specifications\n\n •Develops knowledge about the client’s business and its needs.\n\n •Develop software that meets customer needs or solves a particular problem.\n\n •Construction and implementation of system architectures in industrial automation.\n\n •Leading teams of workers, including other engineers and technicians .\n\n2-Skill-Set:\n\n •Technical ability and knowledge of mathematics, science, and technology\n\n •Software skills such as MATLAB, HMI, Simulink, and PCI\n\n •Knowledge of electrical theory, control components, robotics, and automation\n\n •Ability to calibrate controls, communications, and diagnostics as needed\n\n •Application of modern control theory to an autonomous system\n\n •Ability to identify, maintain, and utilize SCADA systems and KPIs\n\n •Knowledge of state estimators\n\n •Stay up-to-date on technological advancements .\n\n •Organizational ability to coordinate resources\n\n •Strong organizational capabilities and ability to stay calm under pressure\n\n •Ability to react quickly and problem solve.\n\n •Keen sensibility and strong research skills\n\n •Ability to work in a team and closely with other professionals.\n\n 3-Salary:\n\n The average salary is \$78,531 in the United States.')
    ,

    JobModel(
        image: 'assets/quiz/DataBase.jpg' ,
        name: 'DataBase Administrator',
        description:
        "1-Responsibilities\n\n •Build database systems of high availability and quality depending on each end user’s role .\n\n •Design and implement database in accordance to end users information needs and views\n\n •Define users and enable data distribution to the right user, in appropriate format and in a timely manner\n\n •Use high-speed transaction recovery techniques and backup data\n\n •Minimize database downtime and manage parameters to provide fast query responses\n\n •Provide proactive and reactive data management support and training to users\n\n •Determine, enforce and document database policies, procedures and standards\n\n •Perform tests and evaluations regularly to ensure data security, privacy and integrity\n\n •Monitor database performance, implement changes and apply new patches and versions when required\n\n2-Skill-Set:\n\n •Proven working experience as a Database Administrator\n\n •Hands-on experience with database standards and end user applications\n\n •Excellent knowledge of data backup, recovery, security, integrity and SQL\n\n •Familiarity with database design, documentation and coding\n\n •Previous experience with DBA case tools (frontend/backend) and third-party tools\n\n •Problem solving skills and ability to think algorithmically\n\n •Excellent communication skills, particularly the ability to communicate with colleagues, managers, customers and developers\n\n3-Salary:\n\n The average salary is \$73,576 in the United States.")
    ,

    JobModel(
        image: 'assets/quiz/security.jpg' ,
        name: 'Cyber Security Engineer',
        description:
        "1-Responsibilities\n\n •Planning, implementing, managing, monitoring and upgrading security measures for the protection of the organization’s data, systems and networks\n\n •Troubleshooting security and network problems\n\n •Responding to all system and/or network security breaches\n\n •Ensuring that the organization’s data and infrastructure are protected by enabling the appropriate security controls\n\n •Participating in the change management process\n\n •Testing and identifying network and system vulnerabilities\n\n •Daily administrative tasks, reporting and communication with the relevant departments in the organization.\n\n2-Skill-Set:\n\n •Foundational Coding: C++, Python, PHP/Hack, Go lang, and Java\n\n •Data science\n\n •Data structures\n\n •System design and software architecture\n\n •Web application and browser security\n\n •Network protocols\n\n •Security assessment\n\n •Security protocols\n\n •Penetration testing\n\n •Authentication and access control\n\n •Applied cryptography\n\n •Incident response and forensics\n\n •Binary analysis\n\n •Project management\n\n •Team management.\n\n3-Salary:\n\n The average salary is \$72,035 in the United States.")
    ,
    JobModel(
        image: 'assets/quiz/Ai.jpg' ,
        name: 'AI Engineer' ,
        description:
        '1-Responsibilities\n\n •Computer Science\n\n •Mathematics\n\n •Information Technology\n\n •Statistics\n\n •Finance\n\n •Economics\n\n •Data Science\n\n2-Skill-Set:\n\n •Cognitive Science\n\n •Programming Languages\n\n •Statistical Knowledge\n\n •Applied Maths and Algorithms\n\n •Natural Language Processing\n\n •Deep Learning and Neural Networks.\n\n •Collaboration.\n\n •Communication and presentation\n\n •Prioritization and time management\n\n3-Salary:\n\n •The average salary is \$119,297 in the United States.')
    ,
    JobModel(
        image: 'assets/quiz/iot.jpg' ,
        name: 'IOT Engineer' ,
        description:
        '1-Responsibilities \n\n •Creating and developing devices, sensors and software \n\n •Researching, creating, testing and documenting IoT solutions\n\n •Designing, coding and testing features of IoT devices\n\n •Providing solutions to issues related to the connection of networks and platforms\n\n •Analyzing user needs and working as service designers\n\n •Developing software that monitors and executes processes\n\n •Designing platform solutions that are cloud-compatible and work with IoT applications\n\n •Developing software that allows IoT devices to function and connect to other devices.\n\n2-Skill-Set:\n\n Deep understanding of computer programming and network security\n\n •Proficient knowledge of sensors\n\n •Knowledge of machine learning and AI\n\n •Experience working with front-end and back-end systems\n\n •Knowledge of software like Netbeast, Neura, OpenSensors and Node\n\n •Expert knowledge of Linux OS\n\n •Well-versed with multiple programming languages such as Embedded-C, Embedded C++, JavaScript and Python\n\n •Familiarity with Big Data and machine learning algorithms\n\n •Firm understanding of IoT architecture and principles\n\n •Knowledge of device and data security\n\n •Work and collaborate well with others\n\n •Strong analytical and problem-solving skills.\n\n3-Salary:\n\n The average salary is \$131,617 in the United States.')
    ,


  ];

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    double width =15;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Color(0xFFF2F3F8),

        title: Text('Result',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontFamily: 'Comfort')),
      ),
      extendBodyBehindAppBar: false,
      backgroundColor: Color(0xFFF2F3F8),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(width: width,),
                Text('You Are',style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Comfort'),),
              ],
            ),
            SizedBox(height: 10,),

            SizedBox(height: 1,),
            if (_qnController.results <= 40)
              Text("ESTJ - The Supervisor",
                  style: result),
            if (_qnController.results <= 40)
              Text("Extraverted Sensing Thinking Judging",
                  style: result2),

            if (_qnController.results >= 60)
              Text("INFP - The Idealist",
                  style: result),
            if (_qnController.results >= 60)
              Text("Introverted iNtuitive Feeling Perceiving ",
                  style: result2),

            if (_qnController.results > 40 && _qnController.results < 60)
              Text("ENFJ - The Giver",
                  style: result),
            if (_qnController.results > 40 && _qnController.results < 60)
              Text("Extraverted iNtuitive Feeling Judging",
                  style: result2),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: width,),
                Text('Your Top Careers',
                    style: TextStyle(
                        fontSize: 20, color: Colors.black54, fontFamily: 'Comfort')),
              ],
            ),
            SizedBox(height: 10,),

            if (_qnController.results <= 40)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: width,),
                    JobWidget(jobList[0]),
                    SizedBox(width: width,),
                    JobWidget(jobList[10]),
                    SizedBox(width: width,),
                    JobWidget(jobList[3]),
                    SizedBox(width: width,),
                    JobWidget(jobList[8]),
                    SizedBox(width: width,),
                    JobWidget(jobList[13]),
                    SizedBox(width: width,),
                    JobWidget(jobList[9]),
                    SizedBox(width: width,),
                    JobWidget(jobList[12]),



                  ],
                ),
              ),

            //

            if (_qnController.results >= 60)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: width,),
                    JobWidget(jobList[2]),
                    SizedBox(width: width,),
                    JobWidget(jobList[11]),
                    SizedBox(width: width,),
                    JobWidget(jobList[5]),
                    SizedBox(width: width,),
                    JobWidget(jobList[3]),
                    SizedBox(width: width,),
                    JobWidget(jobList[1]),
                    SizedBox(width: width,),


                  ],
                ),
              ),




            if (_qnController.results > 40 && _qnController.results < 60)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: width,),
                    JobWidget(jobList[4]),
                    SizedBox(width: width,),
                    JobWidget(jobList[6]),
                    SizedBox(width: width,),
                    JobWidget(jobList[3]),
                    SizedBox(width: width,),
                    JobWidget(jobList[7]),
                    SizedBox(width: width,),
                    JobWidget(jobList[8]),
                    SizedBox(width: width,),
                    JobWidget(jobList[12]),
                    SizedBox(width: width,),
                    JobWidget(jobList[13]),
                    SizedBox(width: width,),

                  ],
                ),
              ),


          ],
        ),
      ),

      bottomSheet: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xff03A9F4),
            minimumSize: Size(700, 55),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          ),
          onPressed: () => _qnController.retakeQuiz(),
          child: Text('Retake Quiz',
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontFamily: 'Comfort'))),
    );
  }
}
