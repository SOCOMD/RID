#include "script_component.hpp"
params["_display"];

private _screenIndicatorStatus = uiNamespace getVariable[QGVAR(screenIndcatorStatus), [1, 1, 1, 1, 9, 7]];

//Intitilize volume&Battery level:
for "_i" from 0 to 1 do {
    private _idcPrefix = "231" + str (_i+3);
    for "_k" from 0 to (_screenIndicatorStatus#(_i+4)) do {
        private _idcSuffix = if (_k < 10) then {
            "0" + str _k;
        } else {
            str _k;
        };
        (_display displayCtrl (parseNumber (_idcPrefix + _idcSuffix))) ctrlSetTextColor [1, 1, 1, 1];
    };
};

private _idcAffix = "1";
for "_i" from 0 to 2 step 2 do {
    _detectorType = if (_i == 0) then {"MD\MD"} else {"WD\WD"};
    _pwr = if (_screenIndicatorStatus#(_i) == 1) then {"ON"} else {"OFF"};
    _path = format ["MD_WD\%1_%2.paa", _detectorType, _pwr];

    for "_i" from 0 to 1 do {
        private _idc = parseNumber("231" + _idcAffix + "0" + str (_i+8));
        private _control = _display displayCtrl _idc;
        if (_i == 0) then {
            _control ctrlSetTextColor [1, 1, 1, _screenIndicatorStatus#(_i+1)];
        }else {
            _control ctrlSetText _path;
            _control ctrlSetTextColor [1, 1, 1, 1];
        };
    };
    _idcAffix = "2";
};
