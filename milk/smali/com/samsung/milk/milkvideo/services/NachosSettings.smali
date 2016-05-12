.class public Lcom/samsung/milk/milkvideo/services/NachosSettings;
.super Ljava/lang/Object;
.source "NachosSettings.java"


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "nachos_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/milk/milkvideo/services/NachosSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 15
    return-void
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/NachosSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "notifications_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAutoplayEnabled()Z
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/NachosSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "autoplay_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAutoplayEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/NachosSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoplay_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 23
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/services/NachosSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifications_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    return-void
.end method
