{myvars, ...}: {
  users.users."${myvars.username}" = {
    home = "/Users/mooy";
    name = "${myvars.username}";
  };
}
