# Elm-Avataars - cute avatars for your websites
This a port to [elm-svg](https://package.elm-lang.org/packages/elm/svg/latest) of [fangpenlin/avataaars-generator](https://github.com/fangpenlin/avataaars-generator).

Original art is by [Pablo Stanley](https://twitter.com/pablostanley), original SVG port by [Fang-Pen Lin](https://github.com/fangpenlin).

## Usage

```Elm
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

view =
    Avataaars.view
        { width = 264
        , height = 280
        }
        avataaar
```

Some notes:
* `HairColor`, `HatColor` and `Clothes.Color` are synonyms for `String`, and the modules `HairColor`, `HatColor` and `Clothes` define the "default" ones defined in the original code;
* have a look at the `examples` folder for a complete example of an [elm-ui](https://package.elm-lang.org/packages/mdgriffith/elm-ui/latest/) Avataaar editor.

# Contributing
Please, PLEASE, help me write better docs, better examples and simplifying the generated SVG.

*Gladly* accepting PRs.
