% Computer facts
computer(laptop).
computer(desktop).
computer(server).

% Laptop components
component(laptop, keyboard).
component(laptop, mouse).
component(laptop, monitor).
component(laptop, battery).

% Desktop components
component(desktop, keyboard).
component(desktop, mouse).
component(desktop, monitor).
component(desktop, cpu).

% Server components
component(server, cpu).
component(server, hard_disk).
component(server, network_card).

% Input devices
input_device(keyboard).
input_device(mouse).

% Output devices
output_device(monitor).

% Storage devices
storage_device(hard_disk).

% Processing devices
processing_device(cpu).

% Power devices
power_device(battery).

% Network devices
network_device(network_card).

% A computer has a component if the component is associated with that computer.
has_component(Computer, Component) :-
    component(Computer, Component).


% A component is an input device if it is listed as an input device.
is_input_device(Component) :-
    input_device(Component).


% A component is an output device if it is listed as an output device.
is_output_device(Component) :-
    output_device(Component).


% A component is a storage device if it is listed as a storage device.
is_storage_device(Component) :-
    storage_device(Component).


% A component is a processing device if it is listed as a processing device.
is_processing_device(Component) :-
    processing_device(Component).


% A component is a power device if it is listed as a power device.
is_power_device(Component) :-
    power_device(Component).


% A component is a network device if it is  listed as a network device.
is_network_device(Component) :-
    network_device(Component).


% A computer has an input device if:
% 1. The device is a component of the computer
% 2. The component is an input device
computer_has_input_device(Computer, Device) :-
    component(Computer, Device),
    input_device(Device).


% A computer has an output device if:
% 1. The device is a component of the computer
% 2. The component is an output device
computer_has_output_device(Computer, Device) :-
    component(Computer, Device),
    output_device(Device).


% A computer has a storage device if:
% 1. The device is a component of the computer
% 2. The component is a storage device
computer_has_storage_device(Computer, Device) :-
    component(Computer, Device),
    storage_device(Device).


% A computer has a processing device if:
% 1. The device is a component of the computer
% 2. The component is a processing device
computer_has_processing_device(Computer, Device) :-
    component(Computer, Device),
    processing_device(Device).


% A computer has a power device if:
% 1. The device is a component of the computer
% 2. The component is a power device
computer_has_power_device(Computer, Device) :-
    component(Computer, Device),
    power_device(Device).


% A computer has a network device if:
% 1. The device is a component of the computer
% 2. The component is a network device
computer_has_network_device(Computer, Device) :-
    component(Computer, Device),
    network_device(Device).