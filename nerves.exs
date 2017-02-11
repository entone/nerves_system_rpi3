use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

pkg = :nerves_system_rpi3

config pkg, :nerves_env,
  type: :system,
  version: version,
  compiler: :nerves_package,
  artifact_url: [
    "https://github.com/NationalAssociationOfRealtors/nerves_system_rpi3/releases/download/v#{version}/nerves_system_rpi3-v#{version}.tar.gz"
  ],
  platform: Nerves.System.BR,
  platform_config: [
    defconfig: "nerves_defconfig",
  ],
  checksum: [
    "nerves_defconfig",
    "rootfs-additions",
    "linux-4.4.defconfig",
    "fwup.conf",
    "cmdline.txt",
    "config.txt",
    "post-createfs.sh",
    "VERSION"
  ]
