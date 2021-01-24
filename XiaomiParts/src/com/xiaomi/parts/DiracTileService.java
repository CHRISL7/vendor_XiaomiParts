package com.xiaomi.parts;

import android.app.ActivityManager;
import android.content.Intent;
import android.os.Handler;
import android.content.Context;
import android.os.Bundle;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;

import com.xiaomi.parts.R;

// TODO: Add Dirac drawables
public class DiracTileService extends TileService {

    @Override
    public void onStartListening() {

    boolean enhancerEnabled;
        try {
            enhancerEnabled = DiracService.sDiracUtils.isDiracEnabled();
        } catch (java.lang.NullPointerException e) {
            try {
        getApplicationContext().startService(new Intent(getApplicationContext(), DiracService.class));
                enhancerEnabled = DiracService.sDiracUtils.isDiracEnabled();
            } catch (NullPointerException ne) {
                // Avoid crash
                ne.printStackTrace();
                enhancerEnabled = false;
            }
        }

        Tile tile = getQsTile();
        if (enhancerEnabled) {
            tile.setState(Tile.STATE_ACTIVE);
        } else {
            tile.setState(Tile.STATE_INACTIVE);
        }

        tile.updateTile();

        super.onStartListening();
    }

    @Override
    public void onClick() {
        Tile tile = getQsTile();
     if (DiracService.sDiracUtils.isDiracEnabled()) {
        getApplicationContext().stopService(new Intent(getApplicationContext(), DiracService.class));
            DiracService.sDiracUtils.setEnabled(false);
            tile.setState(Tile.STATE_INACTIVE);
        } else {
        getApplicationContext().startService(new Intent(getApplicationContext(), DiracService.class));
            DiracService.sDiracUtils.setEnabled(true);
            tile.setState(Tile.STATE_ACTIVE);
        }
        tile.updateTile();
        super.onClick();
    }
}
