.class public Lcom/facebook/rti/push/service/FbnsRegisterResponse;
.super Ljava/lang/Object;
.source "stream"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->a:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->b:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/rti/push/service/FbnsRegisterResponse;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/facebook/rti/push/service/FbnsRegisterResponse;

    invoke-direct {v0}, Lcom/facebook/rti/push/service/FbnsRegisterResponse;-><init>()V

    .line 20
    if-nez p0, :cond_0

    .line 27
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v2, "pkg_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->a:Ljava/lang/String;

    .line 25
    const-string v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->b:Ljava/lang/String;

    .line 26
    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/rti/push/service/FbnsRegisterResponse;->c:Ljava/lang/String;

    goto :goto_0
.end method
