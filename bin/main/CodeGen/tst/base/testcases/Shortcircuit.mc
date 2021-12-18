bool f() {
   putString("Error: && shortcircuit evaluation not done!\n");
   return false;
}

bool ff() {
   putString("Error: || shortcircuit evaluation not done!\n");
   return false;
}

int main()
{
  if (false && f()){ return 1;}

  if (true || ff()){return 1;}

}

