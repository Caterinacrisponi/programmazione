
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
frq = vslider("f1 [style:knob]", 440,100,20000,1); 
5
​
6
pan2 = vslider("p2 [style:knob]", 0.5,0,1,0.01);
7
​
8
pan3 = vslider("p3 [style:knob]", 0.5,0,1,0.01);
9
​
10
pan4 = vslider("p4 [style:knob]", 0.5,0,1,0.01);
11
​
12
process = os.oscsin(frq*1), os.oscsin(frq*2),
13
          os.oscsin(frq*3), os.oscsin(frq*4) <:
14
          _ * (sqrt(1-pan1)), _ * (sqrt(1-pan2)),
15
          _ * (sqrt(1-pan3)), _ * (sqrt(1-pan4)),
16
          _ * (sqrt(pan1)), _ * (sqrt(pan2)),
17
          _ * (sqrt(pan3)), _ * (sqrt(pan4)) : 
18
          _+_, _+_, _+_, _+_ : _+_, _+_ : _*(0.25),_*(0.25);
19
 
