.class public Lcom/samsung/milk/milkvideo/services/LoginCoordinator;
.super Ljava/lang/Object;
.source "LoginCoordinator.java"


# instance fields
.field appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field crashlyticsTracker:Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field deviceRegistrar:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginUser(Lcom/samsung/milk/milkvideo/models/User;Lcom/samsung/milk/milkvideo/models/Session;)V
    .locals 2
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;
    .param p2, "session"    # Lcom/samsung/milk/milkvideo/models/Session;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/milk/milkvideo/services/LoginState;->setLoggedInUser(Lcom/samsung/milk/milkvideo/models/User;Lcom/samsung/milk/milkvideo/models/Session;)V

    .line 21
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->tracker:Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->getGoogleAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/milk/milkvideo/analytics/MixpanelTracker;->setUserProfile(Lcom/samsung/milk/milkvideo/models/User;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->crashlyticsTracker:Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;

    invoke-virtual {v0, p1}, Lcom/samsung/milk/milkvideo/analytics/CrashlyticsTracker;->setUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 23
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->appsFlyerTracker:Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/analytics/AppsFlyerTracker;->sendUserSignedUpEvent()V

    .line 24
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginCoordinator;->deviceRegistrar:Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->registerDeviceForPushNotifications()V

    .line 25
    return-void
.end method
