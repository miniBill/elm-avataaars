# Elm-Avataars - cute avatars for your websites
This a port to [elm-svg](https://package.elm-lang.org/packages/elm/svg/latest) of [fangpenlin/avataaars-generator](https://github.com/fangpenlin/avataaars-generator).

Original art is by [Pablo Stanley](https://twitter.com/pablostanley), original SVG port by [Fang-Pen Lin](https://github.com/fangpenlin).

## Usage
The modules are meant to be imported qualified, with types exposed as needed, you can optionally alias `Avataars.XYZ` to `XYZ` for less verbosity.

```
import Avataaars exposing (Avataaar)
import Avataaars.Accessory as Accessory
import Avataaars.Clothes as Clothes
import Avataaars.Eyebrow as Eyebrow
import Avataaars.Eyes as Eyes
import Avataaars.FacialHair as FacialHair
import Avataaars.Mouth as Mouth
import Avataaars.SkinTone as SkinTone
import Avataaars.Top as Top

avataaar : Avataaar
avataaar =
    { circleBg = True
    , skinTone = SkinTone.black
    , clothes = Clothes.BlazerShirt
    , face =
        { mouth = Mouth.Default
        , eyes = Eyes.Default
        , eyebrow = Eyebrow.Default
        }
    , top = Top.TopAccessoryFacialHair Top.NoHair Accessory.Blank FacialHair.Blank
    }

view : Svg msg
view =
    Avataaars.view
        { width = 264
        , height = 280
        }
        avataaar
```

Some notes:
* `HairColor`, `HatColor` and `Clothes.Color` are synonyms for `String`, and the modules `HairColor`, `HatColor` and `Clothes` expose the "default" ones defined in the original code;
* have a look at the `examples` folder for a complete example of an [elm-ui](https://package.elm-lang.org/packages/mdgriffith/elm-ui/latest/) Avataaar editor.

# Contributing
Please, PLEASE, help me write better docs and examples, generalize some colors and simplify the generated SVG.

*Gladly* accepting PRs.
