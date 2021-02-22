f0 = figure('visible','on');
i=822%floor(random('unif',1,1269)) %initialize i in order to show copies related to random master
h1=rectangle('Position',[0 0 1 2],'EdgeColor',[1,1,1],'FaceColor',master_rgb(i,:));
h2=rectangle('Position',[1 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i,:));
h3=rectangle('Position',[2 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+1269,:));
h4=rectangle('Position',[3 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+2538,:));
h5=rectangle('Position',[4 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+3807,:));
h6=rectangle('Position',[5 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+5076,:));
hold on
x=0.5:1:5.5;
set(gca,'xTick',x)
set(gca,'xticklabel',{'Master',[target_output(i),target_output(i+1269),target_output(i+2538),target_output(i+3807),target_output(i+5076)]});
set(gca,'yticklabel',[]);

f1 = figure('visible','on');
h1=rectangle('Position',[0 0 1 2],'EdgeColor',[1,1,1],'FaceColor',master_rgb(i,:));
h2=rectangle('Position',[1 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i,:));
h3=rectangle('Position',[2 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+1269,:));
h4=rectangle('Position',[3 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+2538,:));
h5=rectangle('Position',[4 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+3807,:));
h6=rectangle('Position',[5 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+5076,:));
hold on
x=0.5:1:5.5;
set(gca,'xTick',x)
set(gca,'xticklabel',{'Master',[output_part1(i),output_part1(i+1269),output_part1(i+2538),output_part1(i+3807),output_part1(i+5076)]});
set(gca,'yticklabel',[]);

f2 = figure('visible','on');
h1=rectangle('Position',[0 0 1 2],'EdgeColor',[1,1,1],'FaceColor',master_rgb(i,:));
h2=rectangle('Position',[1 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i,:));
h3=rectangle('Position',[2 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+1269,:));
h4=rectangle('Position',[3 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+2538,:));
h5=rectangle('Position',[4 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+3807,:));
h6=rectangle('Position',[5 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+5076,:));
hold on
x=0.5:1:5.5;
set(gca,'xTick',x)
set(gca,'xticklabel',{'Master',[out(i),out(i+1269),out(i+2538),out(i+3807),out(i+5076)]});
set(gca,'yticklabel',[]);


f3 = figure('visible','on');
h1=rectangle('Position',[0 0 1 2],'EdgeColor',[1,1,1],'FaceColor',master_rgb(i,:));
h2=rectangle('Position',[1 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i,:));
h3=rectangle('Position',[2 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+1269,:));
h4=rectangle('Position',[3 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+2538,:));
h5=rectangle('Position',[4 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+3807,:));
h6=rectangle('Position',[5 0 1 2],'EdgeColor',[1,1,1],'FaceColor',copy_rgb(i+5076,:));
hold on
x=0.5:1:5.5;
set(gca,'xTick',x)
set(gca,'xticklabel',{'Master',[output_part2(i),output_part2(i+1269),output_part2(i+2538),output_part2(i+3807),output_part2(i+5076)]});
set(gca,'yticklabel',[]);
