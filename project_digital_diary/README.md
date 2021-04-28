Digital Diary

Introduction:
A diary is a recording of one’s daily activities and/or their feelings about the day. According to a survey, around 50% of the people around the world have a diary. This is a huge fraction given that it takes lot of self-discipline, and perseverance to write a diary. On a personal note, I have tried many times to maintain a diary and pen down my daily events but in vain. But recently I tried to type them using a mobile app and I am successful in my attempt until today, I have written my daily events every day. I also find it interesting and the notifications also help me remember to write every day in case I forget. It also has special options as attaching images and adding location and mood, which helps the user to write with pleasure. So, I thought about coming up with a device just for writing diary, “A digital diary”. 

Abstract:
The device should contain the processor for performing tasks and interacting with other components, it should have a camera to capture images, a microphone to record voice, a screen to interact - display and take inputs from the user and a speaker for notification sounds. From the course point of view, it mostly involves integrating the peripherals to the processor. I am using a single cycle CPU with only integer instructions to develop a basic prototype of this device with very basic functions. The basic and necessary function is to store the data and display it on request. I have tried to implement it in this project. Also, I have discussed how it can be extended and improved.

Design:
I made use of the code already completed in the assignment 7 of the course. It was about implementing peripherals through the bus interface unit (BUI). I modified the code to include the two peripherals- external memory and display. The external memory is just an extension of the memory to store data, since this project involves storing lot of data. 

Verilog code on next page

 



The other module is the display module. Basically, I wanted it to be a screen where we can see the display and also interact with it by touch. In this project, I was able to do two things, write a diary on the current day, another is to view past writings from a list. The display outputs the details on the screen and also reads the input as the user interacts by touch with the screen. 

Code on the next page
 

Other than this, it uses the single cycle CPU as already mentioned. I am aware that it is not something desirable but I have spent my time searching for codes, but I wasn’t able to understand or work with them, so I decided to build on from what skills I have learnt from the course, which will also enable me to have a good understanding of the way the processors interact with the peripherals and execute programs. 
I have written a basic code in C, to read inputs from the screen and perform tasks such as saving and printing outputs. The screen starts with the home page, displaying a greeting message, then the user can choose between writing a diary that day or viewing/reading past records. If he selects the option to write a diary, he can write for the day and it gets saved. If he wants to read his past writings, he can select the view option and select the day he wants to see and that day’s writing gets displayed.

The C code is on the next page
 
The other functions and libraries are the ones used in the assignment 7. 

Tests:
The tests were performed to verify the mentioned two functions. The user touch inputs were stored in a sequential manner in the inpu.txt file. In the image given below, you can see the few inputs. The input 2 stands for writing a diary for the day. Then the next input saves the date for that day. The next inputs are ASCII characters for the alphabets, numbers and characters which are types by the user. Finally, to close, the input is taken as the number 150.
Then if the user wants to view that day’s writing, the number is input as 1. Then, the date he chooses is input as the address to the stored data. Then, the data gets printed and waits for his close message, which is again the number 150. All these are implemented using the C code. The outputs are displayed in the output.txt file.

 
 


output.txt file is shown in the next page
 

Gitea:
The link to the Gitea repository is given below:
https://git.ee2003.dev.iitm.ac.in/ep18b032/Project_Digital_diary
The input.txt can be modified to test with different sets of inputs. For now, it needs to be done manually. Soon, will put up a code to do so conveniently. The outputs can be obtained by running the run.sh file after cloning the repository. The outputs are displayed below (it is same as the outfile.txt) for the above example.
 
For a second example, I took writing for two consecutive times which is as below:
 
“Type in your thoughts!” is just the home screen message, so it is being output several times when there is no input.
Limitations and further improvements:
So, the major thing that limited me from doing more is time. With busy schedule and exams all over the month, I could not find enough time to work. Apart from that, there are several limitations in the project itself. Firstly, as already stated it uses a single cycle CPU, which makes it slower. So, I can further make improvements by implementing a pipelined CPU which can make the instruction execution faster. Also, this was just tested by simulation. The synthesis part is still not tested. Then, considering the peripherals, several other peripherals can be added to it involving the time and the location data, I am truly unaware of the process of how to do this without an internet network. Of course, GPS module can provide the location data but I am not sure how to integrate it into it. Integration them will be an improvement. I would also like to integrate the camera and microphone module, but I am not sure if I will be able to do it with this CPU which performs only RISC-V integer type instructions. So, looking for a complete CPU performing image and signal processing can be useful. Also, the other limitation is the storage, the storage is often difficult to manage and we need to avoid overlapping between the peripherals data memories. We need a lot of storage space to store all the data for a year long. The external memory can be replaced once a year and stored safely. 

Outcomes:
The course “Computer Organization” itself focused on designing a processor from scratch. And I think I have learnt a basic idea of designing a single cycle CPU and integrating few peripherals for user interaction, data collection, sensing, etc. I also learnt the process of building pipelines and wish to implement the same in near future. I expect to work on this even in the future with further inputs from your side also will be really very helpful. I did not take your inputs previously or discuss this idea with anyone as already mentioned due to time constraint and other problems. Any further inputs will be appreciated. Thank you!
 
