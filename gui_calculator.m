function varargout = gui_calculator(varargin)
% GUI_CALCULATOR MATLAB code for gui_calculator.fig
%      GUI_CALCULATOR, by itself, creates a new GUI_CALCULATOR or raises the existing
%      singleton*.
%
%      H = GUI_CALCULATOR returns the handle to a new GUI_CALCULATOR or the handle to
%      the existing singleton*.
%
%      GUI_CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_CALCULATOR.M with the given input arguments.
%
%      GUI_CALCULATOR('Property','Value',...) creates a new GUI_CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_calculator

% Last Modified by GUIDE v2.5 21-Jan-2020 23:22:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_calculator_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui_calculator is made visible.
function gui_calculator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_calculator (see VARARGIN)

% Choose default command line output for gui_calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_calculator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in CLEAR.
function CLEAR_Callback(hObject, eventdata, handles)
% hObject    handle to CLEAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of CLEAR
set(handles.IN1,'string','');
set(handles.IN2,'string','');
set(handles.OUTPUT,'string','');



function OUTPUT_Callback(hObject, eventdata, handles)
% hObject    handle to OUTPUT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of OUTPUT as text
%        str2double(get(hObject,'String')) returns contents of OUTPUT as a double


% --- Executes during object creation, after setting all properties.
function OUTPUT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OUTPUT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of add


% --- Executes on button press in MULTIPLICATION.
A= str2double(get(handles.IN1,'string'));
B= str2double(get(handles.IN2,'string'));
C=A+B;
set(handles.OUTPUT,'string',num2str(C));

function MULTIPLICATION_Callback(hObject, eventdata, handles)
% hObject    handle to MULTIPLICATION (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of MULTIPLICATION
A= str2double(get(handles.IN1,'string'));
B= str2double(get(handles.IN2,'string'));
C=A*B;
set(handles.OUTPUT,'string',num2str(C));


% --- Executes on button press in subtraction.
function subtraction_Callback(hObject, eventdata, handles)
% hObject    handle to subtraction (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of subtraction
A= str2double(get(handles.IN1,'string'));
B= str2double(get(handles.IN2,'string'));
C=A-B;
set(handles.OUTPUT,'string',num2str(C));


% --- Executes on button press in divide.
function divide_Callback(hObject, eventdata, handles)
% hObject    handle to divide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of divide
A= str2double(get(handles.IN1,'string'));
B= str2double(get(handles.IN2,'string'));
C=A/B;
set(handles.OUTPUT,'string',num2str(C));



function IN1_Callback(hObject, eventdata, handles)
% hObject    handle to IN1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IN1 as text
%        str2double(get(hObject,'String')) returns contents of IN1 as a double


% --- Executes during object creation, after setting all properties.
function IN1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IN1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function IN2_Callback(hObject, eventdata, handles)
% hObject    handle to IN2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IN2 as text
%        str2double(get(hObject,'String')) returns contents of IN2 as a double


% --- Executes during object creation, after setting all properties.
function IN2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IN2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
