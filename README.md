# EXERCISE CAUTION WITH CLINICAL USE Tourniquet
[![pl](https://img.shields.io/badge/lang-pl-red.svg)](README.pl.md)

The design of this tourniquet is constantly being improved based on feedback from the field. While we are working very hard to prepare this tourniquet for clinical use, we do not consider it finished. Please do not deploy this unless you are in a crisis situation and know exactly what you are doing. 3D printed tourniquet to stop bleeding, especially related to penetrating injuries.

This tourniquet is in use [in Gaza](https://trklou.medium.com/3d-printed-open-source-tourniquet-rationale-failure-analysis-and-proposed-next-steps-of-the-glia-97e8441b4c5a) and is being produced for [emergency use in Ukraine](https://trklou.medium.com/glias-gaza-tourniquet-is-ready-for-emergency-use-in-ukraine-make-some-if-you-can-ef5f83260b7c).

## Contact
Contact person: Tarek Loubani <tarek@tarek.org> or Glia <info@glia.org>
Repository manager: Tarek Loubani

## Print settings
Print the 3MF file, modified to your needs. It's not recommended to edit the meshes - do not facet the windlass, do not squish / scale it for easier printing.

Material: ABS
* Layer Height: 0.2 mm
* Infill: 100%
* Bed temperature: 100°C temp at the first layer to avoid warping.

Material: PETG
* Layer Height: Same as ABS
* Infill: Same as ABS
* Bed temperature: 85°C temp at the first layer to avoid warping.


### Settings Per Part:
* backing_support:
  * supports
  * 4 perimeter shells/walls
  * 2 bottom/top shells/walls
* buckle:
  * supports
  * 2 perimeter shells/walls
  * 2 bottom/top shells/walls
* clip:
  * supports
  * 4 permiter shells/walls
  * 4 bottom/top shells/walls
* windlass:
  * supports
  * 4 permiter shells/walls
  * 4 bottom/top shells/walls

## Assembly Instructions
See the assembly instruction manuals in the following languages:
* [Arabic](assembly_instructions/INSTRUCTIONS_AR.md)
* [English](assembly_instructions/INSTRUCTIONS_EN.md)
* [Ukrainian](assembly_instructions/INSTRUCTIONS_UA.md)
* [Polish](assembly_instructions/INSTRUCTIONS_PL.md)
* [French](assembly_instructions/INSTRUCTIONS_FR.md)
* [Russian](assembly_instructions/INSTRUCTIONS_RU.md)

## Tourniquet QA (Quality Assurance) Folder
In this QA folder, you will find a printable QA chart and checklist. There is also information on design intent, and tensile strength notes. 
https://github.com/GliaX/tourniquet/tree/master/assembly_instructions/quality_control

## Tourniquet staging and folding Instructions
There are several reasonable techniques for staging a CAT-style tourniquet. At Glia, we use and recommend the following technique, which is in use in Gaza: https://www.youtube.com/watch?v=CSECJQPJmLw

## Packaging Instructions
The tourniquet should be packaged in clear, thin plastic such as PVC wrap to prevent any degradation from humidity or other environmental factors. This wrap should be easy to remove with bare hands and no tools.

## Injection molding - WARNING
We have presented injection molding files in the [`injection_molding`](injection_molding) folder. The injection molded tourniquet has not yet been deployed and is in the process of being tested at this time. Follow best practices for injection molding and assemble parts as above.
The "desktop_injection" folder is highly experimental and not deployed yet. We give no guarantees to the mold's correct behavior. 


## License
See the [LICENSE file](LICENSE) for more details of the GPLv3 license. These files are also available as [Creative Commons By Attribution ShareAlike](https://creativecommons.org/licenses/by-sa/4.0/) if desired.
