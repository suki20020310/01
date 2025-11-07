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
extern "C" void shufflenet_block(Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, __cosim_s2__, __cosim_s2__, __cosim_s2__, __cosim_s2__, __cosim_s1__);
extern "C" void apatb_shufflenet_block_hw(volatile void * __xlx_apatb_param_in_r, volatile void * __xlx_apatb_param_conv1_kernel, volatile void * __xlx_apatb_param_dw_kernel, volatile void * __xlx_apatb_param_conv2_kernel, volatile void * __xlx_apatb_param_bn1_mean, volatile void * __xlx_apatb_param_bn1_var, volatile void * __xlx_apatb_param_bn1_gamma, volatile void * __xlx_apatb_param_bn1_beta, volatile void * __xlx_apatb_param_bn2_mean, volatile void * __xlx_apatb_param_bn2_var, volatile void * __xlx_apatb_param_bn2_gamma, volatile void * __xlx_apatb_param_bn2_beta, volatile void * __xlx_apatb_param_bn3_mean, volatile void * __xlx_apatb_param_bn3_var, volatile void * __xlx_apatb_param_bn3_gamma, volatile void * __xlx_apatb_param_bn3_beta, volatile void * __xlx_apatb_param_out_r, __cosim_s2__* __xlx_apatb_param_c_in, __cosim_s2__* __xlx_apatb_param_c_out, __cosim_s2__* __xlx_apatb_param_h_w, __cosim_s2__* __xlx_apatb_param_c_reduce, __cosim_s1__* __xlx_apatb_param_stride) {
using hls::sim::createStream;
  // Collect __xlx_in_r__tmp_vec
std::vector<Byte<1>> __xlx_in_r__tmp_vec;
for (size_t i = 0; i < 1073741824; ++i){
__xlx_in_r__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_in_r)[i]);
}
  int __xlx_size_param_in_r = 1073741824;
  int __xlx_offset_param_in_r = 0;
  int __xlx_offset_byte_param_in_r = 0*1;
  // Collect __xlx_conv1_kernel__tmp_vec
std::vector<Byte<1>> __xlx_conv1_kernel__tmp_vec;
for (size_t i = 0; i < 1073741824; ++i){
__xlx_conv1_kernel__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_conv1_kernel)[i]);
}
  int __xlx_size_param_conv1_kernel = 1073741824;
  int __xlx_offset_param_conv1_kernel = 0;
  int __xlx_offset_byte_param_conv1_kernel = 0*1;
  // Collect __xlx_dw_kernel__tmp_vec
std::vector<Byte<1>> __xlx_dw_kernel__tmp_vec;
for (size_t i = 0; i < 1073741824; ++i){
__xlx_dw_kernel__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_dw_kernel)[i]);
}
  int __xlx_size_param_dw_kernel = 1073741824;
  int __xlx_offset_param_dw_kernel = 0;
  int __xlx_offset_byte_param_dw_kernel = 0*1;
  // Collect __xlx_conv2_kernel__tmp_vec
std::vector<Byte<1>> __xlx_conv2_kernel__tmp_vec;
for (size_t i = 0; i < 1073741824; ++i){
__xlx_conv2_kernel__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_conv2_kernel)[i]);
}
  int __xlx_size_param_conv2_kernel = 1073741824;
  int __xlx_offset_param_conv2_kernel = 0;
  int __xlx_offset_byte_param_conv2_kernel = 0*1;
  // Collect __xlx_bn1_mean_bn1_var_bn1_gamma_bn1_beta__tmp_vec
std::vector<Byte<1>> __xlx_bn1_mean_bn1_var_bn1_gamma_bn1_beta__tmp_vec;
for (size_t i = 0; i < 1048576; ++i){
__xlx_bn1_mean_bn1_var_bn1_gamma_bn1_beta__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_bn1_mean)[i]);
}
  int __xlx_size_param_bn1_mean = 1048576;
  int __xlx_offset_param_bn1_mean = 0;
  int __xlx_offset_byte_param_bn1_mean = 0*1;
