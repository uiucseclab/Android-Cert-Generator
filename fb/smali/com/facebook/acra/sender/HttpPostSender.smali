.class public Lcom/facebook/acra/sender/HttpPostSender;
.super Ljava/lang/Object;
.source "video_chaining_session_id"


# instance fields
.field private mFormUri:Landroid/net/Uri;

.field private mProxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    .line 97
    return-void
.end method

.method private remap(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/acra/ReportField;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 131
    sget-object v3, Lcom/facebook/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 132
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 134
    invoke-virtual {v5}, Lcom/facebook/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 137
    :cond_1
    return-object v2
.end method


# virtual methods
.method public send(Lcom/facebook/acra/CrashReportData;)V
    .locals 5

    .prologue
    .line 102
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/acra/sender/HttpPostSender;->remap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/facebook/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 104
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Connect to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/reporter/BaseCrashReporter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/acra/reporter/BaseCrashReporter;->formPostFormat()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/acra/sender/HttpPostSender;->mProxy:Ljava/net/Proxy;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/acra/util/HttpUtils;->doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;Ljava/net/Proxy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Lcom/facebook/acra/sender/ReportSenderException;

    const-string v2, "Error while sending report to Http Post Form."

    invoke-direct {v1, v2, v0}, Lcom/facebook/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setHost(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 113
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 121
    :cond_1
    :goto_0
    return v0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mFormUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0
    .param p1    # Ljava/net/Proxy;
        .annotation build Lcom/facebook/acra/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    iput-object p1, p0, Lcom/facebook/acra/sender/HttpPostSender;->mProxy:Ljava/net/Proxy;

    .line 127
    return-void
.end method
