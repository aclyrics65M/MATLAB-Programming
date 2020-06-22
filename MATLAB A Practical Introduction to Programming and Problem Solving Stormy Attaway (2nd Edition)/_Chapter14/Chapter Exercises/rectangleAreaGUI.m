function rectangleAreaGUI
% GUI to calculate the area of a rectangle
% Format of call: Ch13Ex16
% Does not return any values
% Create the GUI but make it invisible for now while
% it is being initialized

f = figure('Visible', 'off','color','white','Position',...
    [300, 400, 500, 325]);
hlengthtext = uicontrol('Style','text','Position', ...
    [190, 250, 50, 18],'String','Length:','HorizontalAlignment',...
    'right','BackgroundColor','white');

hlengthedit = uicontrol('Style','edit','Position', ...
    [250, 250, 50, 25]);

hwidthtext = uicontrol('Style','text','Position', ...
    [190, 200, 50, 18],'String','Width:','HorizontalAlignment',...
    'right','BackgroundColor','white');

hwidthedit = uicontrol('Style','edit','Position', ...
    [250, 200, 50, 25]);

hbutton = uicontrol('Style','pushbutton','Position',...
    [200, 150, 100, 25],'String','Calculate Area',...
    'Callback',@calcarea);

hareatext = uicontrol('Style','text','Position', ...
    [190, 100, 50, 18],'String','Area:','HorizontalAlignment',...
    'right','BackgroundColor','white');

hareaedit = uicontrol('Style','text','Position', ...
    [250, 100, 50, 18],'HorizontalAlignment',...
    'right','BackgroundColor','white');

% Put a name on it and move to the center of the screen
set(f,'Name','Rectangle Area Calculator')
movegui(f,'center')

% Now the GUI is made visible
set(f,'Visible','on');

    %Callback function for editable text field
    function calcarea(source,eventdata)
        len = str2num(get(hlengthedit,'String'));
        width = str2num(get(hwidthedit,'String'));
        area = len*width;
        set(hareaedit,'String',num2str(area))
    end
end