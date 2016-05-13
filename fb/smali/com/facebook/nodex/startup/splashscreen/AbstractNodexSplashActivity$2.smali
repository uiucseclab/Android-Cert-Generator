.class Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$2;
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
    .line 249
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$2;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$2;->a:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v0, v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    return-void
.end method
