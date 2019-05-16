
Doc/Learn
Downloads
Tools
Community
Showcase
Search
 


1
import("stdfaust.lib");
2
​
3
pan1 = vslider("p1 [style:knob]", 0.5,0,1,0.01);
4
frq1 = vslider("f1 [style:knob]", 440,100,20000,1); 
5
​
6
pan2 = vslider("p2 [style:knob]", 0.5,0,1,0.01);
7
frq2 = vslider("f2 [style:knob]", 440,100,20000,1); 
8
​
9
pan3 = vslider("p3 [style:knob]", 0.5,0,1,0.01);
10
frq3 = vslider("f3 [style:knob]", 440,100,20000,1); 
11
​
12
pan4 = vslider("p4 [style:knob]", 0.5,0,1,0.01);
13
frq4 = vslider("f4 [style:knob]", 440,100,20000,1); 
14
​
15
process = os.oscsin(frq1), os.oscsin(frq2),
16
          os.oscsin(frq3), os.oscsin(frq4) <:
17
          _ * (sqrt(1-pan1)), _ * (sqrt(1-pan2)),
18
          _ * (sqrt(1-pan3)), _ * (sqrt(1-pan4)),
19
          _ * (sqrt(pan1)), _ * (sqrt(pan2)),
20
          _ * (sqrt(pan3)), _ * (sqrt(pan4)) : 
21
          _+_, _+_, _+_, _+_ : _+_, _+_ : _*(0.25),_*(0.25);
22
 
