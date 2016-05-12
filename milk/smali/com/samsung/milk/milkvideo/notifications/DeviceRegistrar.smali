.class public Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;
.super Ljava/lang/Object;
.source "DeviceRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;
    }
.end annotation


# static fields
.field public static final KEY_GCM_REGISTRATION_ID:Ljava/lang/String; = "gcm_reg_id"

.field static final PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"


# instance fields
.field featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field gcm:Lcom/samsung/milk/milkvideo/notifications/GcmProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private gcmRegistrationAttempts:I

.field loginState:Lcom/samsung/milk/milkvideo/services/LoginState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->registerUserForNotifications(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    .prologue
    .line 23
    iget v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->gcmRegistrationAttempts:I

    return v0
.end method

.method static synthetic access$208(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;

    .prologue
    .line 23
    iget v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->gcmRegistrationAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->gcmRegistrationAttempts:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->persistRegistrationId(Ljava/lang/String;)V

    return-void
.end method

.method private getAppVersion()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 96
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "problem getting app version."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getExistingRegistrationId()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->getGCMPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 53
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "gcm_reg_id"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "registrationId":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    const-string v4, "Registration not found."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    const-string v3, ""

    .line 66
    .end local v3    # "registrationId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 59
    .restart local v3    # "registrationId":Ljava/lang/String;
    :cond_1
    const-string v4, "appVersion"

    const/high16 v5, -0x80000000

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 60
    .local v2, "registeredVersion":I
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->getAppVersion()I

    move-result v0

    .line 61
    .local v0, "currentVersion":I
    if-eq v2, v0, :cond_0

    .line 62
    const-string v4, "App version changed."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->getGCMPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "appVersion"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    const-string v3, ""

    goto :goto_0
.end method

.method private getGCMPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "nachos_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private isValidGCMRegistration(Ljava/lang/String;)Z
    .locals 2
    .param p1, "regid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :goto_0
    return v0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->getExistingRegistrationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->validateRegIdWithServer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private persistRegistrationId(Ljava/lang/String;)V
    .locals 3
    .param p1, "regid"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->getGCMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "gcm_reg_id"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    return-void
.end method

.method private registerUserForNotifications(Ljava/lang/String;)V
    .locals 3
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    new-instance v1, Lcom/samsung/milk/milkvideo/api/DeviceRegistrationRequest;

    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->getExistingRegistrationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/milk/milkvideo/api/DeviceRegistrationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$1;-><init>(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/milk/milkvideo/api/NachosRestService;->registerDevice(Lcom/samsung/milk/milkvideo/api/DeviceRegistrationRequest;Lretrofit/ResponseCallback;)V

    .line 114
    return-void
.end method

.method private validateRegIdWithServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "regid"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/NachosApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public registerDeviceForPushNotifications()V
    .locals 3

    .prologue
    .line 34
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->gcm:Lcom/samsung/milk/milkvideo/notifications/GcmProvider;

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/milk/milkvideo/notifications/GcmProvider;->checkPlayServices(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->getExistingRegistrationId()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "regid":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->loginState:Lcom/samsung/milk/milkvideo/services/LoginState;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/services/LoginState;->isHardLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->featureFlags:Lcom/samsung/milk/milkvideo/FeatureFlags;

    invoke-virtual {v1}, Lcom/samsung/milk/milkvideo/FeatureFlags;->shouldNotify()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    new-instance v1, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;-><init>(Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar$GCMRegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    .end local v0    # "regid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 41
    .restart local v0    # "regid":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/notifications/DeviceRegistrar;->registerUserForNotifications(Ljava/lang/String;)V

    goto :goto_0
.end method
