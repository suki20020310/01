#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_signal_handler.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_in_r "../tv/cdatafile/c.shufflenet_block.autotvin_in_r.dat"
#define AUTOTB_TVOUT_in_r "../tv/cdatafile/c.shufflenet_block.autotvout_in_r.dat"
#define AUTOTB_TVIN_conv1_kernel "../tv/cdatafile/c.shufflenet_block.autotvin_conv1_kernel.dat"
#define AUTOTB_TVOUT_conv1_kernel "../tv/cdatafile/c.shufflenet_block.autotvout_conv1_kernel.dat"
#define AUTOTB_TVIN_dw_kernel "../tv/cdatafile/c.shufflenet_block.autotvin_dw_kernel.dat"
#define AUTOTB_TVOUT_dw_kernel "../tv/cdatafile/c.shufflenet_block.autotvout_dw_kernel.dat"
#define AUTOTB_TVIN_conv2_kernel "../tv/cdatafile/c.shufflenet_block.autotvin_conv2_kernel.dat"
#define AUTOTB_TVOUT_conv2_kernel "../tv/cdatafile/c.shufflenet_block.autotvout_conv2_kernel.dat"
#define AUTOTB_TVIN_bn1_mean "../tv/cdatafile/c.shufflenet_block.autotvin_bn1_mean.dat"
#define AUTOTB_TVOUT_bn1_mean "../tv/cdatafile/c.shufflenet_block.autotvout_bn1_mean.dat"
#define AUTOTB_TVIN_bn1_var "../tv/cdatafile/c.shufflenet_block.autotvin_bn1_var.dat"
#define AUTOTB_TVOUT_bn1_var "../tv/cdatafile/c.shufflenet_block.autotvout_bn1_var.dat"
#define AUTOTB_TVIN_bn1_gamma "../tv/cdatafile/c.shufflenet_block.autotvin_bn1_gamma.dat"
#define AUTOTB_TVOUT_bn1_gamma "../tv/cdatafile/c.shufflenet_block.autotvout_bn1_gamma.dat"
#define AUTOTB_TVIN_bn1_beta "../tv/cdatafile/c.shufflenet_block.autotvin_bn1_beta.dat"
#define AUTOTB_TVOUT_bn1_beta "../tv/cdatafile/c.shufflenet_block.autotvout_bn1_beta.dat"
#define AUTOTB_TVIN_bn2_mean "../tv/cdatafile/c.shufflenet_block.autotvin_bn2_mean.dat"
#define AUTOTB_TVOUT_bn2_mean "../tv/cdatafile/c.shufflenet_block.autotvout_bn2_mean.dat"
#define AUTOTB_TVIN_bn2_var "../tv/cdatafile/c.shufflenet_block.autotvin_bn2_var.dat"
#define AUTOTB_TVOUT_bn2_var "../tv/cdatafile/c.shufflenet_block.autotvout_bn2_var.dat"
#define AUTOTB_TVIN_bn2_gamma "../tv/cdatafile/c.shufflenet_block.autotvin_bn2_gamma.dat"
#define AUTOTB_TVOUT_bn2_gamma "../tv/cdatafile/c.shufflenet_block.autotvout_bn2_gamma.dat"
#define AUTOTB_TVIN_bn2_beta "../tv/cdatafile/c.shufflenet_block.autotvin_bn2_beta.dat"
#define AUTOTB_TVOUT_bn2_beta "../tv/cdatafile/c.shufflenet_block.autotvout_bn2_beta.dat"
#define AUTOTB_TVIN_bn3_mean "../tv/cdatafile/c.shufflenet_block.autotvin_bn3_mean.dat"
#define AUTOTB_TVOUT_bn3_mean "../tv/cdatafile/c.shufflenet_block.autotvout_bn3_mean.dat"
#define AUTOTB_TVIN_bn3_var "../tv/cdatafile/c.shufflenet_block.autotvin_bn3_var.dat"
#define AUTOTB_TVOUT_bn3_var "../tv/cdatafile/c.shufflenet_block.autotvout_bn3_var.dat"
#define AUTOTB_TVIN_bn3_gamma "../tv/cdatafile/c.shufflenet_block.autotvin_bn3_gamma.dat"
#define AUTOTB_TVOUT_bn3_gamma "../tv/cdatafile/c.shufflenet_block.autotvout_bn3_gamma.dat"
#define AUTOTB_TVIN_bn3_beta "../tv/cdatafile/c.shufflenet_block.autotvin_bn3_beta.dat"
#define AUTOTB_TVOUT_bn3_beta "../tv/cdatafile/c.shufflenet_block.autotvout_bn3_beta.dat"
#define AUTOTB_TVIN_out_r "../tv/cdatafile/c.shufflenet_block.autotvin_out_r.dat"
#define AUTOTB_TVOUT_out_r "../tv/cdatafile/c.shufflenet_block.autotvout_out_r.dat"
#define AUTOTB_TVIN_c_in "../tv/cdatafile/c.shufflenet_block.autotvin_c_in.dat"
#define AUTOTB_TVOUT_c_in "../tv/cdatafile/c.shufflenet_block.autotvout_c_in.dat"
#define AUTOTB_TVIN_c_out "../tv/cdatafile/c.shufflenet_block.autotvin_c_out.dat"
#define AUTOTB_TVOUT_c_out "../tv/cdatafile/c.shufflenet_block.autotvout_c_out.dat"
#define AUTOTB_TVIN_h_w "../tv/cdatafile/c.shufflenet_block.autotvin_h_w.dat"
#define AUTOTB_TVOUT_h_w "../tv/cdatafile/c.shufflenet_block.autotvout_h_w.dat"
#define AUTOTB_TVIN_c_reduce "../tv/cdatafile/c.shufflenet_block.autotvin_c_reduce.dat"
#define AUTOTB_TVOUT_c_reduce "../tv/cdatafile/c.shufflenet_block.autotvout_c_reduce.dat"
#define AUTOTB_TVIN_stride "../tv/cdatafile/c.shufflenet_block.autotvin_stride.dat"
#define AUTOTB_TVOUT_stride "../tv/cdatafile/c.shufflenet_block.autotvout_stride.dat"
#define AUTOTB_TVIN_gmem2 "../tv/cdatafile/c.shufflenet_block.autotvin_gmem2.dat"
#define AUTOTB_TVOUT_gmem2 "../tv/cdatafile/c.shufflenet_block.autotvout_gmem2.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_gmem2 "../tv/rtldatafile/rtl.shufflenet_block.autotvout_gmem2.dat"


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
  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put)
  {
    size_t wbytes = (strlen(data)-2+1)>>1;
    put = LE ? put : put+wbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + strlen(data) - 1;
    auto next = [&] () {
      char res = ord(*c);
      --c;
      return res;
    };
    size_t fbytes = (strlen(data)-2)>>1;
    for (size_t i = 0; i < fbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
    if (wbytes > fbytes) {
      *nextp() = next();
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t psize, size_t depth)
    {
      for (size_t i = 0; i < depth; ++i) {
        read(param, wbytes);
        param += psize;
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t psize, size_t depth, size_t skip)
    {
      param -= psize*skip;
      for (size_t i = 0; i < depth; ++i) {
        write(param, wbytes);
        param += psize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> depth;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = depth[0];
      } else {
        tcl.set(name[0], sum(depth));
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct FIFO {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t depth;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~FIFO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = port.offset[i];
        size_t depth = port.depth[i] - skip;
        port.reader->advance(wbytes*skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                          port.asize, depth);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                            port.asize, port.depth[i]);
        } else {
          port.reader->advance(wbytes*port.depth[i]);
        }
      }
    }
  }
#endif
  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        for (size_t j = 0; j < port.depth[i]-port.offset[i]; ++j) {
          if (char *s = port.reader->next()) {
            foundX |= RTLOutputCheckAndReplacement(s);
            unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
          }
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          for (size_t j = 0; j < port.depth[i]; ++j) {
            if (char *s = port.reader->next()) {
              foundX |= RTLOutputCheckAndReplacement(s);
              unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
            }
          }
        } else {
          port.reader->skip(port.depth[i]);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(FIFO &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      for (size_t j = 0; j < port.depth; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, (unsigned char*)port.param+j*port.asize);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(sum(port.depth));
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.depth[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      for (size_t j = 0; j < port.depth[i]; ++j) {
        std::string &&s {
          formatData((unsigned char*)port.param[i]+j*port.asize, port.width)
        };
        writer->next(s.data());
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(FIFO &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t j = 0; j < port.depth; ++j) {
      std::string &&s {
        formatData((unsigned char*)port.param+j*port.asize, port.width)
      };
      writer->next(s.data());
    }
    writer->end();
  }


  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void shufflenet_block_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, hls::sim::Byte<2>*, hls::sim::Byte<2>*, hls::sim::Byte<2>*, hls::sim::Byte<2>*, hls::sim::Byte<1>*);

extern "C"
void apatb_shufflenet_block_hw(void* __xlx_apatb_param_in_r, void* __xlx_apatb_param_conv1_kernel, void* __xlx_apatb_param_dw_kernel, void* __xlx_apatb_param_conv2_kernel, void* __xlx_apatb_param_bn1_mean, void* __xlx_apatb_param_bn1_var, void* __xlx_apatb_param_bn1_gamma, void* __xlx_apatb_param_bn1_beta, void* __xlx_apatb_param_bn2_mean, void* __xlx_apatb_param_bn2_var, void* __xlx_apatb_param_bn2_gamma, void* __xlx_apatb_param_bn2_beta, void* __xlx_apatb_param_bn3_mean, void* __xlx_apatb_param_bn3_var, void* __xlx_apatb_param_bn3_gamma, void* __xlx_apatb_param_bn3_beta, void* __xlx_apatb_param_out_r, hls::sim::Byte<2>* __xlx_apatb_param_c_in, hls::sim::Byte<2>* __xlx_apatb_param_c_out, hls::sim::Byte<2>* __xlx_apatb_param_h_w, hls::sim::Byte<2>* __xlx_apatb_param_c_reduce, hls::sim::Byte<1>* __xlx_apatb_param_stride)
{
  hls::sim::Byte<4> __xlx_offset_byte_param_in_r;
  static hls::sim::Register port0 {
    .name = "in_r",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_in_r),
#endif
  };
  port0.param = &__xlx_offset_byte_param_in_r;

  hls::sim::Byte<4> __xlx_offset_byte_param_conv1_kernel;
  static hls::sim::Register port1 {
    .name = "conv1_kernel",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_conv1_kernel),
#endif
  };
  port1.param = &__xlx_offset_byte_param_conv1_kernel;

  hls::sim::Byte<4> __xlx_offset_byte_param_dw_kernel;
  static hls::sim::Register port2 {
    .name = "dw_kernel",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_dw_kernel),
#endif
  };
  port2.param = &__xlx_offset_byte_param_dw_kernel;

  hls::sim::Byte<4> __xlx_offset_byte_param_conv2_kernel;
  static hls::sim::Register port3 {
    .name = "conv2_kernel",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_conv2_kernel),
#endif
  };
  port3.param = &__xlx_offset_byte_param_conv2_kernel;

  hls::sim::Byte<4> __xlx_offset_byte_param_bn1_mean;
  static hls::sim::Register port4 {
    .name = "bn1_mean",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bn1_mean),
