#include <iostream>

using namespace std;

void showbits(unsigned long long b){

long i;
for(i=128; i>=0; i--)
	{
	    long long mask =1;
	    
	    mask =mask<<i;
	    
	       if((b&mask)!=0) //use bitwise & for mask and b
	       { 
	           cout<<"1";
	           
	       }
	else 
	{
	    cout<<"0";
	}
	    
	

    //spacing between exponent and mantissa
        if(i == 128) {cout<<" ";}
	else if(i == 117){ cout<<" ";}
	}
}
//create a union named thing
 union double_entendre {
        double f;
        long long i;
    } thing;

int main(){

double x;
std::cout << "Enter a number: "; //ask user for input
scanf("%lf", &thing.f); //read as a double and go to the address of double
showbits(thing.i); //print the memory of long
}