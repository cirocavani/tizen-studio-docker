# Tizen Studio on Docker

Runs Tizen Studio on Docker.

## Setup

Assumes:

* KVM and Libvirt installed in the Host to enable Emulator hardware acceleration
* X running in the Host, same user of Docker Container (1000)

```sh
./build_image.sh
./create_container.sh
./kvm-update.sh

docker start tizen-studio
docker attach tizen-studio
# Press ENTER to see the prompt
```

**Starting IDE**

Runing from inside the container, IDE window opens in the Host X Display.

```sh
TizenStudio.sh > ~/ide.log 2>&1 &
```

## Package list

```sh
docker build -t tizen/cli:2.4 -f tizen-cli.Dockerfile .
docker create -it --name tizen-cli --hostname tizen-cli tizen/cli:2.4
docker start tizen-cli
docker attach tizen-cli
# Press ENTER to see the prompt
```

Command:

```sh
tizen-studio/package-manager/package-manager-cli.bin show-pkgs
```

Output:

```text
Display installed packages' information
Package Manager (0.4.26)

Status  Package Name                                    Package Version Component Name
------------------------------------------------------------------------------------------------------------------------
ni      MOBILE-4.0                                      0.0.38          4.0 Mobile
ni      MOBILE-4.0-Emulator                             0.0.38          Emulator
ni      MOBILE-4.0-NativeAppDevelopment                 0.0.38          Native app. development (IDE)
ni      MOBILE-4.0-WebAppDevelopment                    0.0.38          Web app. development (IDE)
ni      AdvancedMOBILE-4.0                              0.0.0           Advanced
ni      MOBILE-4.0-NativeAppDevelopment-CLI             0.0.38          Native app. development (CLI)
ni      MOBILE-4.0-WebFramework-TAU-CLI                 0.0.38          TAU (CLI)
ni      MOBILE-4.0-WebFramework-TAU                     0.0.38          TAU (IDE)
i       MOBILE-4.0-WebAppDevelopment-CLI                0.0.38          Web app. development (CLI)
ni      WEARABLE-4.0                                    0.0.38          4.0 Wearable (Preview)
ni      WEARABLE-4.0-Emulator                           0.0.38          Emulator
ni      WEARABLE-4.0-NativeAppDevelopment               0.0.38          Native app. development (IDE)
ni      WEARABLE-4.0-WebAppDevelopment                  0.0.38          Web app. development (IDE)
ni      AdvancedWEARABLE-4.0                            0.0.0           Advanced
ni      WEARABLE-4.0-NativeAppDevelopment-CLI           0.0.38          Native app. development (CLI)
ni      WEARABLE-4.0-WebFramework-TAU-CLI               0.0.38          TAU (CLI)
ni      WEARABLE-4.0-WebFramework-TAU                   0.0.38          TAU (IDE)
i       WEARABLE-4.0-WebAppDevelopment-CLI              0.0.38          Web app. development (CLI)
ni      TV-4.0                                          0.0.38          4.0 TV
ni      TV-4.0-WebAppDevelopment                        0.0.38          Web app. development (IDE)
ni      AdvancedTV-4.0                                  0.0.0           Advanced
i       TV-4.0-WebAppDevelopment-CLI                    0.0.38          Web app. development (CLI)
ni      MOBILE-3.0                                      0.0.26          3.0 Mobile
ni      MOBILE-3.0-Emulator                             0.0.26          Emulator
ni      MOBILE-3.0-NativeAppDevelopment                 0.0.26          Native app. development (IDE)
ni      MOBILE-3.0-WebAppDevelopment                    0.0.26          Web app. development (IDE)
ni      AdvancedMOBILE-3.0                              0.0.0           Advanced
ni      MOBILE-3.0-NativeAppDevelopment-CLI             0.0.26          Native app. development (CLI)
ni      MOBILE-3.0-WebFramework-TAU-CLI                 0.0.26          TAU (CLI)
ni      MOBILE-3.0-WebFramework-TAU                     0.0.26          TAU (IDE)
i       MOBILE-3.0-WebAppDevelopment-CLI                0.0.26          Web app. development (CLI)
ni      WEARABLE-3.0                                    0.0.26          3.0 Wearable
ni      WEARABLE-3.0-Emulator                           0.0.26          Emulator
ni      WEARABLE-3.0-NativeAppDevelopment               0.0.26          Native app. development (IDE)
ni      WEARABLE-3.0-WebAppDevelopment                  0.0.26          Web app. development (IDE)
ni      AdvancedWEARABLE-3.0                            0.0.0           Advanced
ni      WEARABLE-3.0-NativeAppDevelopment-CLI           0.0.26          Native app. development (CLI)
ni      WEARABLE-3.0-WebFramework-TAU-CLI               0.0.26          TAU (CLI)
ni      WEARABLE-3.0-WebFramework-TAU                   0.0.26          TAU (IDE)
i       WEARABLE-3.0-WebAppDevelopment-CLI              0.0.26          Web app. development (CLI)
ni      MOBILE-2.4                                      2.4.86          2.4 Mobile
ni      MOBILE-2.4-Emulator                             2.4.86          Emulator
ni      MOBILE-2.4-NativeAppDevelopment                 2.4.86          Native app. development (IDE)
ni      MOBILE-2.4-WebAppDevelopment                    2.4.86          Web app. development (IDE)
ni      AdvancedMOBILE-2.4                              0.0.0           Advanced
ni      MOBILE-2.4-NativeAppDevelopment-CLI             2.4.86          Native app. development (CLI)
ni      MOBILE-2.4-WebFramework-TAU-CLI                 2.4.86          TAU (CLI)
ni      MOBILE-2.4-WebFramework-TAU                     2.4.86          TAU (IDE)
i       MOBILE-2.4-WebAppDevelopment-CLI                2.4.86          Web app. development (CLI)
ni      WEARABLE-2.3.2                                  0.0.15          2.3.2 Wearable
ni      WEARABLE-2.3.2-Emulator                         0.0.15          Emulator
ni      WEARABLE-2.3.2-NativeAppDevelopment             0.0.15          Native app. development (IDE)
ni      WEARABLE-2.3.2-WebAppDevelopment                0.0.15          Web app. development (IDE)
ni      AdvancedWEARABLE-2.3.2                          0.0.0           Advanced
ni      WEARABLE-2.3.2-NativeAppDevelopment-CLI         0.0.15          Native app. development (CLI)
ni      WEARABLE-2.3.2-WebFramework-TAU-CLI             0.0.15          TAU (CLI)
ni      WEARABLE-2.3.2-WebFramework-TAU                 0.0.15          TAU (IDE)
i       WEARABLE-2.3.2-WebAppDevelopment-CLI            0.0.15          Web app. development (CLI)
ni      MOBILE-2.3.1                                    2.3.26          2.3.1 Mobile
ni      MOBILE-2.3.1-Emulator                           2.3.26          Emulator
ni      MOBILE-2.3.1-NativeAppDevelopment               2.3.26          Native app. development (IDE)
ni      MOBILE-2.3.1-WebAppDevelopment                  2.3.26          Web app. development (IDE)
ni      AdvancedMOBILE-2.3.1                            0.0.0           Advanced
ni      MOBILE-2.3.1-NativeAppDevelopment-CLI           2.3.26          Native app. development (CLI)
ni      MOBILE-2.3.1-WebFramework-TAU-CLI               2.3.26          TAU (CLI)
ni      MOBILE-2.3.1-WebFramework-TAU                   2.3.26          TAU (IDE)
i       MOBILE-2.3.1-WebAppDevelopment-CLI              2.3.26          Web app. development (CLI)
ni      WEARABLE-2.3.1                                  2.3.26          2.3.1 Wearable
ni      WEARABLE-2.3.1-Emulator                         2.3.26          Emulator
ni      WEARABLE-2.3.1-NativeAppDevelopment             2.3.26          Native app. development (IDE)
ni      WEARABLE-2.3.1-WebAppDevelopment                2.3.26          Web app. development (IDE)
ni      AdvancedWEARABLE-2.3.1                          0.0.0           Advanced
ni      WEARABLE-2.3.1-NativeAppDevelopment-CLI         2.3.26          Native app. development (CLI)
ni      WEARABLE-2.3.1-WebFramework-TAU-CLI             2.3.26          TAU (CLI)
ni      WEARABLE-2.3.1-WebFramework-TAU                 2.3.26          TAU (IDE)
i       WEARABLE-2.3.1-WebAppDevelopment-CLI            2.3.26          Web app. development (CLI)
ni      MOBILE-2.3                                      2.4.53          2.3 Mobile
ni      MOBILE-2.3-Emulator                             2.4.53          Emulator
ni      MOBILE-2.3-NativeAppDevelopment                 2.4.53          Native app. development (IDE)
ni      MOBILE-2.3-WebAppDevelopment                    2.4.53          Web app. development (IDE)
ni      AdvancedMOBILE-2.3                              0.0.0           Advanced
ni      MOBILE-2.3-NativeAppDevelopment-CLI             2.4.53          Native app. development (CLI)
ni      MOBILE-2.3-WebFramework-TAU-CLI                 2.4.53          TAU (CLI)
ni      MOBILE-2.3-WebFramework-TAU                     2.4.53          TAU (IDE)
i       MOBILE-2.3-WebAppDevelopment-CLI                2.4.53          Web app. development (CLI)
ni      WEARABLE-2.3                                    2.4.53          2.3 Wearable
ni      WEARABLE-2.3-Emulator                           2.4.53          Emulator
ni      WEARABLE-2.3-WebAppDevelopment                  2.4.53          Web app. development (IDE)
ni      AdvancedWEARABLE-2.3                            0.0.0           Advanced
ni      WEARABLE-2.3-WebFramework-TAU-CLI               2.4.53          TAU (CLI)
ni      WEARABLE-2.3-WebFramework-TAU                   2.4.53          TAU (IDE)
i       WEARABLE-2.3-WebAppDevelopment-CLI              2.4.53          Web app. development (CLI)
ni      TOOLS                                           2.5.35          Tizen SDK tools
ni      Baseline-SDK                                    2.5.35          Baseline SDK
ni      DOTNET-CLI-EXT                                  2.5.35          .NET CLI
ni      Certificate-Manager                             2.5.35          Certificate Manager
ni      Emulator                                        2.5.35          Emulator manager
ni      NativeCLI                                       2.5.35          Native CLI
ni      NativeIDE                                       2.5.35          Native IDE
ni      NativeToolchain                                 2.5.35          Native toolchain
ni      NativeToolchain-Gcc-4.6                         2.5.35          Gcc 4.6 toolchain
ni      NativeToolchain-Gcc-4.9                         2.5.35          Gcc 4.9 toolchain
ni      NativeToolchain-Gcc-6.2                         2.5.35          Gcc 6.2 toolchain
ni      PlatformIDE                                     2.5.35          Platform IDE
i       WebCLI                                          2.5.35          Web CLI
ni      WebIDE                                          2.5.35          Web IDE
ni      RT-SDK-TOOLS                                    2.5.35          RT SDK tools
ni      RT-IDE                                          2.5.35          RT IDE
ni      RT-Toolchain                                    2.5.35          RT toolchain
ni      Gcc-4.9.3-arm-toolchain                         2.5.35          Gcc 4.9.3 arm toolchain
ni      Gcc-6.3.1-arm-toolchain                         2.5.35          Gcc 6.3.1 arm toolchain
ni      EXTRAS                                          0.0.0           Extras
ni      IoT-Setup-Manager                               0.5.13          IoT Setup Manager
ni      TV-4.0-samsung-public                           2.6.3           TV Extensions-4.0
ni      TV-4.0-samsung-public-Emulator                  2.6.3           Emulator
ni      TV-4.0-samsung-public-WebAppDevelopment         2.6.3           Web app. development
ni      IOT-Headed-4.0                                  0.0.6           IOT-Headed-4.0
ni      IOT-Headed-4.0-NativeAppDevelopment             0.0.6           Native app. development (IDE)
ni      AdvancedIOT-Headed-4.0                          0.0.0           Advanced
ni      IOT-Headed-4.0-NativeAppDevelopment-CLI         0.0.6           Native app. development (CLI)
ni      IOT-Headless-4.0                                0.0.6           IOT-Headless-4.0
ni      IOT-Headless-4.0-NativeAppDevelopment           0.0.6           Native app. development (IDE)
ni      AdvancedIOT-Headless-4.0                        0.0.0           Advanced
ni      IOT-Headless-4.0-NativeAppDevelopment-CLI       0.0.6           Native app. development (CLI)
ni      cert-add-on                                     2.0.30          Samsung Certificate Extension
ni      tizen-wearable-extension                        1.3.0           Samsung Wearable Extension
ni      TV-samsung-extension-tools                      2.6.3           TV Extensions Tools
ni      TV-samsung-legacy-resources                     2.6.3           Repair (optional)
ni      TV-samsung-extension-resources                  2.6.3           Web app. tools
```
