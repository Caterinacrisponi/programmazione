
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
frq = vslider("f1 [style:knob]", 440,100,20000,1); 
4
​
5
pan1 = vslider("p1 [style:knob]", 0.5,0,1,0.01);
6
pan2 = vslider("p2 [style:knob]", 0.5,0,1,0.01);
7
pan3 = vslider("p3 [style:knob]", 0.5,0,1,0.01);
8
pan4 = vslider("p4 [style:knob]", 0.5,0,1,0.01);
9
​
10
vol1 = vslider("vol1", 0.0,0,1,0.01);
11
vol2 = vslider("vol1", 0.0,0,1,0.01);
12
vol3 = vslider("vol1", 0.0,0,1,0.01);
13
vol4 = vslider("vol1", 0.0,0,1,0.01);
14
​
15
process = os.oscsin(frq*1), os.oscsin(frq*2),
16
          os.oscsin(frq*3), os.oscsin(frq*4) :
17
          _ * (vol1), _ * (vol2), _ * (vol3), _ *(vol4) <:
18
          _ * (sqrt(1-pan1)), _ * (sqrt(1-pan2)),
19
          _ * (sqrt(1-pan3)), _ * (sqrt(1-pan4)),
20
          _ * (sqrt(pan1)), _ * (sqrt(pan2)),
21
          _ * (sqrt(pan3)), _ * (sqrt(pan4)) : 
22
          _+_, _+_, _+_, _+_ : _+_, _+_ : 
23
          _*(0.25),_*(0.25);
24
            
