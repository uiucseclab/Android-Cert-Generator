.class Lcom/facebook/video/view/TextureViewImplementation$6;
.super Ljava/lang/Object;
.source "onPageFinished %s"

# interfaces
.implements Lcom/facebook/video/api/VideoCore$Implementation$PrepareCallback;


# instance fields
.field final synthetic a:Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;

.field final synthetic b:I

.field final synthetic c:Lcom/facebook/video/view/TextureViewImplementation;


# direct methods
.method constructor <init>(Lcom/facebook/video/view/TextureViewImplementation;Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;I)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/facebook/video/view/TextureViewImplementation$6;->c:Lcom/facebook/video/view/TextureViewImplementation;

    iput-object p2, p0, Lcom/facebook/video/view/TextureViewImplementation$6;->a:Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;

    iput p3, p0, Lcom/facebook/video/view/TextureViewImplementation$6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/video/api/VideoMetadata;)V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$6;->c:Lcom/facebook/video/view/TextureViewImplementation;

    iget v1, p0, Lcom/facebook/video/view/TextureViewImplementation$6;->b:I

    iget-object v2, p0, Lcom/facebook/video/view/TextureViewImplementation$6;->a:Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/video/view/TextureViewImplementation;->a(ILcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;)V

    .line 481
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/facebook/video/view/TextureViewImplementation$6;->a:Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;

    invoke-interface {v0, p1}, Lcom/facebook/video/api/VideoCore$Implementation$FinishedCallback;->a(Ljava/lang/Throwable;)V

    .line 476
    return-void
.end method
