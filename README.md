# CODECHECK certificate 2025-019

Repository for CODECHECK certificate 2025-019.

- Publication: [Fuzzy-Logic-based model predictive control: A paradigm integrating optimal and common-sense decision making](https://doi.org/10.48550/arXiv.2503.21065)
- Repository: [https://doi.org/10.4121/319168f0-bc62-4051-84c2-f32718c05386.v1](https://doi.org/10.4121/319168f0-bc62-4051-84c2-f32718c05386.v1))

## Preparation steps

 - Install Matlab 2023b in your machine
 - Download the author's code repository [here](https://data.4tu.nl/datasets/319168f0-bc62-4051-84c2-f32718c05386/1), e.g. by running `git clone` command shared at the bottom of the webpage
 - Download separate repository with [raw simulation data](https://data.4tu.nl/datasets/2479c468-624b-49b6-9e2e-63bd633c9bc2), unzip `recordings.zip` and move unzipped `recordings/` folder to the code repository's main folder, e.g., `mv recordings 1284fd2b-663c-4c0d-9af7-7dc1ca390945/`

## Reproduce Results

Before starting reproducing the figures, open Matlab 2023b and make sure the code repository's main folder (`./1284fd2b-663c-4c0d-9af7-7dc1ca390945/`) is displayed in Matlab's folder left panel.

### Figure 3

Run the following commands in Matlab's terminal:

```Matlab
   addpath(genpath('.'))
   load('recordings/1_1f/env1.mat')
   plot_all_maps_environment(env_no_figures,0)
```

Three figures are created, of which 'Figure 3' is the map of the environment and corresponds to Figure 3 in the manuscript.
Note that an earlier version of the software created the figure in the manuscript, which leads to the following differences:

 - The Y-axis of the map is flipped (vertically)
 - The planned paths of drones are plotted.
 - The map is generated for T=1 instead of T=0 so the positions of drones are slightly different.

For a better visual check comparing the generated and manuscript's figures, the codechecker used the "Rotation 3D" option (under the header 'Tools') in the generated figure in order  to flip vertically the figure to the same orientation as the published figure.

### Figure 4

Figure 4 is a collection of 4 subfigures (4A-D) that are reproduced separately.

**To reproduce Subfigure 4A:**

Run the following commands in Matlab's terminal:

```Matlab
   addpath(genpath('.'))
   x=0:0.001:1;
   for i=1:1001
   y(i)=passibility_membership_function(x(i));
   end
   plot(x,y)
```

**To reproduce Subfigure 4B:**

Run the following commands in Matlab's terminal:

```Matlab
   addpath(genpath('.'))
   x=0:0.001:1;
   for i=1:1001
   y(i)=reward_humans_membership_function(x(i));
   end
   plot(x,y)
```

**To reproduce Subfigure 4C:**

Run the following commands in Matlab's terminal:

```Matlab
   addpath(genpath('.'))
   x=0:0.001:1;
   for i=1:1001
   y(i)=reward_exploration_membership_function(x(i));
   end
   plot(x,y)
```

**To reproduce Subfigure 4D:**

Run the following commands in Matlab's terminal:

```Matlab
   addpath(genpath('.'))
   val=1;
   fis=readfis('certanity_unvisited.fis');
   for i=2:150
   val(i)=evalfis(fis,val(i-1));
   end
   plot(1-val)
```

### Figure 5

Figure 5 is a collection of 2 subfigures (Left and Right) that are reproduced separately.

To reproduce Subfigures 5 Left and Right we are going to use Matlab's Fuzzy Logic Designer tool.

**To reproduce Subfigure 5 Left:**

 - Run `fuzzyLogicDesigner` in the terminal. Two windows should appear in your screen: one named 'Fuzzy Logic Designer: Untitled' and 'Fuzzy Logic Designer: Getting started'.
 - In 'Fuzzy Logic Designer: Getting started', do a Browse action (in the'Open' to left section) to select the file `.\fuzzy\FIS\certanity.fis`. The file is loaded into the 'Fuzzy Logic Designer: Untitled' window, whose name changes to 'Fuzzy Logic Designer: certanity'

 ![Browse](/supplementary_materials/Fuzzy%20Logic%20Designer%20-%20Getting%20Started.png)

 - In 'Fuzzy Logic Designer: certanity', click on 'Export' (top panel) and then 'Export Fuzzy Inference System to Workspace'.
 
 ![Export](/supplementary_materials/Fuzzy%20Logic%20Designer%20-%20Export%20Fuzzy%20Inference%20Systems%20to%20Workspace.png)

 - A window appears requesting to select options to be exported. Select 'certanity' and click 'Export'.

 ![Select_certanity](/supplementary_materials/Fuzzy%20Logic%20Designer%20-%20Export%20Fuzzy%20Inference%20Systems%20to%20Workspace%20-%20Select%20certanity%20and%20Export.png)

 - In the Matlab terminal, run the following commands:
 
  ```Matlab
     [X,Y,Z]=gensurf(certanity);
     surf(1-X,(Y+1)/2,1-Z)
  ```

  A figure is generated that corresponds to Subfigure 5 Left in the manuscript. Please use the "Rotation 3D" option under the header 'Tools' of the generated figure to better visually check the comparison between the reproduced and published figures.

**To reproduce Subfigure 5 Right:**

 - Run `fuzzyLogicDesigner` in the terminal. Two windows should appear in your screen: one named 'Fuzzy Logic Designer: Untitled' and 'Fuzzy Logic Designer: Getting started'.
 - In 'Fuzzy Logic Designer: Getting started', do a Browse action (in the'Open' to left section) to select the file `.\fuzzy\FIS\measurment_information.fis`. The file is loaded into the 'Fuzzy Logic Designer: Untitled' window, whose name changes to 'Fuzzy Logic Designer: measurment_information'

 ![Browse](/supplementary_materials/Fuzzy%20Logic%20Designer%20-%20Getting%20Started.png)

 - In 'Fuzzy Logic Designer: measurment_information', click on 'Export' (top panel) and then 'Export Fuzzy Inference System to Workspace'.
 
 ![Export](/supplementary_materials/Fuzzy%20Logic%20Designer%20-%20Export%20Fuzzy%20Inference%20Systems%20to%20Workspace.png)

 - A window appears requesting to select options to be exported. Select 'measurment_information' and click 'Export'.

 ![Select_measurment_information](/supplementary_materials/Fuzzy%20Logic%20Designer%20-%20Export%20Fuzzy%20Inference%20Systems%20to%20Workspace%20-%20Select%20measurment_information%20and%20Export.png) 

 - In the Matlab terminal, run the following commands:
 
  ```Matlab
     [X,Y,Z]=gensurf(measurment_information);
     surf(X,Y,(Z+1)/2)
  ```

 A figure is generated that corresponds to Subfigure 5 Right in the manuscript. Please use the "Rotation 3D" option under the header 'Tools' of the generated figure to better visually check the comparison between the reproduced and published figures.

### Figure 6

To reproduce Figure 6 you need access to additional Matlab functions that are at the date of this certificate's publication not available in the author's main repository, but that can be found in this Codecheck's repository (https://github.com/joaoxg/certificate-2025-XXX/tree/main/TO_COPY_TO_MAINREPO/Figure6). The author shared these functions with the Codechecker during the Codecheck process.

To reproduce this figure, first copy/download the folder containing these functions into the authors's main repository, e.g.:

```
   cp -r ./certificate-2025-XXX/TO_COPY_TO_MAINREPO/Figure6 ./1284fd2b-663c-4c0d-9af7-7dc1ca390945/
```

Then, in Matlab, make sure the repo main folder (./1284fd2b-663c-4c0d-9af7-7dc1ca390945) is displayed in Matlab's folder left panel and type in the terminal:

```Matlab
   addpath(genpath('.'))
   main2
```

### Figure 7

Run the following commands in the Matlab's terminal:

```Matlab
   addpath(genpath('.'))
   load('recordings/large/4_2f/env1.mat')
   plot_all_maps_environment(env_no_figures,0)
```

Three figures are created, of which 'Figure 3' is the map of the environment and corresponds to Figure 7 in the manuscript.
Note that an earlier version of the software created the figure in the manuscript, which leads to the following differences:

 - The Y-axis of the map is flipped (vertically)
 - The planned paths of drones are plotted.
 - The map is generated for T=1 instead of T=0 so the positions of drones are slightly different.

For a better visual check comparing the generated and manuscript's figures, the codechecker used the "Rotation 3D" option (under the header 'Tools') in the generated figure in order  to flip vertically the figure to the same orientation as the published figure.

### Figure 8

Figure 8 is a collection of 4 subfigures that are reproduced separately.

**To reproduce Subfigure 8 Top Left:**

Run the following commands in the Matlab's terminal:

```Matlab
   addpath(genpath('.'))
   load('recordings\large\1_2f\env2861.mat')
   plot_all_maps_environment(env_no_figures,0)
```

Three figures are created, of which 'Figure 2' is the map of the environment and corresponds to Subfigure 8 Top Left in the manuscript.
Note that an earlier version of the software created the figure in the manuscript, which leads to the following difference: the Y-axis of the map is flipped (vertically).

For a better visual check comparing the generated and manuscript's figures, the codechecker used the "Rotation 3D" option (under the header 'Tools') in the generated figure in order  to flip vertically the figure to the same orientation as the published figure.

**To reproduce Subfigure 8 Top Right:**

```Matlab
   addpath(genpath('.'))
   load('recordings/large/1_4f/env2011.mat')
   plot_all_maps_environment(env_no_figures,0)
```

Three figures are created, of which 'Figure 2' is the map of the environment and corresponds to Subfigure 8 Top Right in the manuscript.
Note that an earlier version of the software created the figure in the manuscript, which leads to the following difference: the Y-axis of the map is flipped (vertically).

For a better visual check comparing the generated and manuscript's figures, the codechecker used the "Rotation 3D" option (under the header 'Tools') in the generated figure in order  to flip vertically the figure to the same orientation as the published figure.

**To reproduce Subfigure 8 Bottom Left:**

```Matlab
   addpath(genpath('.'))
   load('recordings\large\4_2f\env2221.mat')
   plot_all_maps_environment(env_no_figures,0)
```

Three figures are created, of which 'Figure 2' is the map of the environment and corresponds to Subfigure 8 Bottom Left in the manuscript.
Note that an earlier version of the software created the figure in the manuscript, which leads to the following difference: the Y-axis of the map is flipped (vertically).

For a better visual check comparing the generated and manuscript's figures, the codechecker used the "Rotation 3D" option (under the header 'Tools') in the generated figure in order  to flip vertically the figure to the same orientation as the published figure.

**To reproduce Subfigure 8 Bottom Right:**

```Matlab
   addpath(genpath('.'))
   load('recordings\large\4_4f\env2661.mat')
   plot_all_maps_environment(env_no_figures,0)
```

Three figures are created, of which 'Figure 2' is the map of the environment and corresponds to Subfigure 8 Bottom Right in the manuscript. 
Note that an earlier version of the software created the figure in the manuscript, which leads to the following difference: the Y-axis of the map is flipped (vertically).

For a better visual check comparing the generated and manuscript's figures, the codechecker used the "Rotation 3D" option (under the header 'Tools') in the generated figure in order  to flip vertically the figure to the same orientation as the published figure.