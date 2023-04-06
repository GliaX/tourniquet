# Desktop injection molding 
This folder details our journey at desktop injection molding the plastic parts of the tourniquet. It'll detail any pitfalls we've encountered over the months of working at the project, any tips and tricks and the processes we've established along the way. Read through it carefully in its entirety before attempting to injection mold your own tourniquets. 

# Files
This folder contains files for the resin print of a 10cm high mold for all four parts of the tourniquet. It has a slot on the top for an aluminium insert that matches your machine's nozzle. We've provided the one we're using for our machine under nozzle_slot.FCStd. You need the nozzle block to be made out of aluminium, otherwise you run the risk of the machine burning your mold when it rests on top of it. The nozzle block is split in the middle - when milling you put two 1cm thick blocks in the vice. 

### Aluminium molds
The folder "aluminium_milled" contains edited molds for milling them out of metal on a 3-axis CNC machine. They will require modification to change over the nozzle shape to the machine that you're using. You should aim to create aluminium molds - the resin is great for prototyping and setting up the machine / testing plastics, but shatters easily and doesn't permit long runs. An average aluminium mold longevity is between 2000 - 10000 parts, compared to around 10 using the Siraya Tech Ultra White resin. Stronger engineering resins exist which could provide a longer run, but we haven't tested them out.

# Our machine
We are using the [Buster Beagle mk3 injection molding machine](https://www.busterbeagle3d.com/) with the SC100 piston. The mk3 has been confirmed to have enough plastic volume to inject the biggest part of the tourniquet - namely the windlass. Its main drawback is the weak workholding - a 2 ton vice - which we supplement with C-clamps.

# Our plastic
The tourniquet needs to be made out of ABS plastic. It's not a beginner's material and tends to be more problematic than easier ones, like polypropylene. It flows worse, but the resulting part is stronger and provides more resistance to the elements. We suggest using already coloured, new pellets - there are sellers of black ABS pellets on sites like Ebay. White uncolored pellets show discoloration in the part, and end up yellowing. We were unable to color the pellets in the buster beagle by adding powdered pigments or masterbatches when injecting - we ended up with milky, uneven color.

### What about reground?
Recycled plastic can be used, provided it didn't absorb moisture and that the injected part doesn't perform worse than new pellets. We've encountered moisture problems in the reground that we've bought.

# Anything else I need?
### A compressor
You need a car compressor to power the Buster Beagle piston. Currently we're using [a small 8 bar 20l compressor](https://sklep.kupczyk.pl/kompresor-tlokowy-fl-24-kupczyk,3,19543,2316). It has a regulator at the end, and a quick-release, in case we need to use the compressed air to power something else. 

### A small oven
There are cheap, small ovens that will be used for drying the pellets and for warming up the molds. They cannot substitute a professional dryer, but cost a fraction of the money and help quite a bit. You should be drying everything that goes into the machine, regardless of the pellets used - whether they are recycled or new. Drying helps immensly with humid environments. Make sure the oven you're buying has a "warm" setting - that it goes under 100 degrees C. 
**Do not use your home oven to dry plastic**

# How do I make a mold?
We're printing our molds in Siraya Tech Ultra White on the Anycubic Photon Mono X 6k. This tutorial assumes you know the basics of resin printing. 
### Safety 
Resin printing is a messy and toxic process, the first steps are to make sure you're safe. Wear nitrile gloves, safety glasses and a respirator or mask. Do not get any of the resin on your skin. Process any trash from the printing by hardening everything using a UV flashlight (wear UV safety glasses when doing this). Do not touch, sniff, throw away uncured parts or supports. Clean any spill with isopropyl alcohol. 
### Settings
We're printing with the following settings: 
![Illustration 1](./assets/settings.png)

### Print orientation
We're printing the molds standing up, off the baseplate, on supports. We've tried other orientations that provide a shorter print, but we encountered issues with the peel forces being too great and ruining it. We angle the print away by 2 - 3 degrees, so the supports don't touch the surface, requiring sanding.  

### Presupporting the file
We use two slicers to prepare files for print. We use PrusaSlicer for its autosupport feature and better supports, then we export the plate with supports and slice the file using Lychee. We need to add more supports on the bottom in PrusaSlicer, see a sample density in the pic below. Otherwise the print falls of the plate under the peel forces / its own weight. We tend to oversupport the print to avoid losing resin in a failure. 
![Illustration 2](./assets/density.png)

### Tolerances
Some files might require sanding and fitting. You should be able to open the empty molds without any issue / them getting stuck. 

# Which one do I start with?
The easiest part to inject is the buckle. It has a very small and simple mold that doesn't require too much resin to print. The cavity survives a lot of injections easily, with the core breaking, so you usually have to reprint just one half of the mold if it shatters. 

# What do I do now? 
**Skipping any of these steps usually ends up with the resin mold shattering and being unusable.**

1. You need an aluminium nozzle slot machined. It's a small runner section milled / drilled in two alu blocks with the shape of the nozzle for your machine. It should fit the opening at the top of the mold (one half is 1cm x 2cm x 3cm). We've provided a file for the nozzle insert for the Buster Beagle mk3. 
2. You need a backing for the molds in the vice. The mold cannot be unsupported, it needs something behind it / in front of it. A piece of MDF works great, or an aluminium plate. Make sure it covers the entire mold, and is rigid. 
3. You need C-clamps to hold down the mold and prevent it from yawing open. The default vise on the bottom of the machine works up to 2 tons. Add two or three C-clamps on the part that's sticking out of the vise and tighten them down. This prevents  flashing or yawing open the mold. 
4. Make sure the total travel of the nozzle head isn't too big. The nozzle should be around a centimeter from the nozzle block on the mold. Having it go for longer causes your injection to fail, and in extreme situations can break your machine. Don't use the entire travel of the springs to do the injection. 
5. You need a mold release agent. The plastic tends to grip the molds and doesn't let go despite the draft angles in the design. A mold release spray helps with that. 

**Skipping any of these steps usually ends up with the resin mold shattering and being unusable.**

### Injection machine settings
We're injecting at 220 degrees, at around 5 bar on the compressor using the SC100 cylinder. These settings may change in the future, and are a starting point, not a requirement. Find something that works for you - that doesn't break the molds and doesn't burn your plastic. We have the fastest possible injection speed on the valve for the piston. We heat up our molds in the oven at less than 100 degrees C, while drying pellets in it at the same time.
