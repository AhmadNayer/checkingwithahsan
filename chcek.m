function varargout = chcek(varargin)
% CHCEK MATLAB code for chcek.fig
%      CHCEK, by itself, creates a new CHCEK or raises the existing
%      singleton*.
%
%      H = CHCEK returns the handle to a new CHCEK or the handle to
%      the existing singleton*.
%
%      CHCEK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHCEK.M with the given input arguments.
%
%      CHCEK('Property','Value',...) creates a new CHCEK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before chcek_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to chcek_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help chcek

% Last Modified by GUIDE v2.5 11-Dec-2018 15:14:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @chcek_OpeningFcn, ...
                   'gui_OutputFcn',  @chcek_OutputFcn, ...
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


% --- Executes just before chcek is made visible.
function chcek_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to chcek (see VARARGIN)

% Choose default command line output for chcek
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes chcek wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = chcek_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
pause(0.001)
t=0:0.01:10;
x=sin(t)
y= cos(t)
axes(handles.axes1)
plot(t,x)
axes(handles.axes2)
plot(sum(ScopeData.first_MRRe14HBW__RADAR_Info__DTCOrderId(:,2)))
%plot(ScopeData.time, ScopeData.signals.values)
Data = load('spectrum.mat')
% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
x=1:0.01:100;
plot(x)
% Hint: place code in OpeningFcn to populate axes1



% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
x=1:0.01:100;
plot(x)
% Hint: place code in OpeningFcn to populate axes2