#endif
  };
  port4.param = &__xlx_offset_byte_param_bn1_mean;

  hls::sim::Byte<4> __xlx_offset_byte_param_bn1_var;
  static hls::sim::Register port5 {
    .name = "bn1_var",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bn1_var),
#endif
  };
  port5.param = &__xlx_offset_byte_param_bn1_var;

  hls::sim::Byte<4> __xlx_offset_byte_param_bn1_gamma;
  static hls::sim::Register port6 {
    .name = "bn1_gamma",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bn1_gamma),
#endif
  };
  port6.param = &__xlx_offset_byte_param_bn1_gamma;

  hls::sim::Byte<4> __xlx_offset_byte_param_bn1_beta;
  static hls::sim::Register port7 {
    .name = "bn1_beta",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bn1_beta),
#endif
  };
  port7.param = &__xlx_offset_byte_param_bn1_beta;

  hls::sim::Byte<4> __xlx_offset_byte_param_bn2_mean;
  static hls::sim::Register port8 {
    .name = "bn2_mean",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bn2_mean),
#endif
  };
  port8.param = &__xlx_offset_byte_param_bn2_mean;

  hls::sim::Byte<4> __xlx_offset_byte_param_bn2_var;
  static hls::sim::Register port9 {
    .name = "bn2_var",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bn2_var),