for (size_t i = 0; i < 1048576; ++i){
__xlx_bn1_mean_bn1_var_bn1_gamma_bn1_beta__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_bn1_var)[i]);
}
  int __xlx_size_param_bn1_var = 1048576;
  int __xlx_offset_param_bn1_var = 1048576;
  int __xlx_offset_byte_param_bn1_var = 1048576*1;
for (size_t i = 0; i < 1048576; ++i){
__xlx_bn1_mean_bn1_var_bn1_gamma_bn1_beta__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_bn1_gamma)[i]);
}
  int __xlx_size_param_bn1_gamma = 1048576;
  int __xlx_offset_param_bn1_gamma = 2097152;
  int __xlx_offset_byte_param_bn1_gamma = 2097152*1;
for (size_t i = 0; i < 1048576; ++i){
__xlx_bn1_mean_bn1_var_bn1_gamma_bn1_beta__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_bn1_beta)[i]);
}
  int __xlx_size_param_bn1_beta = 1048576;
  int __xlx_offset_param_bn1_beta = 3145728;
  int __xlx_offset_byte_param_bn1_beta = 3145728*1;
  // Collect __xlx_bn2_mean_bn2_var_bn2_gamma_bn2_beta__tmp_vec
std::vector<Byte<1>> __xlx_bn2_mean_bn2_var_bn2_gamma_bn2_beta__tmp_vec;
for (size_t i = 0; i < 1048576; ++i){
__xlx_bn2_mean_bn2_var_bn2_gamma_bn2_beta__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_bn2_mean)[i]);
}
  int __xlx_size_param_bn2_mean = 1048576;
  int __xlx_offset_param_bn2_mean = 0;
  int __xlx_offset_byte_param_bn2_mean = 0*1;
for (size_t i = 0; i < 1048576; ++i){
__xlx_bn2_mean_bn2_var_bn2_gamma_bn2_beta__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_bn2_var)[i]);
}
  int __xlx_size_param_bn2_var = 1048576;
  int __xlx_offset_param_bn2_var = 1048576;
  int __xlx_offset_byte_param_bn2_var = 1048576*1;
for (size_t i = 0; i < 1048576; ++i){
__xlx_bn2_mean_bn2_var_bn2_gamma_bn2_beta__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_bn2_gamma)[i]);
}
  int __xlx_size_param_bn2_gamma = 1048576;
  int __xlx_offset_param_bn2_gamma = 2097152;
  int __xlx_offset_byte_param_bn2_gamma = 2097152*1;
for (size_t i = 0; i < 1048576; ++i){
__xlx_bn2_mean_bn2_var_bn2_gamma_bn2_beta__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_bn2_beta)[i]);
}
  int __xlx_size_param_bn2_beta = 1048576;
  int __xlx_offset_param_bn2_beta = 3145728;
  int __xlx_offset_byte_param_bn2_beta = 3145728*1;
  // Collect __xlx_bn3_mean_bn3_var_bn3_gamma_bn3_beta__tmp_vec
std::vector<Byte<1>> __xlx_bn3_mean_bn3_var_bn3_gamma_bn3_beta__tmp_vec;
for (size_t i = 0; i < 1048576; ++i){
__xlx_bn3_mean_bn3_var_bn3_gamma_bn3_beta__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_bn3_mean)[i]);
}
  int __xlx_size_param_bn3_mean = 1048576;
  int __xlx_offset_param_bn3_mean = 0;
  int __xlx_offset_byte_param_bn3_mean = 0*1;
for (size_t i = 0; i < 1048576; ++i){
__xlx_bn3_mean_bn3_var_bn3_gamma_bn3_beta__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_bn3_var)[i]);
}
  int __xlx_size_param_bn3_var = 1048576;
  int __xlx_offset_param_bn3_var = 1048576;
  int __xlx_offset_byte_param_bn3_var = 1048576*1;
for (size_t i = 0; i < 1048576; ++i){
__xlx_bn3_mean_bn3_var_bn3_gamma_bn3_beta__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_bn3_gamma)[i]);
}
  int __xlx_size_param_bn3_gamma = 1048576;
  int __xlx_offset_param_bn3_gamma = 2097152;
  int __xlx_offset_byte_param_bn3_gamma = 2097152*1;
