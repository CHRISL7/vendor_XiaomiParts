package com.xiaomi.parts;

import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import androidx.preference.PreferenceManager;

	public class CameraTileService extends TileService {

    @Override
    public void onStartListening() {
        int currentState = FileUtils.getintProp(DeviceSettings.CAMERA_SYSTEM_PROPERTY, 0);

        Tile tile = getQsTile();
        tile.setState(Tile.STATE_ACTIVE);
        tile.setLabel(getResources().getStringArray(R.array.camera_profiles)[currentState]);

        tile.updateTile();
        super.onStartListening();
    }

    @Override
    public void onClick() {
        int currentState = FileUtils.getintProp(DeviceSettings.CAMERA_SYSTEM_PROPERTY, 0);

        int nextState;
        if (currentState == 1) {
            nextState = 0;
        } else {
            nextState = currentState + 1;
        }

        Tile tile = getQsTile();
        FileUtils.setintProp(DeviceSettings.CAMERA_SYSTEM_PROPERTY, nextState);
        tile.setLabel(getResources().getStringArray(R.array.camera_profiles)[nextState]);

        tile.updateTile();
        super.onClick();
    }
}
