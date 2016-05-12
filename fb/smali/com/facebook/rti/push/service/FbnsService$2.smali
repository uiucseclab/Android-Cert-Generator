.class Lcom/facebook/rti/push/service/FbnsService$2;
.super Ljava/lang/Object;
.source "system_server_anr"

# interfaces
.implements Lcom/facebook/rti/common/util/NonInjectProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/rti/common/util/NonInjectProvider",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/rti/push/service/FbnsService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/push/service/FbnsService;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/facebook/rti/push/service/FbnsService$2;->a:Lcom/facebook/rti/push/service/FbnsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method
