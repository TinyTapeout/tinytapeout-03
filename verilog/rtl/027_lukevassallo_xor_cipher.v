// Copyright 2023 Luke Vassallo
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

module lukevassallo_xor_cipher (
input [7:0] io_in,
output [7:0] io_out );

//xor_cipher uut (
//    .clk(io_in[0]),
//    .rst(io_in[1]),
  
//    .data_stream(io_in[2]),
//    .external_k(io_in[3]),
    
//    .e(io_out[0]),
//    .d(io_out[1]),
    
//    .cfg_en(io_in[4]),
//    .cfg_i(io_in[5]),
//    .en(io_in[6]),
//    .cfg_o(io_out[2]),
//    .heartbeat(io_out[7:3])
//);
dual_xor_stream_cipher #( .M(32) ) uut  (
    .clk(io_in[0]),
    .rst(io_in[1]),
    .tx_p(io_in[2]),
    .rx_e(io_in[3]),
    .cfg_en(io_in[4]),
    .cfg_i(io_in[5]),
    .tx_en(io_in[6]),
    .rx_en(io_in[7]),
    
    .tx_e(io_out[0]),
    .rx_p(io_out[1]),
    .dbg_tx_p(io_out[2]),
    .dbg_rx_e(io_out[3]), 

    .cfg_o(io_out[4]),
    .heartbeat(io_out[7:5])
);
endmodule
