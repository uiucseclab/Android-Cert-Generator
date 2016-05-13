.class public Lcom/facebook/rti/config/ConfigProxyClient;
.super Ljava/lang/Object;
.source "system_server_wtf"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/facebook/rti/config/ConfigProxyClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/config/ConfigProxyClient;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/rti/config/ConfigProxyClient;->b:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/rti/config/ConfigProxyClient$Editor;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/rti/config/ConfigProxyClient$Editor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/facebook/rti/config/ConfigProxyClient$Editor;-><init>(Lcom/facebook/rti/config/ConfigProxyClient;Ljava/lang/String;)V

    return-object v0
.end method
