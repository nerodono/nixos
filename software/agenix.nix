{ flake-inputs, config, system, ... }:
{
  environment.systemPackages = [
    flake-inputs.agenix.packages."${system}".default
  ];
}
