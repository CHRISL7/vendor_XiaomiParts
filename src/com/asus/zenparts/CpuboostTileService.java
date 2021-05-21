package com.asus.zenparts;

import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;

public class CpuboostTileService extends TileService {

    @Override
    public void onStartListening() {
        int currentState = FileUtils.getintProp(DeviceSettings.CPUBOOST_SYSTEM_PROPERTY, 0);

        Tile tile = getQsTile();
        tile.setState(Tile.STATE_ACTIVE);
        tile.setLabel(getResources().getStringArray(R.array.cpuboost_profiles)[currentState]);

        tile.updateTile();
        super.onStartListening();
    }

    @Override
    public void onClick() {
        int currentState = FileUtils.getintProp(DeviceSettings.CPUBOOST_SYSTEM_PROPERTY, 0);

        int nextState;
        if (currentState == 4) {
            nextState = 0;
        } else {
            nextState = currentState + 1;
        }

        Tile tile = getQsTile();
        FileUtils.setintProp(DeviceSettings.CPUBOOST_SYSTEM_PROPERTY, nextState);
        tile.setLabel(getResources().getStringArray(R.array.cpuboost_profiles)[nextState]);

        tile.updateTile();
        super.onClick();
    }
}