#endif
  };
  port9.param = &__xlx_offset_byte_param_bn2_var;

  hls::sim::Byte<4> __xlx_offset_byte_param_bn2_gamma;
  static hls::sim::Register port10 {
    .name = "bn2_gamma",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bn2_gamma),
#endif
  };
  port10.param = &__xlx_offset_byte_param_bn2_gamma;

  hls::sim::Byte<4> __xlx_offset_byte_param_bn2_beta;
  static hls::sim::Register port11 {
    .name = "bn2_beta",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bn2_beta),
#endif
  };
  port11.param = &__xlx_offset_byte_param_bn2_beta;

  hls::sim::Byte<4> __xlx_offset_byte_param_bn3_mean;
  static hls::sim::Register port12 {
    .name = "bn3_mean",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bn3_mean),
#endif
  };
  port12.param = &__xlx_offset_byte_param_bn3_mean;

  hls::sim::Byte<4> __xlx_offset_byte_param_bn3_var;
  static hls::sim::Register port13 {
    .name = "bn3_var",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bn3_var),
#endif
  };
  port13.param = &__xlx_offset_byte_param_bn3_var;

  hls::sim::Byte<4> __xlx_offset_byte_param_bn3_gamma;
  static hls::sim::Register port14 {
    .name = "bn3_gamma",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bn3_gamma),
