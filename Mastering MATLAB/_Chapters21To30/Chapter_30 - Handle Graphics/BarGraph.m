% MATLAB File: BarGraph.m

hbs_mm = bar(randn(1,6));
title('Figure 30.1 Random Bar Graph')
get(hbs_mm,'type')

hx_hbs = get(hbs_mm,'children');
get(hx_hbs,'type')