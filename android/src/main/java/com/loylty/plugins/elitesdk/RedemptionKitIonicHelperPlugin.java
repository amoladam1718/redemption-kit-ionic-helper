package com.loylty.plugins.elitesdk;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "RedemptionKitIonicHelper")
public class RedemptionKitIonicHelperPlugin extends Plugin {

    private RedemptionKitIonicHelper implementation = new RedemptionKitIonicHelper();

    @PluginMethod
    public void echo(PluginCall call) {
        String value = call.getString("value");

        JSObject ret = new JSObject();
        ret.put("value", implementation.echo(value));
        call.resolve(ret);
    }
}
