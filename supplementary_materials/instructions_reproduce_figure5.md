### Figure 5

 - In Matlab, use the folder left panel to select the downloaded code repo main folder as current folder
 - Run `fuzzyLogicDesigner` in the terminal. 2 new windows referring to Matlab's Fuzzy Logic Designer should appear in your screen: one named 'Fuzzy Logic Designer: Untitled' and 'Fuzzy Logic Designer: Getting started'.

#### Right Image

 - In 'Fuzzy Logic Designer: Getting started', 'Open' section (top left), do a Browse action to select file `.\fuzzy\FIS\measurment_information.fis`. The file is loaded into the 'Fuzzy Logic Designer: Untitled' window, whose name changes to 'Fuzzy Logic Designer: measurment_information'

 ![Getting Started](./Fuzzy%20Logic%20Designer%20-%20Getting%20Started.png)

 - In 'Fuzzy Logic Designer: measurment_information', click on the 'Control Surface' option (top panel) to visualize the left image of Figure 5

 ![Control Surface](./Fuzzy%20Logic%20Designer%20-%20Control%20Surface.png)

 ![Measurement Information](./fig5right.png)
 
#### Left Image

 - If you followed instructions to reproduce [####Right Image], click 'New' on top panel. Otherwise ignore this step

![New File](./Fuzzy%20Logic%20Designer%20-%20New.png)

 - In 'Fuzzy Logic Designer: Getting started', 'Open' section (top left), do a Browse action to select file `.\fuzzy\FIS\certainity.fis`. The file is loaded into the 'Fuzzy Logic Designer: Untitled' window, whose name changes to 'Fuzzy Logic Designer: certanity'

 - In 'Fuzzy Logic Designer: certainity', click on the 'Control Surface' option (top panel). This will return a transformed visualization of the right image of Figure 5, where certainity values in the axis X and Y equal 1 - uncertainty values in the axis X and Y of manuscript figure.
 - To return the published surface plot with uncertainty values instead, click on 'Export'(top panel) and then 'Export Simulation Results to workspace'. By going to the Matlab main page's workspace, you will find the object `certanity_ControlSurfaceData`

![Export](./Fuzzy%20Logic%20Designer%20-%20Export%20SImulation%20Results.png)

 - in the Matlab command window, run the following command: `surf(1-certanity_ControlSurfaceData.x, certanity_ControlSurfaceData.y, 1-certanity_ControlSurfaceData.z)`. This will return the figure published in the manuscript.

 ![Certainity](fig5left.jpg)