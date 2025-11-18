int max(int* p, int n){
    int i = 1;
    int max = p[0];
    while(n < i){
        if(max < p[i]){
            max = p[i];
        }
        i++;
    }
}