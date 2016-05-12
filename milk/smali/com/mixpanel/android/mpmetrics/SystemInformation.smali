.class Lcom/mixpanel/android/mpmetrics/SystemInformation;
.super Ljava/lang/Object;
.source "SystemInformation.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "MixpanelAPI"


# instance fields
.field private final mAppVersionCode:Ljava/lang/Integer;

.field private final mAppVersionName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mHasNFC:Ljava/lang/Boolean;

.field private final mHasTelephony:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mContext:Landroid/content/Context;

    .line 30
    iget-object v11, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 32
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 33
    .local v4, "foundAppVersionName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 35
    .local v3, "foundAppVersionCode":Ljava/lang/Integer;
    :try_start_0
    iget-object v11, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 36
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 37
    iget v11, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 42
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    iput-object v4, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mAppVersionName:Ljava/lang/String;

    .line 43
    iput-object v3, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mAppVersionCode:Ljava/lang/Integer;

    .line 47
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 49
    .local v10, "packageManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/content/pm/PackageManager;>;"
    const/4 v7, 0x0

    .line 51
    .local v7, "hasSystemFeatureMethod":Ljava/lang/reflect/Method;
    :try_start_1
    const-string v11, "hasSystemFeature"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v7

    .line 56
    :goto_1
    const/4 v5, 0x0

    .line 57
    .local v5, "foundNFC":Ljava/lang/Boolean;
    const/4 v6, 0x0

    .line 58
    .local v6, "foundTelephony":Ljava/lang/Boolean;
    if-eqz v7, :cond_0

    .line 60
    const/4 v11, 0x1

    :try_start_2
    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "android.hardware.nfc"

    aput-object v13, v11, v12

    invoke-virtual {v7, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    .line 61
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "android.hardware.telephony"

    aput-object v13, v11, v12

    invoke-virtual {v7, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 69
    :cond_0
    :goto_2
    iput-object v5, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mHasNFC:Ljava/lang/Boolean;

    .line 70
    iput-object v6, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mHasTelephony:Ljava/lang/Boolean;

    .line 71
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v11, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 73
    iget-object v11, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 74
    .local v1, "display":Landroid/view/Display;
    iget-object v11, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 75
    return-void

    .line 38
    .end local v1    # "display":Landroid/view/Display;
    .end local v5    # "foundNFC":Ljava/lang/Boolean;
    .end local v6    # "foundTelephony":Ljava/lang/Boolean;
    .end local v7    # "hasSystemFeatureMethod":Ljava/lang/reflect/Method;
    .end local v10    # "packageManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/content/pm/PackageManager;>;"
    :catch_0
    move-exception v2

    .line 39
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "MixpanelAPI"

    const-string v12, "System information constructed with a context that apparently doesn\'t exist."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "foundNFC":Ljava/lang/Boolean;
    .restart local v6    # "foundTelephony":Ljava/lang/Boolean;
    .restart local v7    # "hasSystemFeatureMethod":Ljava/lang/reflect/Method;
    .restart local v10    # "packageManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/content/pm/PackageManager;>;"
    :catch_1
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v11, "MixpanelAPI"

    const-string v12, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 64
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v11, "MixpanelAPI"

    const-string v12, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 52
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v5    # "foundNFC":Ljava/lang/Boolean;
    .end local v6    # "foundTelephony":Ljava/lang/Boolean;
    :catch_3
    move-exception v11

    goto :goto_1
.end method


# virtual methods
.method public getAppVersionCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mAppVersionCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mAppVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "bluetoothVersion":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 155
    const-string v0, "none"

    .line 156
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    const-string v0, "ble"

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v0, "classic"

    goto :goto_0
.end method

.method public getCurrentNetworkOperator()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "ret":Ljava/lang/String;
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 120
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_0
    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getPhoneRadioType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "ret":Ljava/lang/String;
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 91
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 106
    const/4 v0, 0x0

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :pswitch_0
    const-string v0, "none"

    .line 95
    goto :goto_0

    .line 97
    :pswitch_1
    const-string v0, "gsm"

    .line 98
    goto :goto_0

    .line 100
    :pswitch_2
    const-string v0, "cdma"

    .line 101
    goto :goto_0

    .line 103
    :pswitch_3
    const-string v0, "sip"

    .line 104
    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hasNFC()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mHasNFC:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasTelephony()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mHasTelephony:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isBluetoothEnabled()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, "isBluetoothEnabled":Ljava/lang/Boolean;
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 143
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    .end local v0    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isWifiConnected()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, "ret":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/SystemInformation;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 132
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 133
    .local v2, "wifiInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 136
    .end local v0    # "connManager":Landroid/net/ConnectivityManager;
    .end local v2    # "wifiInfo":Landroid/net/NetworkInfo;
    :cond_0
    return-object v1
.end method