#endif
  };
  port14.param = &__xlx_offset_byte_param_bn3_gamma;

  hls::sim::Byte<4> __xlx_offset_byte_param_bn3_beta;
  static hls::sim::Register port15 {
    .name = "bn3_beta",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bn3_beta),
#endif
  };
  port15.param = &__xlx_offset_byte_param_bn3_beta;

  hls::sim::Byte<4> __xlx_offset_byte_param_out_r;
  static hls::sim::Register port16 {
    .name = "out_r",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_out_r),
#endif
  };
  port16.param = &__xlx_offset_byte_param_out_r;

  static hls::sim::Register port17 {
    .name = "c_in",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c_in),
#endif
  };
  port17.param = __xlx_apatb_param_c_in;

  static hls::sim::Register port18 {
    .name = "c_out",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c_out),
#endif
  };
  port18.param = __xlx_apatb_param_c_out;

  static hls::sim::Register port19 {
    .name = "h_w",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_w),
#endif
  };
  port19.param = __xlx_apatb_param_h_w;

  static hls::sim::Register port20 {
    .name = "c_reduce",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_c_reduce),
#endif
  };
  port20.param = __xlx_apatb_param_c_reduce;

  static hls::sim::Register port21 {
    .name = "stride",
    .width = 8,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_stride),
