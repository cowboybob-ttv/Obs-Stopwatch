# Obs-Stopwatch
Simple stopwatch script to use in obs.
<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]


<!-- PROJECT LOGO -->
<h2 align="center">Obs Stopwatch</h2>
<h3 align="center">Simple stopwatch script to use in obs.</h3>

  <p align="center">
    <br />
    <a href="https://github.com/cowboybob-ttv/Obs-Stopwatch"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="#Tutorial">View Demo</a>
    ·
    <a href="https://github.com/cowboybob-ttv/Obs-Stopwatch/issues">Report Bug</a>
    ·
    <a href="https://github.com/cowboybob-ttv/Obs-Stopwatch/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>      
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Simple stop watch that user inputs a target stop time. User can setup custom hotkeys within obs studio to start pause and reset the timer from a button press.

<!-- GETTING STARTED -->
## Getting Started
This will help you to get the script up and running

### Prerequisites
To use this script you will need obs studio installed: <a href="https://obsproject.com/download">Obs Studio Download</a>

### Installation
Download the <a href="https://github.com/cowboybob-ttv/Obs-Stopwatch/blob/main/stopwatch.lua">stopwatch.lua script</a> and put in a directory where you keep all your obs scripts and/or files for your sources.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage
To use this script you will need to goto 
```
  Tools/Scripts
```
from within the top dropdown in obs. Once in the scripts window click the "+" button and navigate to where you you put the downloaded stopwatch.lua file. From there you should see the description and some settings to the right. You will need to input how many seconds you would like the timer run for into the first input field named: Set Timer to Count Up To (seconds). Then you need to add a new Text(GDI+) text source and name it what you would like. You will now use the name you just gave to the text source and go back to the scripts window. Now input the name you gave the text source in the input field named Text Source Name. The buttons will start, pause, and reset the timer. You can also setup hotkeys from Settings/Hotkeys in obs. You then can use the filter input to search for Start/Pause Timer the click in the coresponding field and press the hotkey you'd like to use. You can do the same by searching for Reset Timer and input the hotkey to reset your timer. 

## Tutorial
https://www.youtube.com/embed/wRVHSuLSlwk?si=9whtLY_SNZueJxh7
<a href="https://youtu.be/wRVHSuLSlwk">
   <img src="https://img.youtube.com/vi/wRVHSuLSlwk/0.jpg" alt="youtube cover image" style="width:100%;>
</a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ISSUES -->
# Issues

See the [open issues](https://github.com/cowboybob-ttv/Obs-Stopwatch/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Project Link: [https://github.com/cowboybob-ttv/Obs-Stopwatch](https://github.com/cowboybob-ttv/Obs-Stopwatch)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/cowboybob-ttv/Obs-Stopwatch.svg?style=for-the-badge
[contributors-url]: https://github.com/cowboybob-ttv/Obs-Stopwatch/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/cowboybob-ttv/Obs-Stopwatch.svg?style=for-the-badge
[forks-url]: https://github.com/cowboybob-ttv/Obs-Stopwatch/network/members
[stars-shield]: https://img.shields.io/github/stars/cowboybob-ttv/Obs-Stopwatch.svg?style=for-the-badge
[stars-url]: https://github.com/cowboybob-ttv/Obs-Stopwatch/stargazers
[issues-shield]: https://img.shields.io/github/issues/cowboybob-ttv/Obs-Stopwatch.svg?style=for-the-badge
[issues-url]: https://github.com/cowboybob-ttv/Obs-Stopwatch/issues
[license-shield]: https://img.shields.io/github/license/cowboybob-ttv/Obs-Stopwatch.svg?style=for-the-badge
[license-url]: https://github.com/cowboybob-ttv/Obs-Stopwatch/blob/main/LICENSE.txt
