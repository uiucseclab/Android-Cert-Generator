.class Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck$1;
.super Ljava/lang/Object;
.source "onPageFinished %s"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck$1;->a:Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck$1;->a:Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation$AdvanceCheck;->a:Lcom/facebook/video/view/TextureViewImplementation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/video/view/TextureViewImplementation;->a(Z)V

    .line 639
    return-void
.end method