for (size_t i = 0; i < 1048576; ++i){
__xlx_bn3_mean_bn3_var_bn3_gamma_bn3_beta__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_bn3_beta)[i]);
}
  int __xlx_size_param_bn3_beta = 1048576;
  int __xlx_offset_param_bn3_beta = 3145728;
  int __xlx_offset_byte_param_bn3_beta = 3145728*1;
  // Collect __xlx_out_r__tmp_vec
std::vector<Byte<1>> __xlx_out_r__tmp_vec;
for (size_t i = 0; i < 1073741824; ++i){
__xlx_out_r__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_out_r)[i]);
}
  int __xlx_size_param_out_r = 1073741824;
  int __xlx_offset_param_out_r = 0;
  int __xlx_offset_byte_param_out_r = 0*1;
  // DUT call
  shufflenet_block(__xlx_in_r__tmp_vec.data(), __xlx_conv1_kernel__tmp_vec.data(), __xlx_dw_kernel__tmp_vec.data(), __xlx_conv2_kernel__tmp_vec.data(), __xlx_bn1_mean_bn1_var_bn1_gamma_bn1_beta__tmp_vec.data(), __xlx_bn2_mean_bn2_var_bn2_gamma_bn2_beta__tmp_vec.data(), __xlx_bn3_mean_bn3_var_bn3_gamma_bn3_beta__tmp_vec.data(), __xlx_out_r__tmp_vec.data(), __xlx_offset_byte_param_in_r, __xlx_offset_byte_param_conv1_kernel, __xlx_offset_byte_param_dw_kernel, __xlx_offset_byte_param_conv2_kernel, __xlx_offset_byte_param_bn1_mean, __xlx_offset_byte_param_bn1_var, __xlx_offset_byte_param_bn1_gamma, __xlx_offset_byte_param_bn1_beta, __xlx_offset_byte_param_bn2_mean, __xlx_offset_byte_param_bn2_var, __xlx_offset_byte_param_bn2_gamma, __xlx_offset_byte_param_bn2_beta, __xlx_offset_byte_param_bn3_mean, __xlx_offset_byte_param_bn3_var, __xlx_offset_byte_param_bn3_gamma, __xlx_offset_byte_param_bn3_beta, __xlx_offset_byte_param_out_r, *__xlx_apatb_param_c_in, *__xlx_apatb_param_c_out, *__xlx_apatb_param_h_w, *__xlx_apatb_param_c_reduce, *__xlx_apatb_param_stride);
