.class Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$3;
.super Ljava/lang/Object;
.source "pitch"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;


# direct methods
.method constructor <init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;J)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$3;->b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iput-wide p2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .prologue
    .line 282
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$3;->b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v0, v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$3;->b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v1, v1, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->n:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$3;->a:J

    const v4, 0x3093ff7b

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->b(Landroid/os/Handler;Ljava/lang/Runnable;JI)Z

    .line 285
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 278
    return-void
.end method
