package com.asus.zenparts.preferences;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.asus.zenparts.FileUtils;

public class NotificationLedSeekBarPreference extends SecureSettingCustomSeekBarPreference {

    public static final String NOTIF_LED_BLUE_PATH = "/sys/class/leds/blue/brightness";
    public static final String NOTIF_LED_RED_PATH = "/sys/class/leds/red/brightness";
    public static final String NOTIF_LED_GREEN_PATH = "/sys/class/leds/green/brightness";

    public NotificationLedSeekBarPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    public void onStartTrackingTouch(SeekBar seekBar) {
        notifyChanged();
        FileUtils.setValue(NOTIF_LED_BLUE_PATH, 64);
        FileUtils.setValue(NOTIF_LED_RED_PATH, 64);
        FileUtils.setValue(NOTIF_LED_GREEN_PATH, 64);
    }
    @Override
    public void onStopTrackingTouch(SeekBar seekBar) {
        notifyChanged();
        FileUtils.setValue(NOTIF_LED_BLUE_PATH, 0);
        FileUtils.setValue(NOTIF_LED_RED_PATH, 0);
        FileUtils.setValue(NOTIF_LED_GREEN_PATH, 0);
    }
}
