#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
struct __cosim_s2__ { char data[2]; };
struct __cosim_s1__ { char data[1]; };
extern "C" void conv_bn_relu(Byte<4>*, int, __cosim_s2__, __cosim_s2__, __cosim_s2__, __cosim_s2__, __cosim_s1__, __cosim_s1__, __cosim_s1__, int, int, int, int, int, int, int);
extern "C" void apatb_conv_bn_relu_hw(int __xlx_apatb_param_conv_type, __cosim_s2__* __xlx_apatb_param_C_in, __cosim_s2__* __xlx_apatb_param_H_in, __cosim_s2__* __xlx_apatb_param_W_in, __cosim_s2__* __xlx_apatb_param_C_out, __cosim_s1__* __xlx_apatb_param_kernel_size, __cosim_s1__* __xlx_apatb_param_stride, __cosim_s1__* __xlx_apatb_param_padding, volatile void * __xlx_apatb_param_feature_in, volatile void * __xlx_apatb_param_conv_kernel, volatile void * __xlx_apatb_param_bn_mean, volatile void * __xlx_apatb_param_bn_var, volatile void * __xlx_apatb_param_bn_gamma, volatile void * __xlx_apatb_param_bn_beta, volatile void * __xlx_apatb_param_feature_out) {
using hls::sim::createStream;
  // Collect __xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec
std::vector<Byte<4>> __xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec;
for (size_t i = 0; i < 1073741823; ++i){
__xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_feature_in)[i]);
}
  int __xlx_size_param_feature_in = 1073741823;
  int __xlx_offset_param_feature_in = 0;
  int __xlx_offset_byte_param_feature_in = 0*4;
for (size_t i = 0; i < 1073741823; ++i){
__xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_conv_kernel)[i]);
}
  int __xlx_size_param_conv_kernel = 1073741823;
  int __xlx_offset_param_conv_kernel = 1073741823;
  int __xlx_offset_byte_param_conv_kernel = 1073741823*4;
for (size_t i = 0; i < 1073741823; ++i){
__xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_bn_mean)[i]);
}
  int __xlx_size_param_bn_mean = 1073741823;
  int __xlx_offset_param_bn_mean = 2147483646;
  int __xlx_offset_byte_param_bn_mean = 2147483646*4;
for (size_t i = 0; i < 1073741823; ++i){
__xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_bn_var)[i]);
}
  int __xlx_size_param_bn_var = 1073741823;
  int __xlx_offset_param_bn_var = 3221225469;
  int __xlx_offset_byte_param_bn_var = 3221225469*4;
for (size_t i = 0; i < 1073741823; ++i){
__xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_bn_gamma)[i]);
}
  int __xlx_size_param_bn_gamma = 1073741823;
  int __xlx_offset_param_bn_gamma = 4294967292;
  int __xlx_offset_byte_param_bn_gamma = 4294967292*4;
for (size_t i = 0; i < 1073741823; ++i){
__xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_bn_beta)[i]);
}
  int __xlx_size_param_bn_beta = 1073741823;
  int __xlx_offset_param_bn_beta = 1073741819;
  int __xlx_offset_byte_param_bn_beta = 1073741819*4;
for (size_t i = 0; i < 1073741823; ++i){
__xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_feature_out)[i]);
}
  int __xlx_size_param_feature_out = 1073741823;
  int __xlx_offset_param_feature_out = 2147483642;
  int __xlx_offset_byte_param_feature_out = 2147483642*4;
  // DUT call
  conv_bn_relu(__xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec.data(), __xlx_apatb_param_conv_type, *__xlx_apatb_param_C_in, *__xlx_apatb_param_H_in, *__xlx_apatb_param_W_in, *__xlx_apatb_param_C_out, *__xlx_apatb_param_kernel_size, *__xlx_apatb_param_stride, *__xlx_apatb_param_padding, __xlx_offset_byte_param_feature_in, __xlx_offset_byte_param_conv_kernel, __xlx_offset_byte_param_bn_mean, __xlx_offset_byte_param_bn_var, __xlx_offset_byte_param_bn_gamma, __xlx_offset_byte_param_bn_beta, __xlx_offset_byte_param_feature_out);
// print __xlx_apatb_param_feature_in
for (size_t i = 0; i < __xlx_size_param_feature_in; ++i) {
((Byte<4>*)__xlx_apatb_param_feature_in)[i] = __xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec[__xlx_offset_param_feature_in+i];
}
// print __xlx_apatb_param_conv_kernel
for (size_t i = 0; i < __xlx_size_param_conv_kernel; ++i) {
((Byte<4>*)__xlx_apatb_param_conv_kernel)[i] = __xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec[__xlx_offset_param_conv_kernel+i];
}
// print __xlx_apatb_param_bn_mean
for (size_t i = 0; i < __xlx_size_param_bn_mean; ++i) {
((Byte<4>*)__xlx_apatb_param_bn_mean)[i] = __xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec[__xlx_offset_param_bn_mean+i];
}
// print __xlx_apatb_param_bn_var
for (size_t i = 0; i < __xlx_size_param_bn_var; ++i) {
((Byte<4>*)__xlx_apatb_param_bn_var)[i] = __xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec[__xlx_offset_param_bn_var+i];
}
// print __xlx_apatb_param_bn_gamma
for (size_t i = 0; i < __xlx_size_param_bn_gamma; ++i) {
((Byte<4>*)__xlx_apatb_param_bn_gamma)[i] = __xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec[__xlx_offset_param_bn_gamma+i];
}
// print __xlx_apatb_param_bn_beta
for (size_t i = 0; i < __xlx_size_param_bn_beta; ++i) {
((Byte<4>*)__xlx_apatb_param_bn_beta)[i] = __xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec[__xlx_offset_param_bn_beta+i];
}
// print __xlx_apatb_param_feature_out
for (size_t i = 0; i < __xlx_size_param_feature_out; ++i) {
((Byte<4>*)__xlx_apatb_param_feature_out)[i] = __xlx_feature_in_conv_kernel_bn_mean_bn_var_bn_gamma_bn_beta_feature_out__tmp_vec[__xlx_offset_param_feature_out+i];
}
}
