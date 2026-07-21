#ifndef CONTROLER_HPP
#define CONTROLER_HPP

#include <iostream>
#include <map>
#include <cstring>
#include <vector>

class ControllerReader {
public:
    enum stick_key{
        lx,
        ly,
        rx,
        ry,
        stick_len
    };
    enum controller_key{
        L1, L2, L3,
        R1, R2, R3,
        PS, SH, OP,
        u, d, r, l,
        ci, cr, tri, sq,
        controller_len
    };
    float stick_val[stick_len] = {0.0f};
    bool controller_val[controller_len] = {false};

private:
    int buf_index = 0;
    char buf[64] = {0}; // ゼロ初期化
    int stick_count = 0;

    void btn_check()
    {
        size_t len = strlen(buf);

        if(len == controller_len){
            for(int i = 0; i < len; i++){
                controller_val[i] = buf[i] - '0';
            }
        }
    }

    void stick_in()
    {
        float read_value = 0.0f;

        if (buf_index > 0) {
            read_value = std::stof(buf);
        }

        stick_val[stick_count] = read_value;
    }

public:
    // メインの読み取り処理
    void read(char c)
    {
        if(c == ':') {
            buf[buf_index] = '\0';
            stick_in();
            buf_index = 0;
            stick_count++;
        }else if(c == '|'){
            buf[buf_index] = '\0';
            buf_index = 0;
            stick_count = 0;
            btn_check();
        }else{
            if(buf_index < sizeof(buf) - 1){
                buf[buf_index++] = c;
            }
        }
    }
};

#endif // CONTROLER_HPP