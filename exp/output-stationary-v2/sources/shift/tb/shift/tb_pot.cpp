// C-sim of the PoT IP with the real ap_int types, against a plain reference.
#include "../../src/settings.h"
#include <cstdio>
#include <cstdlib>
int main(){
  const int P=16,Q=64,M=144; static int8_t A[P*M]; static uint8_t B[M*Q]; static int32_t C[P*Q];
  srand(1); int errs=0;
  for(int i=0;i<P*M;i++){ int c=rand()%8, s=rand()%2; A[i]=(int8_t)((s<<3)|c); }
  for(int i=0;i<M*Q;i++) B[i]=rand()%256;
  mxm_execute_ursa(A,P,B,Q,C,M);
  for(int r=0;r<P;r++) for(int c=0;c<Q;c++){ long acc=0;
    for(int k=0;k<M;k++){ int code=A[r*M+k]&7, neg=(A[r*M+k]>>3)&1; long w=code?(1<<(code-1)):0; acc+=(neg?-w:w)*B[k*Q+c]; }
    acc = ((acc + (1<<19)) & 0xFFFFF) - (1<<19);   // 20-bit accumulator wrap
    if(acc!=C[r*Q+c]) errs++; }
  printf("SA_SIZE=%d errors=%d\n",SA_SIZE,errs); return errs!=0;
}
