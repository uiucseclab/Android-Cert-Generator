.class public abstract Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;
.super Landroid/app/IntentService;
.source "opening dex store %s"


# instance fields
.field private a:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->a:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->a:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 31
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->a:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    .line 45
    iput-object p3, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->b:Landroid/content/SharedPreferences;

    .line 46
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "com.facebook.rti.fbns.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "FbnsCallbackHandlerBase"

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->a:Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/common/util/SignatureAuthSecureIntent;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "receive_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    const-string v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->b:Landroid/content/SharedPreferences;

    const-string v2, "token_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    const-string v0, "FbnsCallbackHandlerBase"

    const-string v1, "Dropping unintended message."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    :cond_3
    const-string v1, "registered"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "token_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_4
    const-string v1, "reg_error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_5
    const-string v1, "deleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const-string v1, "unregistered"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "FbnsCallbackHandlerBase"

    const-string v1, "Unknown message type"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/common/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Intent;)V
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract b(Ljava/lang/String;)V
.end method

.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->b(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-static {p1}, Lcom/facebook/rti/common/broadcast/WakefulBroadcastReceiver;->a(Landroid/content/Intent;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/facebook/rti/common/broadcast/WakefulBroadcastReceiver;->a(Landroid/content/Intent;)Z

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    sget-object v0, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_START:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v1, -0x1cccc1d3

    invoke-static {v4, v0, v1}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 50
    sget-object v1, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a:Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;

    const-string v2, "token_store"

    invoke-virtual {v1, p0, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/rti/push/client/FbnsCallbackHandlerBase;->b:Landroid/content/SharedPreferences;

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    sget-object v2, Lcom/facebook/loom/logger/LogEntry$EntryType;->LIFECYCLE_SERVICE_END:Lcom/facebook/loom/logger/LogEntry$EntryType;

    const v3, -0x3346e240    # -9.7054208E7f

    invoke-static {v4, v2, v3, v0}, Lcom/facebook/loom/logger/Logger;->a(ILcom/facebook/loom/logger/LogEntry$EntryType;II)I

    return v1
.end method
