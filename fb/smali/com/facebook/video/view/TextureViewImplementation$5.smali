.class Lcom/facebook/video/view/TextureViewImplementation$5;
.super Ljava/lang/Object;
.source "onPageFinished %s"

# interfaces
.implements Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;


# instance fields
.field final synthetic a:Lcom/facebook/video/api/VideoCore$PlayingCallback;

.field final synthetic b:Lcom/facebook/video/view/TextureViewImplementation;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/TextureViewImplementation;Lcom/facebook/video/api/VideoCore$PlayingCallback;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation$5;->b:Lcom/facebook/video/view/TextureViewImplementation;

    iput-object p2, p0, Lcom/facebook/video/view/TextureViewImplementation$5;->a:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$5;->a:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    invoke-virtual {v0, p1}, Lcom/facebook/video/api/VideoCore$PlayingCallback;->a(Ljava/lang/Throwable;)V

    .line 392
    return-void
.end method

.method public final bK_()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$5;->a:Lcom/facebook/video/api/VideoCore$PlayingCallback;

    invoke-virtual {v0}, Lcom/facebook/video/api/VideoCore$PlayingCallback;->c()V

    .line 397
    return-void
.end method
