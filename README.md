# EXERCISE CAUTION WITH CLINICAL USE Tourniquet
The design of this tourniquet is constantly being improved based on feedback from the field. While we are working very hard to prepare this tourniquet for clinical use, we do not consider it finished. Please do not deploy this unless you are in a crisis situation and know exactly what you are doing. 3D printed tourniquet to stop bleeding, especially related to penetrating injuries.

This tourniquet is in use [in Gaza](https://trklou.medium.com/3d-printed-open-source-tourniquet-rationale-failure-analysis-and-proposed-next-steps-of-the-glia-97e8441b4c5a) and is being produced for [emergency use in Ukraine](https://trklou.medium.com/glias-gaza-tourniquet-is-ready-for-emergency-use-in-ukraine-make-some-if-you-can-ef5f83260b7c).

## Contact
Contact person: Tarek Loubani <tarek@tarek.org> or Glia <info@glia.org>
Repository manager: Tarek Loubani

## Print settings
Print the 3MF file, modified to your needs. It's not recommended to edit the meshes - do not facet the windlass, do not squish / scale it for easier printing.

* Material: ABS
* Layer Height: 0.2 mm
* Infill: 100%
* Bed temperature: 100°C temp at the first layer to avoid warping.

### Settings Per Part:
* backing_support:
  * Supports
  * 4 perimeter shells/walls
  * 2 bottom/top shells/walls
* buckle:
  * Supports
  * 2 perimeter shells/walls
  * 2 bottom/top shells/walls
* clip:
  * Supports
  * 4 permiter shells/walls
  * 4 bottom/top shells/walls
* windlass:
  * Supports
  * 4 permiter shells/walls
  * 4 bottom/top shells/walls
  
## Assembly Instructions
See the assembly instruction manuals in the following languages:
* [Arabic](assembly_instructions/INSTRUCTIONS_AR.md)
* [English](assembly_instructions/INSTRUCTIONS_EN.md)
* [Ukrainian](assembly_instructions/INSTRUCTIONS_UA.md)
* [Polish](assembly_instructions/INSTRUCTIONS_PL.md)
* [French](assembly_instructions/INSTRUCTIONS_FR.md)

Pending:
* [Russian](assembly_instructions/INSTRUCTIONS_RU.md) (_Pending_)

## Tourniquet staging and folding Instructions
There are several reasonable techniques for staging a CAT-style tourniquet. At Glia, we use and recommend the following technique, which is in use in Gaza: https://www.youtube.com/watch?v=CSECJQPJmLw

## Packaging Instructions
The tourniquet should be packaged in clear, thin plastic such as PVC wrap to prevent any degradation from humidity or other environmental factors. This wrap should be easy to remove with bare hands and no tools.

## Injection molding - WARNING
We have presented injection molding files in the [`injection_molding`](injection_molding) folder. The injection molded tourniquet has not yet been deployed and is in the process of being tested at this time. Follow best practices for injection molding and assemble parts as above.

## License
See the [LICENSE file](LICENSE) for more details of the GPLv3 license. These files are also available as Creative Commons By Attribution ShareAlike if desired.
