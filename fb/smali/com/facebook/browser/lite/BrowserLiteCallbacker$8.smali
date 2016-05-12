.class Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;
.super Ljava/lang/Object;
.source "qt  "

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:Lcom/facebook/browser/lite/BrowserLiteCallbacker;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteCallbacker;Ljava/lang/String;JJJJJ)V
    .locals 1

    .prologue
    .line 225
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->g:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    iput-object p2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->b:J

    iput-wide p5, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->c:J

    iput-wide p7, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->d:J

    iput-wide p9, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->e:J

    iput-wide p11, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->g:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 232
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->g:Lcom/facebook/browser/lite/BrowserLiteCallbacker;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteCallbacker;->d:Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;

    iget-object v1, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->b:J

    iget-wide v4, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->c:J

    iget-wide v6, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->d:J

    iget-wide v8, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->e:J

    iget-wide v10, p0, Lcom/facebook/browser/lite/BrowserLiteCallbacker$8;->f:J

    invoke-interface/range {v0 .. v11}, Lcom/facebook/browser/lite/ipc/BrowserLiteCallback;->a(Ljava/lang/String;JJJJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    goto :goto_0
.end method
