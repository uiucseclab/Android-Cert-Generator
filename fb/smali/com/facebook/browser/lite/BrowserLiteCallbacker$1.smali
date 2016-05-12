.class Lcom/facebook/browser/lite/BrowserLiteCallbacker$1;
.super Ljava/lang/Object;
.source "qt  "

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/facebook/browser/lite/BrowserLiteCallbacker;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$1;->a:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$1;->a:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    .line 23
    if-nez p2, :cond_0

    .line 24
    const/4 v2, 0x0

    .line 30
    :goto_0
    move-object v1, v2

    invoke-static {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->a(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;)Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    .line 64
    return-void

    .line 26
    :cond_0
    const-string v2, "com.facebook.browser.lite.ipc.BrowserLiteCallback"

    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 27
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    if-eqz v3, :cond_1

    .line 28
    check-cast v2, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v2, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub$Proxy;

    invoke-direct {v2, p2}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$1;->a:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->a(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;)Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    .line 69
    return-void
.end method
