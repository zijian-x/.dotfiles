setl wig+=target/*,Cargo.lock

nn <buffer> <leader>mm <cmd>!cargo build<cr>
nn <buffer> <leader>mr <cmd>!cargo run<cr>
nn <buffer> <leader>mR :!cargo run -- 
nn <buffer> <leader>mch <cmd>!cargo check<cr>
nn <buffer> <leader>mcc <cmd>!cargo clean<cr>
nn <buffer> <leader>mt <cmd>!cargo test %:t:r<cr>
nn <buffer> <leader>mT <cmd>!cargo test<cr>
