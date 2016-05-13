.class Lcom/facebook/video/view/TextureViewImplementation$1$1;
.super Ljava/lang/Object;
.source "onPageFinished %s"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/video/view/TextureViewImplementation$1;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/TextureViewImplementation$1;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation$1$1;->a:Lcom/facebook/video/view/TextureViewImplementation$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$1$1;->a:Lcom/facebook/video/view/TextureViewImplementation$1;

    iget-object v0, v0, Lcom/facebook/video/view/TextureViewImplementation$1;->b:Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;

    invoke-interface {v0}, Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;->bK_()V

    .line 194
    return-void
.end method
