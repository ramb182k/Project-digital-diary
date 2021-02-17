#include "outbyte.c"

int main()
{
    myputs("Ram's Diary\n\n");
    unsigned int r;
    while(1){
        myputs("Type in your thoughts!\n\n");
        r=readstatus();
        
        if(r==1){
            while(r!=150){
                unsigned int* p;
                unsigned int a;
                p=0;
                myputs("\nWhich day you want to read?\n\n");
                while(p<128){ 
                    p=readstatus();
                }
                p=65536;
                a=(*p);
                while(a!=0 & a!=200){
                   if(a<128) outbyte(a);
                    p=p+4;
                    a=(*p);
                }
            r=readstatus();
            }
        }
        if(r==2){
            unsigned int *p;
            unsigned int read=0;
            while(read<128) read=readstatus();
            r=0;
            p=65536;
            while(r>128) r=readstatus();
            while(r!=500){
                if(r<128 & r!=0){
                    (*p)=r;
                    outbyte(r);
                    p=p+4;
                }
                r=readstatus();
            }
            (*p)=200;
            
        }
     }
//     unsigned int *p;
//     p=65536;
//     *p=readstatus();
    
//     int a =20;
//     while(a--){
//         *p=readstatus();
//          p=p+4;
//     }
//     a=20;
//     p=65536;
//         while(a--){
//             outbyte(*p);
//             p=p+4;
            
//     }

//         for(;;);    
}


