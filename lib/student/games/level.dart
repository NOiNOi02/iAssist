
int level = 1; 


int getCurrentLevel(){
  return level;
}
void setCurrentLevel(bool status){
  if (status){
    level++;  
  }else{
    level--;
  }
}