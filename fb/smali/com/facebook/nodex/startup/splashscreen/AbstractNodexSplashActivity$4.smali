.class Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$4;
.super Ljava/lang/Object;
.source "pitch"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;


# direct methods
.method constructor <init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$4;->b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iput-object p2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$4;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$4;->b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v0, v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$4;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 298
    return-void
.end method
