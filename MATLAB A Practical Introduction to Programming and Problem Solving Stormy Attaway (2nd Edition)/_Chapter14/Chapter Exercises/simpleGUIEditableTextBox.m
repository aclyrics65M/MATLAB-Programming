function simpleGUIEditableTextBox
% Simple GUI with an editable text box
% Prints string twice
% Format of call: Ch13Ex14
% Does not return any values
% Create the GUI but make it invisible for now while
% it is being initialized

f = figure('Visible', 'off','color','white','Position',...
    [300, 400, 500, 325]);
hedit = uicontrol('Style','edit','Position', ...
    [150, 150, 200, 25],'Callback',@printname);

% Put a name on it and move to the center of the screen
set(f,'Name','GUI with edit box')
movegui(f,'center')

% Now the GUI is made visible
set(f,'Visible','on');

    % Callback function for editable text field
    function printname(source,eventdata)
        set(hedit, 'Visible', 'off')
        str = get(hedit,'String');
        htxt1 = uicontrol('Style', 'text', 'Position', ...
            [150, 150, 200, 25], 'String', str,...
            'BackgroundColor', 'white');
        htxt2 = uicontrol('Style', 'text', 'Position', ...
            [150, 50, 200, 25], 'String', str,...
            'BackgroundColor', 'white');
    end
end