// print __xlx_apatb_param_in_r
for (size_t i = 0; i < __xlx_size_param_in_r; ++i) {
((Byte<1>*)__xlx_apatb_param_in_r)[i] = __xlx_in_r__tmp_vec[__xlx_offset_param_in_r+i];
}
// print __xlx_apatb_param_conv1_kernel
for (size_t i = 0; i < __xlx_size_param_conv1_kernel; ++i) {
((Byte<1>*)__xlx_apatb_param_conv1_kernel)[i] = __xlx_conv1_kernel__tmp_vec[__xlx_offset_param_conv1_kernel+i];
}
// print __xlx_apatb_param_dw_kernel
for (size_t i = 0; i < __xlx_size_param_dw_kernel; ++i) {
((Byte<1>*)__xlx_apatb_param_dw_kernel)[i] = __xlx_dw_kernel__tmp_vec[__xlx_offset_param_dw_kernel+i];
}
// print __xlx_apatb_param_conv2_kernel
for (size_t i = 0; i < __xlx_size_param_conv2_kernel; ++i) {
((Byte<1>*)__xlx_apatb_param_conv2_kernel)[i] = __xlx_conv2_kernel__tmp_vec[__xlx_offset_param_conv2_kernel+i];
}
// print __xlx_apatb_param_bn1_mean
for (size_t i = 0; i < __xlx_size_param_bn1_mean; ++i) {
((Byte<1>*)__xlx_apatb_param_bn1_mean)[i] = __xlx_bn1_mean_bn1_var_bn1_gamma_bn1_beta__tmp_vec[__xlx_offset_param_bn1_mean+i];
}
// print __xlx_apatb_param_bn1_var
for (size_t i = 0; i < __xlx_size_param_bn1_var; ++i) {
((Byte<1>*)__xlx_apatb_param_bn1_var)[i] = __xlx_bn1_mean_bn1_var_bn1_gamma_bn1_beta__tmp_vec[__xlx_offset_param_bn1_var+i];
}
// print __xlx_apatb_param_bn1_gamma
for (size_t i = 0; i < __xlx_size_param_bn1_gamma; ++i) {
((Byte<1>*)__xlx_apatb_param_bn1_gamma)[i] = __xlx_bn1_mean_bn1_var_bn1_gamma_bn1_beta__tmp_vec[__xlx_offset_param_bn1_gamma+i];
}
// print __xlx_apatb_param_bn1_beta
for (size_t i = 0; i < __xlx_size_param_bn1_beta; ++i) {
((Byte<1>*)__xlx_apatb_param_bn1_beta)[i] = __xlx_bn1_mean_bn1_var_bn1_gamma_bn1_beta__tmp_vec[__xlx_offset_param_bn1_beta+i];
}
// print __xlx_apatb_param_bn2_mean
for (size_t i = 0; i < __xlx_size_param_bn2_mean; ++i) {
((Byte<1>*)__xlx_apatb_param_bn2_mean)[i] = __xlx_bn2_mean_bn2_var_bn2_gamma_bn2_beta__tmp_vec[__xlx_offset_param_bn2_mean+i];
}
// print __xlx_apatb_param_bn2_var
for (size_t i = 0; i < __xlx_size_param_bn2_var; ++i) {
((Byte<1>*)__xlx_apatb_param_bn2_var)[i] = __xlx_bn2_mean_bn2_var_bn2_gamma_bn2_beta__tmp_vec[__xlx_offset_param_bn2_var+i];
}
// print __xlx_apatb_param_bn2_gamma
for (size_t i = 0; i < __xlx_size_param_bn2_gamma; ++i) {
((Byte<1>*)__xlx_apatb_param_bn2_gamma)[i] = __xlx_bn2_mean_bn2_var_bn2_gamma_bn2_beta__tmp_vec[__xlx_offset_param_bn2_gamma+i];
}
// print __xlx_apatb_param_bn2_beta
for (size_t i = 0; i < __xlx_size_param_bn2_beta; ++i) {
((Byte<1>*)__xlx_apatb_param_bn2_beta)[i] = __xlx_bn2_mean_bn2_var_bn2_gamma_bn2_beta__tmp_vec[__xlx_offset_param_bn2_beta+i];
}
// print __xlx_apatb_param_bn3_mean
for (size_t i = 0; i < __xlx_size_param_bn3_mean; ++i) {
((Byte<1>*)__xlx_apatb_param_bn3_mean)[i] = __xlx_bn3_mean_bn3_var_bn3_gamma_bn3_beta__tmp_vec[__xlx_offset_param_bn3_mean+i];
}
// print __xlx_apatb_param_bn3_var
for (size_t i = 0; i < __xlx_size_param_bn3_var; ++i) {
((Byte<1>*)__xlx_apatb_param_bn3_var)[i] = __xlx_bn3_mean_bn3_var_bn3_gamma_bn3_beta__tmp_vec[__xlx_offset_param_bn3_var+i];
}
// print __xlx_apatb_param_bn3_gamma
for (size_t i = 0; i < __xlx_size_param_bn3_gamma; ++i) {
((Byte<1>*)__xlx_apatb_param_bn3_gamma)[i] = __xlx_bn3_mean_bn3_var_bn3_gamma_bn3_beta__tmp_vec[__xlx_offset_param_bn3_gamma+i];
}
// print __xlx_apatb_param_bn3_beta
for (size_t i = 0; i < __xlx_size_param_bn3_beta; ++i) {
((Byte<1>*)__xlx_apatb_param_bn3_beta)[i] = __xlx_bn3_mean_bn3_var_bn3_gamma_bn3_beta__tmp_vec[__xlx_offset_param_bn3_beta+i];
}
// print __xlx_apatb_param_out_r
for (size_t i = 0; i < __xlx_size_param_out_r; ++i) {
((Byte<1>*)__xlx_apatb_param_out_r)[i] = __xlx_out_r__tmp_vec[__xlx_offset_param_out_r+i];
}
}
