.class public Lcom/samsung/milk/milkvideo/NachosApplication;
.super Landroid/app/Application;
.source "NachosApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/samsung/milk/milkvideo/Injector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/NachosApplication$1;,
        Lcom/samsung/milk/milkvideo/NachosApplication$SystemSettingsObserver;,
        Lcom/samsung/milk/milkvideo/NachosApplication$CrashlyticsTree;
    }
.end annotation


# static fields
.field protected static nachosApplication:Lcom/samsung/milk/milkvideo/NachosApplication;


# instance fields
.field appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field crashlyticsTracker:Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private createdActivities:I

.field deviceRegistrar:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field eventBus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field googleAnalyticsTracker:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected graph:Ldagger/ObjectGraph;

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mixpanelTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private networkChangeReceiver:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;

.field restService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private startedActivities:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 166
    return-void
.end method

.method public static getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/samsung/milk/milkvideo/NachosApplication;->nachosApplication:Lcom/samsung/milk/milkvideo/NachosApplication;

    return-object v0
.end method

.method private registerNetworkChangeReceiver()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->networkChangeReceiver:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;

    invoke-direct {v1}, Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;-><init>()V

    iput-object v1, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->networkChangeReceiver:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;

    .line 135
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->networkChangeReceiver:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/milk/milkvideo/NachosApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    return-void
.end method

.method private registerSettingsObserver()V
    .locals 5

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/samsung/milk/milkvideo/NachosApplication$SystemSettingsObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/samsung/milk/milkvideo/NachosApplication$SystemSettingsObserver;-><init>(Lcom/samsung/milk/milkvideo/NachosApplication;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    return-void
.end method

.method private unregisterNetworkChangeReceiver()V
    .locals 1

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->networkChangeReceiver:Lcom/samsung/milk/milkvideo/receiver/NetworkChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/NachosApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public inject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->graph:Ldagger/ObjectGraph;

    invoke-virtual {v0, p1}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    iget v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->createdActivities:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->createdActivities:I

    .line 70
    iget v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->createdActivities:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->mixpanelTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getGoogleAccountName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/services/LoginState;->getDeviceIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->mixpanelTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendAppOpenedEvent()V

    .line 73
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->sendAppOpenedEvent()V

    .line 75
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->deviceRegistrar:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->registerDeviceForPushNotifications()V

    .line 77
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->createdActivities:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->createdActivities:I

    .line 112
    iget v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->createdActivities:I

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->mixpanelTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendAppClosedEvent()V

    .line 114
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->mixpanelTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->flushData()V

    .line 116
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 98
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 81
    iget v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->startedActivities:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->startedActivities:I

    .line 82
    iget v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->startedActivities:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->mixpanelTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendAppInFocusEvent()V

    .line 84
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->googleAnalyticsTracker:Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/GoogleAnalyticsTracker;->sendAppInFocusEvent()V

    .line 85
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->registerNetworkChangeReceiver()V

    .line 86
    invoke-static {p0}, Lcom/samsung/milk/milkvideo/utils/NetworkUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/ConnectivityChangeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    iget v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->startedActivities:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->startedActivities:I

    .line 103
    iget v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->startedActivities:I

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->mixpanelTracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->sendAppLostFocusEvent()V

    .line 105
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->unregisterNetworkChangeReceiver()V

    .line 107
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/milk/milkvideo/NachosModule;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/NachosModule;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ldagger/ObjectGraph;->create([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->graph:Ldagger/ObjectGraph;

    .line 52
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/NachosApplication;->graph:Ldagger/ObjectGraph;

    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "fonts/helv-roman.otf"

    const v1, 0x7f010062

    invoke-static {v0, v1}, Luk/co/chrisjenx/calligraphy/CalligraphyConfig;->initDefault(Ljava/lang/String;I)V

    .line 56
    sput-object p0, Lcom/samsung/milk/milkvideo/NachosApplication;->nachosApplication:Lcom/samsung/milk/milkvideo/NachosApplication;

    .line 57
    invoke-virtual {p0, p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 62
    new-instance v0, Lcom/samsung/milk/milkvideo/NachosApplication$CrashlyticsTree;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/milk/milkvideo/NachosApplication$CrashlyticsTree;-><init>(Lcom/samsung/milk/milkvideo/NachosApplication;Lcom/samsung/milk/milkvideo/NachosApplication$1;)V

    invoke-static {v0}, Ltimber/log/Timber;->plant(Ltimber/log/Timber$Tree;)V

    .line 64
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/NachosApplication;->registerSettingsObserver()V

    .line 65
    return-void
.end method
