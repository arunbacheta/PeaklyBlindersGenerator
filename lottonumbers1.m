
function varargout = lottonumbers1(varargin)
% LOTTONUMBERS1 MATLAB code for lottonumbers1.fig
%      LOTTONUMBERS1, by itself, creates a new LOTTONUMBERS1 or raises the existing
%      singleton*.
%
%      H = LOTTONUMBERS1 returns the handle to a new LOTTONUMBERS1 or the handle to
%      the existing singleton*.
%
%      LOTTONUMBERS1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LOTTONUMBERS1.M with the given input arguments.
%
%      LOTTONUMBERS1('Property','Value',...) creates a new LOTTONUMBERS1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lottonumbers1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lottonumbers1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lottonumbers1

% Last Modified by GUIDE v2.5 02-Jan-2019 22:23:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lottonumbers1_OpeningFcn, ...
                   'gui_OutputFcn',  @lottonumbers1_OutputFcn, ...
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

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
axes(hObject)
imshow('generatorbackground.jpg')

% --- Executes just before lottonumbers1 is made visible.
function lottonumbers1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lottonumbers1 (see VARARGIN)

% Choose default command line output for lottonumbers1
handles.output = hObject;

%Determines original Lottery Number and Players 1st numbers
WelcomeNumbers1= sort(randperm(50,7));
WelcomeNumbers2= sort(randperm(50,7));
%converts Lotto Numbers to string format
WelcomeNumbers11= num2str(WelcomeNumbers1);
WelcomeNumbers22= num2str(WelcomeNumbers2);
%setting the above as Lottery Numbers upon opening GUI
set(handles.Lottery_Numbers, 'string', WelcomeNumbers11)
%setting the above as Players Numbers upon opening GUI
set(handles.Your_Numbers, 'string', WelcomeNumbers22)
%Setting the congratulations text
 X0= 'Unfortunately, You have no Matches this time. Try Again!';
 X1= 'Congratulations! You matched 1 number. You won �3!';
 X2= 'Congratulations! You matched 2 numbers. You won �20!';
 X3= 'Congratulations! You matched 3 numbers. You won �200!';
 X4= 'Congratulations! You matched 4 numbers. You won �10,000!';
 X5= 'Congratulations! You matched 5 numbers. You won �100,000!';
 X6= 'Congratulations! You matched 6 numbers. You won �500,000!';
 X7= 'Congratulations! You matched 7 numbers. Thats a jackpot! You won �2,000,000!';
%setting matching number function
 matching_numbers= intersect(WelcomeNumbers1,WelcomeNumbers2);
 nom1= numel(matching_numbers);
 %setting the congratulations text based upon matching numbers
if nom1==0
    set(handles.CongratsText1, 'string', X0)
elseif nom1==1
    set(handles.CongratsText1, 'string', X1)
elseif nom1==2
    set(handles.CongratsText1, 'string', X2)
elseif nom1==3
    set(handles.CongratsText1, 'string', X3)
elseif nom1==4
    set(handles.CongratsText1, 'string', X4)
elseif nom1==5
    set(handles.CongratsText1, 'string', X5)
elseif nom1==6
    set(handles.CongratsText1, 'string', X6)
else
    set(handles.CongratsText1, 'string', X7)
end
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lottonumbers1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lottonumbers1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in NewNumbersButton1.
function NewNumbersButton1_Callback(hObject, eventdata, handles)
% hObject    handle to NewNumbersButton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject;
%Determines a New Set of Numbers
NewNumbers1= sort(randperm(50,7));
%Convert new Number Set to String format
NewNumbers11= num2str(NewNumbers1);
WelcomeNumbers3= get(handles.Lottery_Numbers, 'string')
%Setting New Set of Numbers in 'Your Numbers' box
set(handles.Your_Numbers, 'string', NewNumbers11);
 X0= 'Unfortunately, You have no Matches this time. Try Again!';
 X1= 'Congratulations! You matched 1 number. You won �3!';
 X2= 'Congratulations! You matched 2 numbers. You won �20!';
 X3= 'Congratulations! You matched 3 numbers. You won �200!';
 X4= 'Congratulations! You matched 4 numbers. You won �10,000!';
 X5= 'Congratulations! You matched 5 numbers. You won �100,000!';
 X6= 'Congratulations! You matched 6 numbers. You won �500,000!';
 X7= 'Congratulations! You matched 7 numbers. Thats a jackpot! You won �2,000,000!';
matching_numbers2= intersect(WelcomeNumbers3,NewNumbers1);
 nom2= numel(matching_numbers2);
 %setting the congratulations text based upon matching numbers
if nom2==0
    set(handles.CongratsText1, 'string', X0)
elseif nom2==1
    set(handles.CongratsText1, 'string', X1)
elseif nom2==2
    set(handles.CongratsText1, 'string', X2)
elseif nom2==3
    set(handles.CongratsText1, 'string', X3)
elseif nom2==4
    set(handles.CongratsText1, 'string', X4)
elseif nom2==5
    set(handles.CongratsText1, 'string', X5)
elseif nom2==6
    set(handles.CongratsText1, 'string', X6)
else
    set(handles.CongratsText1, 'string', X7)
end
% Update handles structure
guidata(hObject, handles);





% Hint: place code in OpeningFcn to populate axes1
