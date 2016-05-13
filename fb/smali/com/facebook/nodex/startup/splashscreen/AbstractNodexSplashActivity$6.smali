.class Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;
.super Ljava/lang/Object;
.source "pitch"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;


# direct methods
.method constructor <init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 564
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v0, v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->k:Ljava/lang/String;

    const-string v1, "Finishing activity."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->finish()V

    .line 570
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$6;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-virtual {v0, v2, v2}, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->overridePendingTransition(II)V

    .line 571
    return-void
.end method
