.class public Lcom/samsung/milk/milkvideo/services/LoginState;
.super Ljava/lang/Object;
.source "LoginState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private currentUser:Lcom/samsung/milk/milkvideo/models/User;

.field private session:Lcom/samsung/milk/milkvideo/models/Session;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/telephony/TelephonyManager;)V
    .locals 0
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/services/LoginState;->accountManager:Landroid/accounts/AccountManager;

    .line 34
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/services/LoginState;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 35
    return-void
.end method

.method private isUserLoggedInToService(Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;)Z
    .locals 4
    .param p1, "service"    # Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    .prologue
    .line 163
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/NachosApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    .local v0, "context":Landroid/content/Context;
    const-string v2, "nachos_prefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 165
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "login_service"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public deleteSession(Z)V
    .locals 4
    .param p1, "deleteUser"    # Z

    .prologue
    .line 100
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/NachosApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, "context":Landroid/content/Context;
    const-string v2, "nachos_prefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 102
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "session_token"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    if-eqz p1, :cond_0

    .line 104
    const-string v2, "user"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/milk/milkvideo/services/LoginState;->session:Lcom/samsung/milk/milkvideo/models/Session;

    .line 108
    return-void
.end method

.method public getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginState;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginState;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUserFromPrefs()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentUserFromPrefs()Lcom/samsung/milk/milkvideo/models/User;
    .locals 6

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "cachedUser":Lcom/samsung/milk/milkvideo/models/User;
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/NachosApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 127
    .local v2, "context":Landroid/content/Context;
    const-string v4, "nachos_prefs"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 128
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "user"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    const-string v4, "user"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "cachedUserStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    new-instance v0, Lcom/samsung/milk/milkvideo/models/User;

    .end local v0    # "cachedUser":Lcom/samsung/milk/milkvideo/models/User;
    invoke-direct {v0}, Lcom/samsung/milk/milkvideo/models/User;-><init>()V

    .line 132
    .restart local v0    # "cachedUser":Lcom/samsung/milk/milkvideo/models/User;
    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/models/User;->inflateCachedUser(Ljava/lang/String;)V

    .line 135
    .end local v1    # "cachedUserStr":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getCurrentUserUuid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/services/LoginState;->getCurrentUser()Lcom/samsung/milk/milkvideo/models/User;

    move-result-object v0

    .line 83
    .local v0, "user":Lcom/samsung/milk/milkvideo/models/User;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 84
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/User;->getUuid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDeviceIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginState;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/samsung/milk/milkvideo/utils/GoogleAccount;

    iget-object v1, p0, Lcom/samsung/milk/milkvideo/services/LoginState;->accountManager:Landroid/accounts/AccountManager;

    invoke-direct {v0, v1}, Lcom/samsung/milk/milkvideo/utils/GoogleAccount;-><init>(Landroid/accounts/AccountManager;)V

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/utils/GoogleAccount;->getGoogleAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/samsung/milk/milkvideo/models/Session;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginState;->session:Lcom/samsung/milk/milkvideo/models/Session;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/services/LoginState;->setCurrentSessionFromPrefs()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/LoginState;->session:Lcom/samsung/milk/milkvideo/models/Session;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/services/LoginState;->getSession()Lcom/samsung/milk/milkvideo/models/Session;

    move-result-object v0

    .line 77
    .local v0, "currentSession":Lcom/samsung/milk/milkvideo/models/Session;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 78
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Session;->getToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isHardLoggedIn()Z
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/services/LoginState;->getSession()Lcom/samsung/milk/milkvideo/models/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/services/LoginState;->getSession()Lcom/samsung/milk/milkvideo/models/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/models/Session;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSoftLoggedIn()Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/services/LoginState;->getGoogleAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/services/LoginState;->isHardLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserLoggedInToFacebook()Z
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->FACEBOOK:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->isUserLoggedInToService(Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;)Z

    move-result v0

    return v0
.end method

.method public isUserLoggedInToGooglePlus()Z
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->GOOGLE:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->isUserLoggedInToService(Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;)Z

    move-result v0

    return v0
.end method

