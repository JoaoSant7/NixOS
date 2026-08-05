{ ... }:

{
  programs.git = {
    enable = true;

    config = {
      user.name = "JoaoSant7";
      user.email = "pedro_romano7@proton.me";

      init.defaultBranch = "main";
    };

  };
}