#endif
  };
  port21.param = __xlx_apatb_param_stride;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port22 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port22 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_gmem2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_gmem2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_gmem2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_gmem2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem2),
#endif
#endif
  };
  __xlx_offset_byte_param_in_r = 0*1;
  __xlx_offset_byte_param_conv1_kernel = 1073741824*1;
  __xlx_offset_byte_param_dw_kernel = 2147483648*1;
  __xlx_offset_byte_param_conv2_kernel = 3221225472*1;
  __xlx_offset_byte_param_bn1_mean = 4294967296*1;
  __xlx_offset_byte_param_bn1_var = 4296015872*1;
  __xlx_offset_byte_param_bn1_gamma = 4297064448*1;
  __xlx_offset_byte_param_bn1_beta = 4298113024*1;
  __xlx_offset_byte_param_bn2_mean = 4299161600*1;
  __xlx_offset_byte_param_bn2_var = 4300210176*1;
  __xlx_offset_byte_param_bn2_gamma = 4301258752*1;
  __xlx_offset_byte_param_bn2_beta = 4302307328*1;
  __xlx_offset_byte_param_bn3_mean = 4303355904*1;
  __xlx_offset_byte_param_bn3_var = 4304404480*1;
  __xlx_offset_byte_param_bn3_gamma = 4305453056*1;
  __xlx_offset_byte_param_bn3_beta = 4306501632*1;
  __xlx_offset_byte_param_out_r = 4307550208*1;
  port22.param = { __xlx_apatb_param_in_r, __xlx_apatb_param_conv1_kernel, __xlx_apatb_param_dw_kernel, __xlx_apatb_param_conv2_kernel, __xlx_apatb_param_bn1_mean, __xlx_apatb_param_bn1_var, __xlx_apatb_param_bn1_gamma, __xlx_apatb_param_bn1_beta, __xlx_apatb_param_bn2_mean, __xlx_apatb_param_bn2_var, __xlx_apatb_param_bn2_gamma, __xlx_apatb_param_bn2_beta, __xlx_apatb_param_bn3_mean, __xlx_apatb_param_bn3_var, __xlx_apatb_param_bn3_gamma, __xlx_apatb_param_bn3_beta, __xlx_apatb_param_out_r };
  port22.depth = { 1073741824, 1073741824, 1073741824, 1073741824, 1048576, 1048576, 1048576, 1048576, 1048576, 1048576, 1048576, 1048576, 1048576, 1048576, 1048576, 1048576, 1073741824 };
  port22.offset = { 0, 1073741824, 2147483648, 3221225472, 4294967296, 4296015872, 4297064448, 4298113024, 4299161600, 4300210176, 4301258752, 4302307328, 4303355904, 4304404480, 4305453056, 4306501632, 4307550208 };
  port22.hasWrite = { true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true };

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port22);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    CodeState = CALL_C_DUT;
    shufflenet_block_hw_stub_wrapper(__xlx_apatb_param_in_r, __xlx_apatb_param_conv1_kernel, __xlx_apatb_param_dw_kernel, __xlx_apatb_param_conv2_kernel, __xlx_apatb_param_bn1_mean, __xlx_apatb_param_bn1_var, __xlx_apatb_param_bn1_gamma, __xlx_apatb_param_bn1_beta, __xlx_apatb_param_bn2_mean, __xlx_apatb_param_bn2_var, __xlx_apatb_param_bn2_gamma, __xlx_apatb_param_bn2_beta, __xlx_apatb_param_bn3_mean, __xlx_apatb_param_bn3_var, __xlx_apatb_param_bn3_gamma, __xlx_apatb_param_bn3_beta, __xlx_apatb_param_out_r, __xlx_apatb_param_c_in, __xlx_apatb_param_c_out, __xlx_apatb_param_h_w, __xlx_apatb_param_c_reduce, __xlx_apatb_param_stride);
    CodeState = DUMP_OUTPUTS;
    dump(port22, port22.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}