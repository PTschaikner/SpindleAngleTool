# Goal
This ImageJ/FIJI Plugin aims to provide a simple tool to assess spindle positioning within an image stack.

# Requirements
This macro works on single-channel image stacks of gamma-tubulin stained samples. Images need to be cropped to contain only one cell per stack.

# Usage
Copy the macro file into the macro folder of your ImageJ/Fiji directory, restart ImageJ and install the macro by pressing *"Plugins - Macros - Install..."*. 
The macro can now be found and run under *"Plugins - Macros - SpindleAngleTool"*.
Open the image stack you want to analyze (make sure that pixel width, pixel height and voxel depth are set correctly) and run the macro.
You will be asked to set a threshold for two projections of your image stack, use the sliders to make sure that only the signal of the spindle poles is masked.

# Citation

Please note that this macro is based on a publication. If you use it successfully for your research please be so kind to cite our work:
