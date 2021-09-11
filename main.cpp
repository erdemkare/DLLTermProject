#include <iostream>
#include <list>
#include <string>
#include "calculator.h"
#include <vector>
#include <vector>
using namespace std;

int main()
{
    calculator bigint;
    string s;
    ifstream inputfile("input.txt");
        string t;
        list<int> i;
        list<char> op;
        while (inputfile>>t)
        {
            if(!t.compare("*") || !t.compare("+"))
            {
                op.push_back(t[0]);
            }
            else
            {
                i.push_back(-1);
                for(int j= t.size() - 1; j >= 0; j--)
                    i.push_back(t[j] - '0');
            }
            if(op.back() == '*')
            {
                op.pop_back();
                if(!op.empty())
                    op.pop_back();
                inputfile>>t;
                i.push_back(-1);
                for(int j = t.size() - 1; j >= 0; j--)
                    i.push_back(t[j] - '0');
                bigint.updateBigInt(i);
                bigint.multiplyBigInt(i, op);
            }
        }
        inputfile.close();
        while(!op.empty())
        {
            bigint.updateBigInt(i);
            op.pop_back();
            bigint.addBigInt(i);
        }
        if(!i.empty())
            i.pop_front();
        bigint.write(i);
        cout<< "\nResult is: ";
        bigint.display();
        cout<< "\nCheckout Output.txt file\n";


}