***  
<p align="center">Made In USA by Stanley. <a href="https://discord.com/invite/uCKZJed3Gq">Stanley Development Studios</a> Copyright © 2024. All rights reserved.</p>

# Radiance 🚨 
Radiance is an enhanced emergency lighting visual overhaul for FiveM, bringing improved brightness and visibility to the native emergency vehicle lighting system.

## Features ✨  
- Enhanced emergency lighting visuals.
- Server side, no client installation needed.
- Configurable brightness levels (`bright` , `brighter` or `normal`).  
- Easy-to-use preset system.  
- Works with **all** emergency vehicles, including add-ons.  
- Zero performance impact.  

## Screenshots 📸  
![Radiance Lighting](https://s3-screenshots.int-cdn.lcpdfrusercontent.com/monthly_2022_04/radiance_v_cover_2.jpg.01d57ad94601cb97f30d3ee284506b77.jpg)

## Download 🔽  
Check out the [releases](https://github.com/GlueGunStanley/Radiance/releases) page for the latest version.

## Installation ✅  
**1. Download the [latest release](https://github.com/GlueGunStanley/Radiance/releases).**  
**2. Extract and rename the folder to `Radiance`.**  
**3. Drag `Radiance` into your `resources` folder.**  
**4. Go to your `server.cfg` and add `start Radiance`.**  
**5. Configure the resource by selecting a preset (`bright` , `brighter` or `normal`).**  

That's it! If everything went correctly, the next time you start your server, Radiance will automatically enhance emergency lighting.

## Configuration 🔧  
Radiance comes with two preset options: 
- **`normal`** (default) – More natural brightness while still improving default lighting.  
- **`bright`** – Enhances emergency lighting for maximum visibility.  
- **`brighter`** – For if bright is not enough and you feel like being blinded.  

To change the preset, modify `fxmanifest.lua` inside the resource folder:  
```lua
preset 'normal' -- Change if preferred
```
Radiance will automatically apply the selected preset.

## Performance ➰  
Radiance has **zero** noticeable impact on performance, as it simply adjusts existing visual settings.

## Contributions 💜  
If you've found a bug or want to request a feature, you can go ahead and create an [issue](https://github.com/GlueGunStanley/Radiance/issues).  
If you've improved the resource, feel free to make a [pull request](https://github.com/GlueGunStanley/Radiance/pulls)!  

## License 📄  
[Stanley Development Studios](https://discord.com/invite/uCKZJed3Gq) Copyright © 2024. All rights reserved.  
This resource is licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode.en)  

<a href="https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode.en">
    <img src="https://mirrors.creativecommons.org/presskit/buttons/88x31/png/by-nc-sa.png" width="50.6" height="17.8" alt="CC BY-NC-SA 4.0">
</a>
