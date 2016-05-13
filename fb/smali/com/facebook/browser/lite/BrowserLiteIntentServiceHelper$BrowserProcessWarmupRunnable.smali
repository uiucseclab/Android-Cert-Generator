.class public Lcom/facebook/browser/lite/BrowserLiteIntentServiceHelper$BrowserProcessWarmupRunnable;
.super Ljava/lang/Object;
.source "pt_PT"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteIntentServiceHelper$BrowserProcessWarmupRunnable;->a:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteIntentServiceHelper$BrowserProcessWarmupRunnable;->a:Landroid/content/Context;

    .line 11
    const-string v1, "ACTION_WARM_UP"

    invoke-static {v0, v1}, Lcom/facebook/browser/lite/BrowserLiteIntentServiceHelper;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 36
    return-void
.end method
