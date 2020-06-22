function simpleGUIStaticTextBox
% Simple GUI with a static text box
% Format of call: Ch13Ex13
% Does not return any values
% Create the GUI but make it invisible for now while
% it is being initialized

f = figure('Visible', 'off','color','white','Position',...
    [300, 400, 500, 325]);
htext = uicontrol('Style','text','Position', ...
    [200, 150, 100, 25], 'String','Hello, Kevin!',...
    'BackgroundColor','white');

% Put a name on it and move to the center of the screen
set(f,'Name','Simple GUI')
movegui(f,'center')

% Now the GUI is made visible
set(f,'Visible','on');

end