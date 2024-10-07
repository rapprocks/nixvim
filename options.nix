{ config, 
	pkgs, 
	inputs, 
	... 
}:
{
	programs.nixvim.opts = {
		clipboard = "unnamedplus";
		number = true;
		relativenumber = true;
		signcolumn = "yes";
		autoindent = true;
		tabstop = 2;
		shiftwidth = 2;
		updatetime = 100;
		termguicolors = true;
		mouse = "a";
		syntax = "on";
		splitright = true;
		splitbelow = true;
		swapfile = false;
		undofile = true;
		scrolloff = 999;
	};
}
