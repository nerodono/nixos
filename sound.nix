{
  security.rtkit.enable = true;
  services.pipewire = {
    wireplumber.enable = true;

    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
}
