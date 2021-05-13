#include "./imports.hpp"

struct test {
    float x;
    float y;
    test(float x, float y)
    {
        this->x = x;
        this->y = y;
    }
    test add(test other)
    {
        return test(this->x + other.x , this->y+other.y);
    }
    test operator+(test other)
    {
        return add(other);
    }
};

std::ostream& operator<<(std::ostream &stream , const test &other)
{
    stream << other.x << " " << "noice " << other.y << std::endl;
    return stream;
}


int main() {
    Lib lib;
    std::cout << "hello world" << std::endl;
    string userInput;
    getline(std::cin, userInput);
    string nice = lib.CaPiTaLiZe(userInput);

    test niceu(10,3);
    test no(5,13);
    test yayeet = niceu + no;

    std::cout << yayeet;
    std::cout << "Hello world this is addition" << 1 + 13 << std::endl;
    std::vector<int> noice;

    std::cout << nice << std::endl;
    return 0;
}
