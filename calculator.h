//
// Created by erdem on 2.05.2020.
//

#include <iostream>
#include <list>
#include <string>
#include <fstream>

#ifndef ERDEMERDEM20170702081TERMPROJECT_CALCULATOR_H
#define ERDEMERDEM20170702081TERMPROJECT_CALCULATOR_H

using namespace std;
class calculator {
private:
    std::list<int> num1;
    std::list<int> num2;
    int d1, d2, carry, total;

public:
    calculator()
    {
        d1 =0;
        d2 =0;
        carry =0;
        total =0;
    }

    void freeBigInt()
    {
        num1.clear();
        num2.clear();
    }

    void createBigInt(std::list<int> &a)
    {
        while(a.back()!= -1)
        {
            num1.push_back(a.back());
            a.pop_back();
        }
        a.pop_back();
        while(a.back()!= -1)
        {
            num2.push_back(a.back());
            a.pop_back();
        }
        a.pop_back();
    }

    void updateBigInt(std::list<int> &a)
    {
        freeBigInt();
        createBigInt(a);
    }

    void addBigInt(std::list<int> &i)
    {
        int a;
        int b;
        bool flag=false;
        if(num1.size() < num2.size())
        {
            a= num1.size();
            b= num2.size();
            flag=true;
        }
        else
        {
            a= num2.size();
            b= num1.size();
        }
        carry=0;
        i.push_back(-1);
        for(int j=0; j<a; j++)
        {
            d1= num1.back();
            d2= num2.back();
            add2dgt();
            i.push_back(total);
            num2.pop_back();
            num1.pop_back();
        }
        if(flag)
        {
            d1= 0;
            for(int j=0; j< (b-a); j++)
            {
                d2= num2.back();
                add2dgt();
                i.push_back(total);
                num2.pop_back();
            }
        }
        else
        {
            d2=0;
            for(int j=0; j< (b-a); j++)
            {
                d1= num1.back();
                add2dgt();
                i.push_back(total);
                num1.pop_back();
            }
        }
        if(carry!= 0)
            i.push_back(carry);
    }

    void add2dgt()
    {
        total = d1 + d2 + carry;
        carry = total / 10;
        if(total >= 10)
            total= total % 10;
    }

    void multiplyBigInt(std::list<int> &i, std::list<char> &op)
    {
        int counter= -1;
        if(num1.size() > num2.size())
            num1.swap(num2);
        for(std::list<int>::reverse_iterator rita=num1.rbegin(); rita!=num1.rend(); ++rita)
        {
            counter++;
            carry=0;
            if(!i.empty())
                op.push_back('+');
            i.push_back(-1);
            d1= *rita;
            for(int j=0; j<counter; j++)
            {
                i.push_back(0);
            }
            for(std::list<int>::reverse_iterator ritb=num2.rbegin(); ritb!=num2.rend(); ++ritb)
            {
                d2= *ritb;
                mltp2dgt();
                i.push_back(total);
            }
            if(carry!= 0)
                i.push_back(carry);
        }
        for(int j=0; j<counter; j++)
        {
            updateBigInt(i);
            op.pop_back();
            addBigInt(i);
        }
    }

    void mltp2dgt()
    {
        total = (d1 * d2) + carry;
        carry = total / 10;
        if(total >= 10)
            total= total % 10;
    }

    void write(std::list<int> &a)
    {
        std::ofstream outfile;
        outfile.open ("output.txt");
        bool flag=true;

        while(!a.empty())
        {
            if(flag && a.back()== 0)
            {
                a.pop_back();
                continue;
            }
            else flag= false;
            outfile << a.back();
            a.pop_back();
        }
        if(flag)
            outfile << 0;
        outfile.close();
    }
    void display()
    {
        string getcontent;
        ifstream openfile ("output.txt");
        if(openfile.is_open())
        {
            while(! openfile.eof())
            {
                getline(openfile, getcontent);
                cout << getcontent << endl;
            }
        }
    }
};



#endif ERDEMERDEM20170702081TERMPROJECT_CALCULATOR_H

