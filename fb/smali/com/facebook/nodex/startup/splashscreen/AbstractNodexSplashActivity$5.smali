.class Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$5;
.super Ljava/lang/Object;
.source "pitch"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;


# direct methods
.method constructor <init>(Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$5;->b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iput-object p2, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$5;->b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v0, v0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->c:Lcom/facebook/nodex/resources/NodexResources;

    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/resources/NodexResources;->c(Ljava/lang/String;)I

    move-result v0

    .line 352
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$5;->b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v1, v1, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->o:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity$5;->b:Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;

    iget-object v1, v1, Lcom/facebook/nodex/startup/splashscreen/AbstractNodexSplashActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 355
    :cond_0
    return-void
.end method
