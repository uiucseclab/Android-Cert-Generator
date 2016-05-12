.class Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendToServerRunnable"
.end annotation


# instance fields
.field private ctxReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field isLaunch:Z

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "urlString"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "isLaunch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1153
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1154
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    .line 1155
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    .line 1156
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 1157
    iput-boolean p4, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->isLaunch:Z

    .line 1158
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Landroid/content/Context;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/appsflyer/AppsFlyerLib$1;

    .prologue
    .line 1142
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1161
    const/4 v1, 0x0

    .line 1162
    .local v1, "postDataString":Ljava/lang/String;
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    # invokes: Lcom/appsflyer/AppsFlyerLib;->getEventTag(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->access$300(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 1164
    .local v5, "eventLogTag":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    .line 1165
    .local v7, "context":Landroid/content/Context;
    const/4 v11, 0x0

    .line 1166
    .local v11, "sentSuccessfully":Z
    if-eqz v7, :cond_1

    .line 1167
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 1168
    .local v10, "referrer":Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v6, "referrer"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1170
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v6, "referrer"

    invoke-interface {v4, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    :cond_0
    const-string v4, "appsflyer-data"

    const/4 v6, 0x0

    invoke-virtual {v7, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1173
    .local v12, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "true"

    const-string v6, "sentSuccessfully"

    const-string v14, ""

    invoke-interface {v12, v6, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1174
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v6, "eventName"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1175
    .local v8, "eventName":Ljava/lang/String;
    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v14, "counter"

    if-nez v8, :cond_4

    move v4, v0

    :goto_0
    # invokes: Lcom/appsflyer/AppsFlyerLib;->getCounter(Landroid/content/Context;Z)I
    invoke-static {v7, v4}, Lcom/appsflyer/AppsFlyerLib;->access$400(Landroid/content/Context;Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    .end local v8    # "eventName":Ljava/lang/String;
    .end local v10    # "referrer":Ljava/lang/String;
    .end local v12    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v6, "isFirstCall"

    if-nez v11, :cond_5

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v3, "appsflyerKey"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1180
    .local v2, "afDevKey":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 1181
    :cond_2
    const-string v0, "Not sending data yet, waiting for dev key"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    .end local v2    # "afDevKey":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    .end local v11    # "sentSuccessfully":Z
    :cond_3
    :goto_2
    return-void

    .restart local v7    # "context":Landroid/content/Context;
    .restart local v8    # "eventName":Ljava/lang/String;
    .restart local v10    # "referrer":Ljava/lang/String;
    .restart local v11    # "sentSuccessfully":Z
    .restart local v12    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_4
    move v4, v3

    .line 1175
    goto :goto_0

    .end local v8    # "eventName":Ljava/lang/String;
    .end local v10    # "referrer":Ljava/lang/String;
    .end local v12    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_5
    move v0, v3

    .line 1177
    goto :goto_1

    .line 1185
    .restart local v2    # "afDevKey":Ljava/lang/String;
    :cond_6
    new-instance v0, Lcom/appsflyer/HashUtils;

    invoke-direct {v0}, Lcom/appsflyer/HashUtils;-><init>()V

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/appsflyer/HashUtils;->getHashCode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 1186
    .local v9, "hash":Ljava/lang/String;
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    const-string v3, "af_v"

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->params:Ljava/util/Map;

    # invokes: Lcom/appsflyer/AppsFlyerLib;->mapToString(Ljava/util/Map;)Ljava/lang/String;
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->access$500(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1190
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->isLaunch:Z

    # invokes: Lcom/appsflyer/AppsFlyerLib;->sendRequestToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1192
    .end local v2    # "afDevKey":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    .end local v9    # "hash":Ljava/lang/String;
    .end local v11    # "sentSuccessfully":Z
    :catch_0
    move-exception v13

    .line 1193
    .local v13, "t":Ljava/io/IOException;
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    const-string v3, "&isCachedRequest=true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1194
    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v3

    new-instance v4, Lcom/appsflyer/cache/RequestCacheData;

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->urlString:Ljava/lang/String;

    const-string v6, "1.14"

    invoke-direct {v4, v0, v1, v6}, Lcom/appsflyer/cache/RequestCacheData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SendToServerRunnable;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/appsflyer/cache/CacheManager;->cacheRequest(Lcom/appsflyer/cache/RequestCacheData;Landroid/content/Context;)V

    goto :goto_2

    .line 1197
    .end local v13    # "t":Ljava/io/IOException;
    :catch_1
    move-exception v13

    .line 1198
    .local v13, "t":Ljava/lang/Throwable;
    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