.method public isUserLoggedInToSamsungAccount()Z
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->SAMSUNG:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    invoke-direct {p0, v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->isUserLoggedInToService(Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;)Z

    move-result v0

    return v0
.end method

.method public setCurrentSessionFromPrefs()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 111
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/milk/milkvideo/NachosApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    .local v0, "context":Landroid/content/Context;
    const-string v4, "nachos_prefs"

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 113
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "session_token"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    const-string v4, "session_token"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "token":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    new-instance v2, Lcom/samsung/milk/milkvideo/models/Session;

    invoke-direct {v2}, Lcom/samsung/milk/milkvideo/models/Session;-><init>()V

    .line 117
    .local v2, "session":Lcom/samsung/milk/milkvideo/models/Session;
    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/models/Session;->setToken(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2, v6}, Lcom/samsung/milk/milkvideo/models/Session;->setFirstTime(Z)V

    .line 119
    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/services/LoginState;->setSession(Lcom/samsung/milk/milkvideo/models/Session;)V

    .line 122
    .end local v2    # "session":Lcom/samsung/milk/milkvideo/models/Session;
    .end local v3    # "token":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setCurrentUser(Lcom/samsung/milk/milkvideo/models/User;)V
    .locals 4
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/NachosApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 44
    .local v0, "context":Landroid/content/Context;
    const-string v2, "nachos_prefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 45
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "user"

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/User;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/services/LoginState;->currentUser:Lcom/samsung/milk/milkvideo/models/User;

    .line 48
    return-void
.end method

.method public setLoggedInToFacebook()V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->FACEBOOK:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->setLoggedInToService(Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;)V

    .line 144
    return-void
.end method

.method public setLoggedInToGooglePlus()V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->GOOGLE:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->setLoggedInToService(Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;)V

    .line 152
    return-void
.end method

.method public setLoggedInToSamsungAccount()V
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->SAMSUNG:Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    invoke-virtual {p0, v0}, Lcom/samsung/milk/milkvideo/services/LoginState;->setLoggedInToService(Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;)V

    .line 160
    return-void
.end method

.method public setLoggedInToService(Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;)V
    .locals 4
    .param p1, "service"    # Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;

    .prologue
    .line 169
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/NachosApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    .local v0, "context":Landroid/content/Context;
    const-string v2, "nachos_prefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 171
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "login_service"

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/services/LoginState$LOGIN_SERVICES;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method

.method public setLoggedInUser(Lcom/samsung/milk/milkvideo/models/User;Lcom/samsung/milk/milkvideo/models/Session;)V
    .locals 0
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;
    .param p2, "session"    # Lcom/samsung/milk/milkvideo/models/Session;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/services/LoginState;->setCurrentUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/samsung/milk/milkvideo/services/LoginState;->setSession(Lcom/samsung/milk/milkvideo/models/Session;)V

    .line 66
    return-void
.end method

.method public setSession(Lcom/samsung/milk/milkvideo/models/Session;)V
    .locals 4
    .param p1, "session"    # Lcom/samsung/milk/milkvideo/models/Session;

    .prologue
    const/4 v3, 0x0

    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/NachosApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    const-string v2, "nachos_prefs"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 54
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "session_token"

    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Session;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    :goto_0
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/services/LoginState;->session:Lcom/samsung/milk/milkvideo/models/Session;

    .line 61
    return-void

    .line 56
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/NachosApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .restart local v0    # "context":Landroid/content/Context;
    const-string v2, "nachos_prefs"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 58
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "session_token"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public signout()V
    .locals 4

    .prologue
    .line 175
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/services/LoginState;->deleteSession(Z)V

    .line 176
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/services/LoginState;->setCurrentUser(Lcom/samsung/milk/milkvideo/models/User;)V

    .line 178
    invoke-static {}, Lcom/samsung/milk/milkvideo/NachosApplication;->getInstance()Lcom/samsung/milk/milkvideo/NachosApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/milk/milkvideo/NachosApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 179
    .local v0, "context":Landroid/content/Context;
    const-string v2, "nachos_prefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 180
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "login_service"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    return-void
.end method
