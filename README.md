# Leo's NixOS configuration
[![Written in Nix](https://img.shields.io/badge/code-nix-blue)](https://nixos.org/)
[![NixOS Unstable](https://img.shields.io/badge/NixOS-25.11-blue.svg?style=flat-square&logo=NixOS&logoColor=white)](https://nixos.org)
> My personal NixOS configuration files.

## What is Nixos?
Nix is a declarative package manager/coding language which alows me to define my computer software using the nix programming language. Nixos is the linux distribution built on Nix
It contains hardware/software configurations for setting up my personal/work machines.

> [!IMPORTANT]
> As of this moment, I haven't yet reached the point of deploying VMs using Nix, meaning that this configuration **IS INTENDED TO BE USED FOR PERSONAL USE ONLY**.

Please don't try to copy-paste the configuration on your own machine and try to understand it first for the following reasons:
  1. It simply won't work, due to the difference in hardware configuration between my machines and yours (for example gpu drivers, device IDs)
  2. You won't learn much doing that, and later when you want to change something in your config it'll be harder for you to achieve that
  3. This config structure is made by my personal taste, not yours ... and if some certain functionalities are either missing or badly implemented - then you would need to fork my repo and make your desired change in your version. 
